import antlr4
from modelica2cde.antlr_scripts.modelicaLexer import modelicaLexer
from modelica2cde.antlr_scripts.modelicaParser import modelicaParser
from modelica2cde.antlr_scripts.modelicaJSONVisitor import modelicaJSONVisitor

def create_modelica_JSON(file_path, get_point_lists):
    input_stream = antlr4.FileStream(file_path)
    lexer = modelicaLexer(input_stream)
    tokens = antlr4.CommonTokenStream(lexer)
    parser = modelicaParser(tokens)

    tree = parser.stored_definition()
    parser.buildParseTrees = True

    modelicaJSON = modelicaJSONVisitor(get_point_lists=get_point_lists)
    modelicaJSON.visitStored_definition(tree)

    modelicaJSON.prefix_ids(modelicaJSON.output,"inst",":")

    return modelicaJSON.output