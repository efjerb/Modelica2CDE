# Modelica2CDE
A tool for parsing Modelica models to RDF for simulation, analysis and documentation of building controls.

The tool is heavily inspired by the [modelica-json](https://github.com/lbl-srg/modelica-json) tool, but has been created in Python to fit the workflow presented in the under-review paper "Combining the Brick Schema and the Control Description Language for Automation and Controls in BIM".

The [ANTLR4 Modelica grammar file](https://github.com/antlr/grammars-v4/blob/master/modelica/modelica.g4) was used to create the visitors, lexers and parsers in *antlr_scripts*.

## Installation and usage
The python package can be installed in the python environment with pip: `pip install setup.py`

The main function is the `create_modelica_JSON()` function from the modelica2cde package. An example, which uses command line arguments to translate a Modelica model can be found in the *examples* folder. To translate a model with the path `FILEPATH`, run the following command from the root folder:
`python examples\from_command_line.py -f FILEPATH [-gp]`

By using the optional `-gp` flag, point lists will be generated for all components in the model with a `generatePointlist=true` annotation, as specified in the [Control Description Language (CDL) documentation](http://obc.lbl.gov/specification/cdl.html#point-list). Only point lists from classes in the [Modelica Buildings Library](https://simulationresearch.lbl.gov/modelica/) can be generated, unless other libraries are loaded in the scripts. Point lists may not include all points if a class is an extension of another class and only the relative URI of the extended class is present.

Alternatively, the script in `run_example.py` can be used to parse the models in the `examples` folder.

To support generation of point list for components in the model, OpenModelica must be installed, and the [Modelica Buildings Library](https://simulationresearch.lbl.gov/modelica/) must be located in the path used by OpenModelica (you should be able to set the `MODELICAPATH` to include your library folder). Remember to define an `OPENMODELICAHOME` environment variable pointing to the OpenModelica installation folder. Any libraries must be imported in the `modelicaJSONVisitor` initializer function.

## Examples folder
The `examples/models` folder contains two models, `VEN09_02` and `VEN09_02_expanded`, that use the same system, with and without expansion of the `zoneCtrl3` block. The containing package, `ModelPackage`, also includes models for the AHU and Zones. The `example/libraries` folder includes the `CtrlLib` library. To run the examples, this library must be copied to the Modelica path, as described above.

## Support and limitations
Currently, only files with single models are supported, and many other limitations exist, since this is supposed to be a simpler and more modifiable version of the modelica-json tool. Hopefully, the experienced user can mitigate these limitations on their own.