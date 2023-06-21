import os
import json
import argparse
import modelica2cde as m2c

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

    file_path = "examples\\models\\BS23_Example_Expanded.mo"
    get_point_lists = True
    
    res = m2c.create_modelica_JSON(file_path = file_path, get_point_lists = get_point_lists)

    dir = os.path.dirname(file_path)

    model_name = os.path.basename(file_path).split('.')[0]

    context_file = open("examples/rdf_context.json","r")
    context = json.load(context_file)
    context_file.close()

    res = {**context, **res}

    fp = open(os.path.join(dir,"results",f"{model_name}.json"), "w")
    json.dump(res, fp,indent=4)
    fp.close()