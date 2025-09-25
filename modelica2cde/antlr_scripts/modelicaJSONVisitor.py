import os
import antlr4
from modelica2cde.antlr_scripts.modelicaIOvisitor import modelicaIOvisitor
from modelica2cde.antlr_scripts.modelicaLexer import modelicaLexer
from modelica2cde.antlr_scripts.modelicaVisitor import modelicaVisitor
from modelica2cde.antlr_scripts.modelicaParser import modelicaParser
from OMPython import OMCSessionZMQ

class modelicaJSONVisitor(modelicaVisitor):
    def __init__(self, include_connections = False, get_point_lists = True) -> None:
        self.include_connections = include_connections
        self.get_point_lists = get_point_lists
        if self.get_point_lists:
            self.omc = OMCSessionZMQ()
            self.omc.loadModel("Buildings")
            # self.omc.sendExpression(f'setModelicaPath("{os.getenv("OPENMODELICALIBRARY")}")')
            self.omc.loadModel("RambollDefaults")
            self.omc.loadModel("ToolchainLib")
            self.omc.loadModel("CtrllSeqLib")
        self.output = {}
        super().__init__()

    def expand_model(self, component):
        file_path = self.get_model_path(component["@type"])
        if file_path == None:
            return []
        input_stream = antlr4.FileStream(file_path)
        
        lexer = modelicaLexer(input_stream)
        tokens = antlr4.CommonTokenStream(lexer)
        parser = modelicaParser(tokens)
        
        tree = parser.stored_definition()
        parser.buildParseTrees = True

        visitor = modelicaJSONVisitor(include_connections = False, get_point_lists = self.get_point_lists)
        visitor.visitStored_definition(tree)
        res = visitor.output["Elements"]

        res = self.prefix_ids(res, component["@id"], ".")
        
        return res

    def prefix_ids(self, elements, prefix: str, separator = ""):
        """Recursively adds the component's name to the ids of the dicts in elements"""
        if prefix == None:
            raise ValueError("prefix must be specified")
        if isinstance(elements, list):
            for i in elements:
                self.prefix_ids(i,prefix, separator)
        elif isinstance(elements, dict):
            if "@id" in elements.keys() and prefix + separator not in elements["@id"]: # TODO: This is a hotfix and should be handled when creating @id from ModelicaName
                elements["@id"] = prefix + separator + elements["@id"]
            if "connectedTo" in elements.keys():
                for i, con in enumerate(elements["connectedTo"]):
                    if prefix + separator not in con:
                        elements["connectedTo"][i] = prefix + separator + con
            for k in elements.keys():
                self.prefix_ids(elements[k],prefix, separator)
        else:
            pass
        return elements

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
        res = IOs.res

        for ext_model_name in IOs.extends:
            res.extend(self.get_model_IO(ext_model_name))

        return res
    
    def get_model_path(self, model_name) -> str:
        package_path = self.omc.sendExpression(f"Modelica.Utilities.Files.loadResource(\"modelica://{model_name}\")")
        if package_path != "" and package_path is not None:
            model_path = package_path + "\\" + model_name.split('.')[-1] + ".mo"
            return model_path
        else:
            return None

    def create_input_outputs(self, elements):
        if isinstance(elements, list):
            for i in elements:
                self.create_input_outputs(i)
    
        elif isinstance(elements, dict):
            if "points" in elements.keys():
                inputs = [point for point in elements["points"] if any(("input" in x.lower()) and ("s231p" in x.lower()) for x in ([point["@type"]] if isinstance(point["@type"], str) else point["@type"]))]
                outputs = [point for point in elements["points"] if any(("output" in x.lower()) and ("s231p" in x.lower()) for x in ([point["@type"]] if isinstance(point["@type"], str) else point["@type"]))]
                parameters = [point for point in elements["points"] if any("s231p:parameter" in x.lower() for x in ([point["@type"]] if isinstance(point["@type"], str) else point["@type"]))]
                constant = [point for point in elements["points"] if any("s231p:constant" in x.lower() for x in ([point["@type"]] if isinstance(point["@type"], str) else point["@type"]))]
                if inputs != []:
                    if "S231P:hasInput" not in elements.keys():
                        elements["S231P:hasInput"] = inputs
                    else:
                        if isinstance(elements["S231P:hasInput"], list):
                            elements["S231P:hasInput"].extend(inputs)
                        else:
                            elements["S231P:hasInput"] = [elements["S231P:hasInput"]] + inputs
                if outputs != []:
                    if "S231P:hasOutput" not in elements.keys():
                        elements["S231P:hasOutput"] = outputs
                    else:
                        if isinstance(elements["S231P:hasOutput"], list):
                            elements["S231P:hasOutput"].extend(outputs)
                        else:
                            elements["S231P:hasOutput"] = [elements["S231P:hasOutput"]] + outputs
                if parameters != []:
                    if "S231P:hasParameter" not in elements.keys():
                        elements["S231P:hasParameter"] = parameters
                    else:
                        if isinstance(elements["S231P:hasParameter"], list):
                            elements["S231P:hasParameter"].extend(parameters)
                        else:
                            elements["S231P:hasParameter"] = [elements["S231P:hasParameter"]] + parameters
                if constant != []:
                    if "S231P:hasConstant" not in elements.keys():
                        elements["S231P:hasConstant"] = constant
                    else:
                        if isinstance(elements["S231P:hasConstant"], list):
                            elements["S231P:hasConstant"].extend(constant)
                        else:
                            elements["S231P:hasConstant"] = [elements["S231P:hasConstant"]] + constant
            for k in elements.keys():
                self.create_input_outputs(elements[k])
        else:
            pass
        return elements

    def visitClass_definition(self, ctx: modelicaParser.Class_definitionContext):
        self.output["@type"] = ctx.class_prefixes().getText()
        return super().visitClass_definition(ctx)

    def visitLong_class_specifier(self, ctx: modelicaParser.Long_class_specifierContext):
        self.output["@id"] = ctx.IDENT()[0].getText()
        self.output["description"] = self.convert_output(ctx.string_comment().getText())
        return super().visitLong_class_specifier(ctx)
    
    def visitElement_list(self, ctx: modelicaParser.Element_listContext):
        if "Elements" not in self.output.keys():
            self.output["Elements"] = []
        return super().visitElement_list(ctx)
    
    def visitType_specifier(self, ctx: modelicaParser.Type_specifierContext):
        res = ctx.getText()
        return res

    def replace_type(self, type):
        names = {
            "Buildings.Controls.OBC.CDL.": "S231P:CDL.",
            "RambollDefaults.": "ramboll:",
            "ToolchainLib.": "tl:",
            "CtrllSeqLib.": "ctrlLib:"
        }
        for name in names.keys():
            if name in type:
                type = type.replace(name,names[name])
        return type

    def visitComponent_clause(self, ctx: modelicaParser.Component_clauseContext):
        variability = self.visitType_prefix(ctx.type_prefix())
        component = self.visitComponent_list(ctx.component_list())[0]
        component["@type"] = self.visitType_specifier(ctx.type_specifier())
        if component.get("annotation",{}).get("_CDE",{}).get("iri") != None:
            component["@id"] = str(component.get("annotation",{}).get("_CDE",{}).get("iri")["value"])
        else:
            component["@id"] = component["modelicaName"]

        if variability != "":
            component["variability"] = variability
        
        if self.get_point_lists and component.get("annotation",{}).get("__cdl",{}).get("generatePointlist",{}).get("value") == "true":
            points = self.get_model_IO(component["@type"])
            if len(points) != 0:
                for point in points:
                    point["@id"] = component["@id"] + "." + point["@id"]
                    if type(point["@type"]) == str: point["@type"] = [point["@type"]]
                
                component["points"] = points
        
        
        # Expand component model, if specified in annotations:
        if component.get("annotation",{}).get("_CDE",{}).get("expand",{}).get("value") == "true":
            if "Elements" not in component.keys():
                component["Elements"] = []
            component["Elements"].append(self.expand_model(component))

        component["@type"] = self.replace_type(component["@type"])
        component.pop("annotation",component)
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
        # Get annotation and remove Placement key, if it exists
        res = self.visitClass_modification(ctx.class_modification())
        if res.get("Placement") != None:
            res.pop("Placement")
        return res

    def visitDeclaration(self, ctx: modelicaParser.DeclarationContext):
        name = ctx.IDENT().getText()
        if ctx.modification() != None:
            modification = self.visitModification(ctx.modification())
            res = {"modelicaName": name,
                    **modification}
        else:
            res = {"modelicaName": name}
        return res
    
    def visitModification(self, ctx: modelicaParser.ModificationContext):
        res = {}
        if ctx.expression() != None:
            res["value"] = self.convert_output(self.visitExpression(ctx))
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
        if ctx.modification() != None:
            mod = self.visitModification(ctx.modification())
        else:
            mod = {}
        return {name:mod}

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
        if self.include_connections:
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
        
        if self.include_connections:
            self.output[key].append(equation)

    def visitConnect_clause(self, ctx: modelicaParser.Connect_clauseContext):
        connection = {}
        connection["from"] = self.visitComponent_reference(ctx.component_reference()[0])
        connection["to"]  = self.visitComponent_reference(ctx.component_reference()[1])
        
        from_comp = [x for x in self.output["Elements"] if x["modelicaName"] == connection["from"]["modelicaName"]][0]
        to_comp = [x for x in self.output["Elements"] if x["modelicaName"] == connection["to"]["modelicaName"]][0]
        
        if "port" not in connection["from"].keys():
            from_id = from_comp["@id"]
        else:
            from_id = ".".join([from_comp["@id"],connection["from"]["port"]])

        if "port" not in connection["to"].keys():
            to_id = to_comp["@id"]
        else:
            to_id = ".".join([to_comp["@id"],connection["to"]["port"]])
                
        if "points" not in from_comp.keys():
            from_comp["points"] = []
        
        if "points" not in to_comp.keys():
            to_comp["points"] = []
        
        to_point = [point for point in to_comp["points"] if point["@id"] == to_id]
        from_point = [point for point in from_comp["points"] if point["@id"] == from_id]
        
        common_types = []
        to_type = ""
        from_type = ""

        if from_point != []:
            for type in from_point[0].get("@type",{}):
                if "S231P:" not in type:
                    common_types.append(type)
                else:
                    from_type = type


        if to_point != []:
            for type in to_point[0].get("@type",{}):
                if "S231P:" not in type:
                    common_types.append(type)
                else:
                    to_type = type
        
        if to_type == "" and from_type != "":
            if "Input" in from_type:
                to_type = from_type.replace("Input", "Output")
            elif "Output" in from_type:
                to_type = from_type.replace("Output", "Input")
        
        elif to_type != "" and from_type == "":
            if "Input" in to_type:
                from_type = to_type.replace("Input", "Output")
            elif "Output" in to_type:
                from_type = to_type.replace("Output", "Input")

        if from_point != []:
            if "connectedTo" not in from_point[0].keys():
                from_point[0]["connectedTo"] = []
            from_point[0]["connectedTo"].append(to_id)
            from_point[0]["@type"].extend(common_types+[from_type])
        else:
            from_comp["points"].append({"@id":from_id,"connectedTo":[to_id],"@type":common_types+[from_type]})
        
        if to_point != []:
            if "connectedTo" not in to_point[0].keys():
                to_point[0]["connectedTo"] = []
            to_point[0]["connectedTo"].append(from_id)
            to_point[0]["@type"].extend(common_types+[to_type])
        else:
            to_comp["points"].append({"@id":to_id,"connectedTo":[from_id],"@type":common_types+[to_type]})
            
        return connection


    def visitComponent_reference(self, ctx: modelicaParser.Component_referenceContext):
        component_ref = {}
        from_IDENTs = [x.getText() for x in ctx.IDENT()]
        if len(from_IDENTs) > 1:
            component_ref["modelicaName"]=".".join(from_IDENTs[0:-1])
            component_ref["port"]=from_IDENTs[-1]
        else:
            component_ref["modelicaName"]=from_IDENTs[0]
        
        return component_ref
    
    def visitPrimary(self, ctx:modelicaParser.PrimaryContext):
        if len(ctx.children) > 1 and type(ctx.children[1]) == modelicaParser.Function_argumentsContext:
            return self.visitFunction_arguments(ctx.children[1])
        elif len(ctx.children) == 1 and type(ctx.children[0]) == antlr4.tree.Tree.TerminalNodeImpl:
            return self.visitTerminal(ctx.children[0])
        else:
            return ctx.getText()
        
    def visitFunction_arguments(self, ctx:modelicaParser.Function_argumentsContext):
        res = []
        for child in ctx.children:
            if type(child) == modelicaParser.Function_argumentsContext:
                res.extend(self.visitFunction_arguments(child))
            elif type(child) == modelicaParser.Function_argumentContext:
                res.append(self.visitFunction_argument(child))
        return res

    def visitArithmetic_expression(self, ctx:modelicaParser.Arithmetic_expressionContext):
        if len(ctx.add_op()) == 0:
            return super().visitArithmetic_expression(ctx)
        else:
            operator = self.visitAdd_op(ctx.add_op()[0])
            value = super().visitArithmetic_expression(ctx.term()[0])

            return self.convert_output(str(operator) + str(value))

    def visitTerminal(self, ctx:antlr4.tree.Tree.TerminalNodeImpl):
        return self.convert_output(ctx.getText())

    def convert_output(self,text):
        if type(text) != str:
            return text
        try:
            text_float = float(text)
            text_int = int(text_float)

            if text_float == text_int:
                return text_int
            else:
                return text_float
        except:
            try:
                if (text[0] == "'" or text[0] == '"') and (text[-1] == "'" or text[-1] == '"'):
                    return text[1:-1]
            except:
                return text
        return text