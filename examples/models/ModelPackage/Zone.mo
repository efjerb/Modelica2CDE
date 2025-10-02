within ModelPackage;

model Zone
  replaceable package MediumA = Buildings.Media.Air(T_default = 273.15 + 20, extraPropertiesNames = {"CO2"}) annotation(
    __Dymola_choicesAllMatching = true);
  Buildings.ThermalZones.Detailed.MixedAir room(redeclare package Medium = MediumA, AFlo = 4.1*5.2, datConExt(layers = {matLayExt, matLayExt, matLayExt}, A = {4*5.2, 4*4.1, 4*5.2}, til = {Buildings.Types.Tilt.Wall, Buildings.Types.Tilt.Wall, Buildings.Types.Tilt.Wall}, azi = {Buildings.Types.Azimuth.E, Buildings.Types.Azimuth.N, Buildings.Types.Azimuth.W}), datConExtWin(layers = {matLayExt}, A = {4*4.1}, glaSys = {glaSys}, hWin = {1.8}, wWin = {1.2}, fFra = {0.1}, til = {Buildings.Types.Tilt.Wall}, azi = {Buildings.Types.Azimuth.S}), datConPar(layers = {matLayExt}, A = {4.1*5.2}, til = {Buildings.Types.Tilt.Floor}, azi = {Buildings.Types.Azimuth.N}), hRoo = 4, nConBou = 0, nConExt = 3, nConExtWin = 1, nConPar = 1, nSurBou = 0, use_C_flow = true, nPorts = 3) annotation(
    Placement(transformation(extent = {{20, 20}, {60, 60}})));
  Buildings.HeatTransfer.Data.OpaqueConstructions.Insulation100Concrete200 matLayExt annotation(
    Placement(transformation(extent = {{-100, 0}, {-80, 20}})));
  Buildings.HeatTransfer.Data.GlazingSystems.DoubleClearAir13Clear glaSys annotation(
    Placement(transformation(extent = {{-102, 40}, {-82, 60}})));
  parameter Modelica.Units.SI.MassFlowRate m_flow_air = room.V*1.2/3600;
  Buildings.BoundaryConditions.WeatherData.Bus weaBus annotation(
    Placement(transformation(extent = {{60, 60}, {80, 80}}), iconTransformation(extent = {{160, 160}, {180, 180}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heaPorRad "Radiative heat port of room" annotation(
    Placement(transformation(extent = {{10, -50}, {30, -30}}), iconTransformation(extent = {{60, -160}, {80, -140}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heaPorAir "Heat port for connection to room air" annotation(
    Placement(transformation(extent = {{50, -50}, {70, -30}}), iconTransformation(extent = {{100, -160}, {120, -140}})));
  Modelica.Blocks.Interfaces.RealOutput airTemp annotation(
    Placement(transformation(extent = {{100, 30}, {120, 50}}), iconTransformation(extent = {{10, -10}, {-10, 10}}, rotation = 180, origin = {170, 130})));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor senTemp annotation(
    Placement(transformation(extent = {{70, 30}, {90, 50}})));
  Modelica.Blocks.Sources.Pulse nPer(width = 100*10/24, amplitude = nPersons - 0.5, offset = 0.5, startTime(displayUnit = "h") = 28800, period(displayUnit = "h") = 86400) "Number of persons" annotation(
    Placement(transformation(extent = {{-182, 106}, {-162, 126}})));
  Modelica.Blocks.Math.MatrixGain gai(K = 120/room.AFlo*[0.4; 0.4; 0.2]) "Matrix gain to split up heat gain in radiant, convective and latent gain" annotation(
    Placement(transformation(extent = {{-40, 100}, {-20, 120}})));
  Modelica.Blocks.Math.Gain gaiCO2(k = 8.18E-6) "CO2 emission per person" annotation(
    Placement(transformation(extent = {{-40, 40}, {-20, 60}})));
  Buildings.Fluid.Sensors.PPM senCO2(redeclare package Medium = MediumA, MM = Modelica.Media.IdealGases.Common.SingleGasesData.CO2.MM) "CO2 sensor that measures concentration in the room" annotation(
    Placement(transformation(extent = {{66, 0}, {86, 20}})));
  Modelica.Blocks.Interfaces.RealOutput co2Level annotation(
    Placement(transformation(extent = {{100, 0}, {120, 20}}), iconTransformation(extent = {{10, -10}, {-10, 10}}, rotation = 180, origin = {170, 90})));
  Modelica.Fluid.Interfaces.FluidPort_a airPorIn(redeclare final package Medium = MediumA) "Air from AHU to room" annotation(
    Placement(transformation(rotation = 0, extent = {{-66, -50}, {-46, -30}}), iconTransformation(extent = {{-160, 96}, {-140, 116}})));
  Modelica.Fluid.Interfaces.FluidPort_b airPorOut(redeclare final package Medium = MediumA) "Air from outside to AHU" annotation(
    Placement(transformation(rotation = 0, extent = {{-26, -50}, {-6, -30}}), iconTransformation(extent = {{-160, 60}, {-140, 80}})));
  parameter Real nPersons = 1;
  Modelica.Blocks.Sources.Pulse workSchedule(amplitude = 0.5, width = 100*24/24, offset = 0.5, startTime(displayUnit = "h") = 43200, period(displayUnit = "d") = 86400) "On/off switch for people load" annotation(
    Placement(transformation(extent = {{-180, 70}, {-160, 90}})));
  Modelica.Blocks.Math.Product product1 annotation(
    Placement(transformation(extent = {{-120, 100}, {-100, 120}})));
equation
  connect(room.weaBus, weaBus) annotation(
    Line(points = {{57.9, 57.9}, {70, 57.9}, {70, 70}}, color = {255, 204, 51}, thickness = 0.5),
    Text(string = "%second", index = 1, extent = {{6, 3}, {6, 3}}, horizontalAlignment = TextAlignment.Left));
  connect(room.heaPorRad, heaPorRad) annotation(
    Line(points = {{39, 36.2}, {36, 36.2}, {36, 0}, {20, 0}, {20, -40}}, color = {191, 0, 0}));
  connect(room.heaPorAir, heaPorAir) annotation(
    Line(points = {{39, 40}, {44, 40}, {44, 0}, {60, 0}, {60, -40}}, color = {191, 0, 0}));
  connect(room.heaPorAir, senTemp.port) annotation(
    Line(points = {{39, 40}, {70, 40}}, color = {191, 0, 0}));
  connect(senTemp.T, airTemp) annotation(
    Line(points = {{91, 40}, {110, 40}}, color = {0, 0, 127}));
  connect(gai.y, room.qGai_flow) annotation(
    Line(points = {{-19, 110}, {6, 110}, {6, 48}, {18.4, 48}}, color = {0, 0, 127}));
  connect(gaiCO2.y, room.C_flow[1]) annotation(
    Line(points = {{-19, 50}, {0, 50}, {0, 42.8}, {18.4, 42.8}}, color = {0, 0, 127}));
  connect(senCO2.ppm, co2Level) annotation(
    Line(points = {{87, 10}, {110, 10}}, color = {0, 0, 127}));
  connect(airPorIn, room.ports[1]) annotation(
    Line(points = {{-56, -40}, {-56, 28.6667}, {25, 28.6667}}, color = {0, 127, 255}));
  connect(airPorOut, room.ports[2]) annotation(
    Line(points = {{-16, -40}, {-16, 30}, {25, 30}}, color = {0, 127, 255}));
  connect(senCO2.port, room.ports[3]) annotation(
    Line(points = {{76, 0}, {76, -20}, {-4, -20}, {-4, 31.3333}, {25, 31.3333}}, color = {0, 127, 255}));
  connect(product1.y, gai.u[1]) annotation(
    Line(points = {{-99, 110}, {-42, 110}}, color = {0, 0, 127}));
  connect(product1.u1, nPer.y) annotation(
    Line(points = {{-122, 116}, {-161, 116}}, color = {0, 0, 127}));
  connect(workSchedule.y, product1.u2) annotation(
    Line(points = {{-159, 80}, {-144, 80}, {-144, 104}, {-122, 104}}, color = {0, 0, 127}));
  connect(product1.y, gaiCO2.u) annotation(
    Line(points = {{-99, 110}, {-74, 110}, {-74, 50}, {-42, 50}}, color = {0, 0, 127}));
  annotation(
    Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-180, -180}, {180, 180}}), graphics = {Rectangle(extent = {{-160, -160}, {160, 160}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-140, 140}, {140, -140}}, pattern = LinePattern.None, lineColor = {117, 148, 176}, fillColor = {170, 213, 255}, fillPattern = FillPattern.Sphere), Rectangle(extent = {{140, 70}, {160, -70}}, lineColor = {95, 95, 95}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Rectangle(extent = {{146, 70}, {154, -70}}, lineColor = {95, 95, 95}, fillColor = {170, 213, 255}, fillPattern = FillPattern.Solid), Text(extent = {{134, -84}, {14, -134}}, lineColor = {255, 255, 255}, textString = DynamicSelect("", String(heaPorAir.T - 273.15, format = ".1f"))), Text(extent = {{-100, -18}, {100, 20}}, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, textString = "%name")}),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-180, -180}, {180, 180}})));
end Zone;
