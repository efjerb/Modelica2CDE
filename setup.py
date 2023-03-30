import setuptools

setuptools.setup(
    name="modelica2cde",
    version="0.0.1",
    author="Esben Fjerbæk",
    description="This aims to move Modelica files, containing control sequences and components to a CDE.",
    packages=["modelica2cde","modelica2cde.antlr_scripts"]
)