from antlr4 import *
from antlr_scripts.modelicaLexer import modelicaLexer
from antlr_scripts.modelicaVisitor import modelicaVisitor
from antlr_scripts.modelicaParser import modelicaParser

class modelicaIOvisitor(modelicaVisitor):
    def __init__(self, get_comments = True) -> None:
        self.res = []
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
                self.res.append({**new_comp,"type":type})
            
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
        return res
    
    def visitComment(self, ctx: modelicaParser.CommentContext):
        res = {}
        if ctx.string_comment().getText() != '':
            res["description"] = self.convert_output(ctx.string_comment().getText())
        return res

    def visitAnnotation(self, ctx: modelicaParser.AnnotationContext):
        return ctx.getText()

    def visitDeclaration(self, ctx: modelicaParser.DeclarationContext):
        name = ctx.IDENT().getText()
        if ctx.modification() != None:
            modification = self.visitModification(ctx.modification())
            res = {"name": name,
                    **modification}
        else:
            res = {"name": name}
        return res
    
    def visitModification(self, ctx: modelicaParser.ModificationContext):
        res = {}
        if ctx.expression() != None:
            res["value"] = self.convert_output(ctx.expression().getText())
        if ctx.class_modification() != None:
            mods = self.visitClass_modification(ctx.class_modification())
            res["modifications"] = mods
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