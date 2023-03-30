import os
import json
import argparse
from modelica2cde import create_modelica_JSON

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

    context_file = open("examples/rdf_context.json","r")
    context = json.load(context_file)
    context_file.close()

    res = {**context, **res}

    fp = open(os.path.join(dir,"results",f"{model_name}.json"), "w")
    json.dump(res, fp,indent=4)
    fp.close()