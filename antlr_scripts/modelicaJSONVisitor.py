import antlr4
from antlr_scripts.modelicaIOvisitor import modelicaIOvisitor
from antlr_scripts.modelicaLexer import modelicaLexer
from antlr_scripts.modelicaVisitor import modelicaVisitor
from antlr_scripts.modelicaParser import modelicaParser
from OMPython import OMCSessionZMQ

class modelicaJSONVisitor(modelicaVisitor):
    def __init__(self, get_point_lists = True) -> None:
        self.get_point_lists = get_point_lists
        if self.get_point_lists:
            self.omc = OMCSessionZMQ()
            self.omc.loadModel("Buildings")
            self.omc.sendExpression('setModelicaPath("C:\\Users\\ESVF\\OneDrive - Ramboll\\Modelica\\Libraries")')
            self.omc.loadModel("RambollDefaults")
            self.omc.loadModel("ToolchainLib")
        self.output = {}
        super().__init__()

    def get_model_IO(self, model_name, get_comments = True) -> dict:

        file_path = self.get_model_path(model_name)
        if file_path == None:
            return []
        input_stream = antlr4.FileStream(file_path)
        
        lexer = modelicaLexer(input_stream)
        tokens = antlr4.CommonTokenStream(lexer)
        parser = modelicaParser(tokens)
        
        tree = parser.stored_definition()
        parser.buildParseTrees = True
        
        IOs = modelicaIOvisitor(get_comments = get_comments)
        IOs.visitStored_definition(tree)

        return IOs.res
    
    def get_model_path(self, model_name) -> str:
        package_path = self.omc.sendExpression(f"Modelica.Utilities.Files.loadResource(\"modelica://{model_name}\")")
        if package_path != "":
            model_path = package_path + "\\" + model_name.split('.')[-1] + ".mo"
            return model_path
        else:
            return None

    def visitClass_definition(self, ctx: modelicaParser.Class_definitionContext):
        self.output["type"] = ctx.class_prefixes().getText()
        return super().visitClass_definition(ctx)

    def visitLong_class_specifier(self, ctx: modelicaParser.Long_class_specifierContext):
        self.output["name"] = ctx.IDENT()[0].getText()
        self.output["description"] = self.convert_output(ctx.string_comment().getText())
        return super().visitLong_class_specifier(ctx)
    
    def visitElement_list(self, ctx: modelicaParser.Element_listContext):
        if "Elements" not in self.output.keys():
            self.output["Elements"] = []
        return super().visitElement_list(ctx)
    
    def visitComponent_clause(self, ctx: modelicaParser.Component_clauseContext):
        variability = self.visitType_prefix(ctx.type_prefix())
        component = self.visitComponent_list(ctx.component_list())[0]
        component["type"] = ctx.type_specifier().getText()
        if variability != "":
            component["variability"] = variability
        
        if self.get_point_lists and "annotation" in component.keys() and "__cdl" in component["annotation"].keys() and "generatePointlist" in component["annotation"]["__cdl"] and component["annotation"]["__cdl"]["generatePointlist"]["value"] == "true":
            points = self.get_model_IO(component["type"])
            if len(points) != 0:
                component["points"] = points
        
        self.output["Elements"].append(component)
            
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
        if ctx.comment() != None and ctx.comment().getText() != '':
            res = {**res,**self.visitComment(ctx.comment())}
        return res
    
    def visitComment(self, ctx: modelicaParser.CommentContext):
        res = {}
        if ctx.string_comment().getText() != '':
            res["description"] = self.convert_output(ctx.string_comment().getText())
        if ctx.annotation() != None:
            res["annotation"] = self.visitAnnotation(ctx.annotation())
        return res

    def visitAnnotation(self, ctx: modelicaParser.AnnotationContext):
        return self.visitClass_modification(ctx.class_modification())

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
    
    def visitShort_class_specifier(self, ctx:modelicaParser.Short_class_specifierContext):
        name:str = ctx.children[0].getText()
        if "medium" in name.lower():    
            mod = ctx.name().getText()
            res = {name:mod}
        else:
            res = None
        return res

    def visitEquation_section(self, ctx: modelicaParser.Equation_sectionContext):
        self.output["equations"] = []
        self.output["connections"] = []
        return super().visitEquation_section(ctx)

    def visitEquation(self, ctx: modelicaParser.EquationContext):
        if ctx.expression() != None:
            equation = {
                "left_hand": ctx.simple_expression().getText(),
                "right_hand": ctx.expression().getText()
            }
            key = "equations"
        
        elif ctx.connect_clause() != None:
            equation = self.visitConnect_clause(ctx.connect_clause())
            key = "connections"
        
        comment = self.visitComment(ctx.comment())
        
        if comment != {}:
            equation["description"] = comment
        
        self.output[key].append(equation)

    def visitConnect_clause(self, ctx: modelicaParser.Connect_clauseContext):
        connection = {}
        connection["from"] = self.visitComponent_reference(ctx.component_reference()[0])
        connection["to"] = self.visitComponent_reference(ctx.component_reference()[1])
        return connection


    def visitComponent_reference(self, ctx: modelicaParser.Component_referenceContext):
        component_ref = {}
        from_IDENTs = [x.getText() for x in ctx.IDENT()]
        if len(from_IDENTs) > 1:
            component_ref["name"]=".".join(from_IDENTs[0:-1])
            component_ref["port"]=from_IDENTs[-1]
        else:
            component_ref["name"]=from_IDENTs[0]
        
        return component_ref

    def convert_output(self,text):
        try:
            if text != "":
                text = float(text)
        except:
            if (text[0] == "'" or text[0] == '"') and (text[-1] == "'" or text[-1] == '"'):
                text = text[1:-1]
        return text