import os
import json
import modelica2cde as m2c

if __name__ == '__main__':

    file_path = "examples\\models\\ModelPackage\\VEN09_02_expanded.mo"
    get_point_lists = True
    
    res = m2c.create_modelica_JSON(file_path = file_path, get_point_lists = get_point_lists)

    dir = os.path.dirname(file_path)

    model_name = os.path.basename(file_path).split('.')[0]
    
    fp = open(os.path.join(dir,"results",f"{model_name}.jsonld"), "w")
    json.dump(res, fp,indent=4)
    fp.close()