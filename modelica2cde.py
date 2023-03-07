import os
import json
import antlr4
import argparse
from antlr_scripts.modelicaLexer import modelicaLexer
from antlr_scripts.modelicaParser import modelicaParser
from antlr_scripts.modelicaJSONVisitor import modelicaJSONVisitor
  
def create_modelica_JSON(file_path, get_point_lists):
    input_stream = antlr4.FileStream(file_path)
    lexer = modelicaLexer(input_stream)
    tokens = antlr4.CommonTokenStream(lexer)
    parser = modelicaParser(tokens)

    tree = parser.stored_definition()
    parser.buildParseTrees = True

    modelicaJSON = modelicaJSONVisitor(get_point_lists=get_point_lists)
    modelicaJSON.visitStored_definition(tree)

    return modelicaJSON.output

def parse_args():
    parser = argparse.ArgumentParser(description="Creates a JSON file of the given Modelica file.")
    parser.add_argument(
        "-f", "--file", help="Path to the Modelica file", required=True
    )
    parser.add_argument(
        "-gp", "--getpoints", help="Generate pointlists?", action="store_true"
    )
    args = vars(parser.parse_args())
    return args

if __name__ == '__main__':
    args = parse_args()
    res = create_modelica_JSON(file_path = args["file"], get_point_lists = args["getpoints"])

    dir = os.path.dirname(args["file"])

    model_name = os.path.basename(args["file"]).split('.')[0]

    fp = open(os.path.join(dir,"results",f"{model_name}.json"), "w")
    json.dump(res, fp,indent=4)
    fp.close()