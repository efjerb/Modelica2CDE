# Modelica2CDE
A tool for parsing Modelica models to CDEs for simulation, analysis and documentation of building controls

The tool is heavily inspired by the [modelica-json](https://github.com/lbl-srg/modelica-json) tool, but has been created in Python to increase usability to myself and other amateur coders.

The [ANTLR4 Modelica grammar file](https://github.com/antlr/grammars-v4/blob/master/modelica/modelica.g4) was used to create the visitors, lexers and parsers in *antlr_scripts*.

## Usage
The required libraries can be installed from the `requirements.txt` file (preferably in a separate environment):
`pip install -r requirements.txt`

To translate a model with the path `FILEPATH`, run the following command from the root folder:
`python modelica2cde.py -f FILEPATH [-gp]`

By using the optional `-gp` flag, point lists will be generated for all components in the model with a `generatePointlist=true` annotation, as specified in the [Control Description Language (CDL) documentation](http://obc.lbl.gov/specification/cdl.html#point-list). Only point lists from classes in the [Modelica Buildings Library](https://simulationresearch.lbl.gov/modelica/) can be generated.

To support generation of point list for components in the model, OpenModelica must be installed, and the [Modelica Buildings Library](https://simulationresearch.lbl.gov/modelica/) must be located in the path used by OpenModelica (usually, the Buildings library is installed along with OpenModelica).

## Support and limitations
Currently, only files with single models are supported, and many other limitations exist, since this is supposed to be a simpler and more modifiable version of the modelica-json tool. Hopefully, the experienced user can mitigate these limitations on their own.

This version has only accomplished to generate a JSON file - in the future, it is expected that the program can output RDF-based data, aligned with [BRICK](https://brickschema.org/) and CDL.
