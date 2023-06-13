import setuptools

setuptools.setup(
    name="modelica2cde",
    version="0.0.1",
    author="Esben Fjerbæk",
    description="This aims to move Modelica files, containing control sequences and components to a CDE.",
    packages=["modelica2cde","modelica2cde.antlr_scripts"],
    install_requires = [
        'antlr4-python3-runtime>=4.11.1',
        'antlr4-tools>=0.2',
        'future>=0.18.3',
        'install-jdk>=0.3.0',
        'OMPython>=3.4.0',
        'psutil>=5.9.4',
        'pyparsing>=3.0.9',
        'pyzmq>=25.0.0'
    ]
)