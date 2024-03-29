from antlr4 import *
from modelica2cde.antlr_scripts.modelicaLexer import modelicaLexer
from modelica2cde.antlr_scripts.modelicaVisitor import modelicaVisitor
from modelica2cde.antlr_scripts.modelicaParser import modelicaParser

class modelicaIOvisitor(modelicaVisitor):
    def __init__(self, get_comments = True) -> None:
        self.res = []
        self.extends = []
        self.get_comments = get_comments
        super().__init__()
    
    def visitComponent_clause(self, ctx: modelicaParser.Component_clauseContext):
        input_names = ["BooleanInput", "RealInput", "IntegerInput"]
        output_names = ["BooleanOutput", "RealOutput", "IntegerOutput"]
        type = ctx.type_specifier().getText().split(".")[-1]
        components = self.visitComponent_list(ctx.component_list())
        for comp in components:
            if type in input_names or type in output_names:
                new_comp = comp
                if "@type" not in new_comp.keys():
                    new_comp["@type"] = []
                new_comp["@type"].append("cdl:" + type)
                self.res.append(new_comp)
    
    def visitExtends_clause(self, ctx: modelicaParser.Extends_clauseContext):
        name = ctx.name().getText()
        if name.split('.')[0] != "Modelica":
            self.extends.append(ctx.name().getText())
        
        return super().visitExtends_clause(ctx)
    
    def visitType_prefix(self, ctx: modelicaParser.Type_prefixContext):
        res = ctx.getText()
        return res
        
    def visitComponent_list(self, ctx: modelicaParser.Component_listContext):
        res = []
        for dec in ctx.component_declaration():
            res.append(self.visitComponent_declaration(dec))
        return res

    def visitComponent_declaration(self, ctx: modelicaParser.Component_declarationContext):
        res = self.visitDeclaration(ctx.declaration())
        if self.get_comments and ctx.comment() != None and ctx.comment().getText() != '':
            res = {**res,**self.visitComment(ctx.comment())}
            if res.get("annotation",{}).get("__semantic",{}).get("rdfType") != None:
                res["@type"] = [res["annotation"]["__semantic"]["rdfType"]["value"]]
            res.pop("annotation",res)
        return res
    
    def visitComment(self, ctx: modelicaParser.CommentContext):
        res = {}
        if ctx.string_comment().getText() != '':
            res["description"] = self.convert_output(ctx.string_comment().getText())
        if ctx.annotation() != None:
            res["annotation"] = self.visitAnnotation(ctx.annotation())
        return res

    def visitAnnotation(self, ctx: modelicaParser.AnnotationContext):
        # Get annotation and remove Placement key, if it exists
        res = self.visitClass_modification(ctx.class_modification())
        if res.get("Placement") != None:
            res.pop("Placement")
        return res

    def visitDeclaration(self, ctx: modelicaParser.DeclarationContext):
        name = ctx.IDENT().getText()
        if ctx.modification() != None:
            modification = self.visitModification(ctx.modification())
            res = {"@id": name,
                    **modification}
        else:
            res = {"@id": name}
        return res
    
    def visitModification(self, ctx: modelicaParser.ModificationContext):
        res = {}
        if ctx.expression() != None:
            res["value"] = self.convert_output(ctx.expression().getText())
        if ctx.class_modification() != None:
            mods = self.visitClass_modification(ctx.class_modification())
            res = {**res, **mods}
        return res
    
    def visitClass_modification(self, ctx: modelicaParser.Class_modificationContext):
        return self.visitArgument_list(ctx.argument_list())
        
    def visitArgument_list(self, ctx: modelicaParser.Argument_listContext):
        res = {}
        for arg in ctx.argument():
            arg_res = self.visitArgument(arg)
            if arg_res != None:
                res = {**res,**arg_res}
        return res

    def visitElement_modification(self, ctx: modelicaParser.Element_modificationContext):
        name = ctx.name().getText()
        mod = self.visitModification(ctx.modification())
        res = {name:mod}
        return res

    def visitElement_replaceable(self, ctx: modelicaParser.Element_replaceableContext):
        return super().visitElement_replaceable(ctx)
    
    def convert_output(self,text):
        try:
            if text != "":
                text = float(text)
        except:
            if (text[0] == "'" or text[0] == '"') and (text[-1] == "'" or text[-1] == '"'):
                text = text[1:-1]
        return text