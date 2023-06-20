model Model "Auto-generated model"
  Buildings.Fluid.Actuators.Dampers.Exponential motDamp866580(redeclare package Medium = MediumVentilation, m_flow_nominal = 0.0504, dpDamper_nominal = 20.84) annotation(
    _CDE(id=866580), Placement(visible = true, transformation(origin = {120, 80}, extent = {{0, 0}, {20, 20}}, rotation = 0)));
  Buildings.Fluid.Actuators.Dampers.Exponential motDamp869779(redeclare package Medium = MediumVentilation, m_flow_nominal = 0.0504, dpDamper_nominal = 9.68) annotation(
    _CDE(id=869779), Placement(visible = true, transformation(origin = {90, 20}, extent = {{30, 0}, {50, 20}}, rotation = 0)));
  Buildings.Fluid.Actuators.Dampers.Exponential motDamp869789(redeclare package Medium = MediumVentilation, m_flow_nominal = 0.0504, dpDamper_nominal = 9.68) annotation(
    _CDE(id=869789), Placement(visible = true, transformation(origin = {60, -100}, extent = {{60, 0}, {80, 20}}, rotation = 0)));
  Buildings.Fluid.Actuators.Dampers.Exponential motDamp869803(redeclare package Medium = MediumVentilation, m_flow_nominal = 0.0504, dpDamper_nominal = 9.68) annotation(
    _CDE(id=869803), Placement(visible = true, transformation(origin = {30, -40}, extent = {{90, 0}, {110, 20}}, rotation = 0)));
  Buildings.Fluid.Movers.SpeedControlled_y fan1331423(redeclare package Medium = MediumVentilation, energyDynamics = Modelica.Fluid.Types.Dynamics.SteadyState, addPowerToMedium = false, show_T = true, riseTime = 120, per(pressure(V_flow(displayUnit = "m3/s") = {0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18, 0.2, 0.22, 0.24, 0.26, 0.28}, dp = {438.4, 419.2, 401.2, 384.5, 370.4, 352.5, 332.6, 314.7, 283.8, 236.4, 178.0, 135.0, 86.9, 43.6}), use_powerCharacteristic = true, power(V_flow(displayUnit = "m3/s") = {0.02, 0.08, 0.12, 0.16, 0.2, 0.24, 0.28}, P = {124.0, 142.7, 157.7, 175.7, 200.0, 221.0, 253.8}))) annotation(
    _CDE(id=1331423), Placement(visible = true, transformation(origin = {-180, 60}, extent = {{120, 0}, {140, 20}}, rotation = 0)));
  Buildings.Fluid.Movers.SpeedControlled_y fan1332058(redeclare package Medium = MediumVentilation, energyDynamics = Modelica.Fluid.Types.Dynamics.SteadyState, addPowerToMedium = false, show_T = true, riseTime = 120, per(pressure(V_flow(displayUnit = "m3/s") = {0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18, 0.2, 0.22, 0.24, 0.26, 0.28}, dp = {438.4, 419.2, 401.2, 384.5, 370.4, 352.5, 332.6, 314.7, 283.8, 236.4, 178.0, 135.0, 86.9, 43.6}), use_powerCharacteristic = true, power(V_flow(displayUnit = "m3/s") = {0.02, 0.08, 0.12, 0.16, 0.2, 0.24, 0.28}, P = {124.0, 142.7, 157.7, 175.7, 200.0, 221.0, 253.8}))) annotation(
    _CDE(id=1332058), Placement(visible = true, transformation(origin = {-230, -40}, extent = {{150, 0}, {170, 20}}, rotation = 0)));
  ToolchainLib.PressureSensor senPre1356764(redeclare package MediumA = MediumVentilation) annotation(
    _CDE(id=1356764), Placement(visible = true, transformation(origin = {-200, 80}, extent = {{180, 0}, {200, -20}}, rotation = 0)));
  ToolchainLib.PressureSensor senPre1359814(redeclare package MediumA = MediumVentilation) annotation(
    _CDE(id=1359814), Placement(visible = true, transformation(origin = {-250, -40}, extent = {{210, 0}, {230, 20}}, rotation = 0)));
  Buildings.Fluid.Sensors.TemperatureTwoPort senTem1359936(redeclare package Medium = MediumVentilation, m_flow_nominal = 0.2016, transferHeat = true, TAmb = 294.15, tauHeaTra = 600) annotation(
    _CDE(id=1359936), Placement(visible = true, transformation(origin = {-218, 60}, extent = {{240, 0}, {260, 20}}, rotation = 0)));
  Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage motVal1151719(redeclare package Medium = MediumHeating, m_flow_nominal = 0.05862, CvData = Buildings.Fluid.Types.CvTypes.Kv, Kv = 1.6) annotation(
    _CDE(id=1151719), Placement(visible = true, transformation(origin = {30, 20}, extent = {{0, 30}, {20, 50}}, rotation = 90)));
  ToolchainLib.RoomDetachedDetailedProfile room1333983(redeclare package MediumA = MediumVentilation, nPersons = 6) annotation(
    _CDE(id=1333983), Placement(visible = true, transformation(origin = {160, 110}, extent = {{0, -30}, {20, -10}}, rotation = 0)));
  ToolchainLib.RoomDetachedDetailedProfile room1333984(redeclare package MediumA = MediumVentilation, nPersons = 6) annotation(
    _CDE(id=1333984), Placement(visible = true, transformation(origin = {130, 50}, extent = {{30, -30}, {50, -10}}, rotation = 0)));
  ToolchainLib.RoomDetachedDetailedProfile room1333985(redeclare package MediumA = MediumVentilation, nPersons = 6) annotation(
    _CDE(id=1333985), Placement(visible = true, transformation(origin = {100, -70}, extent = {{60, -30}, {80, -10}}, rotation = 0)));
  ToolchainLib.RoomDetachedDetailedProfile room1333986(redeclare package MediumA = MediumVentilation, nPersons = 6) annotation(
    _CDE(id=1333986), Placement(visible = true, transformation(origin = {160, 20}, extent = {{0, -60}, {20, -40}}, rotation = 0)));
  CtrllSeqLib.AHUController AHUctrl annotation(
    Placement(visible = true, transformation(origin = {-120, 120}, extent = {{-20, -20}, {20, 20}}, rotation = 0)), __cdl(generatePointlist=true), _CDE(expand=true));
  CtrllSeqLib.VAVController vav1 annotation(
    Placement(visible = true, transformation(origin = {110, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)), __cdl(generatePointlist=true));
  CtrllSeqLib.VAVController vav2 annotation(
    Placement(visible = true, transformation(origin = {110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)), __cdl(generatePointlist=true));
  CtrllSeqLib.VAVController vav3 annotation(
    Placement(visible = true, transformation(origin = {110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)), __cdl(generatePointlist=true));
  CtrllSeqLib.VAVController vav4 annotation(
    Placement(visible = true, transformation(origin = {110, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)), __cdl(generatePointlist=true));
equation
  connect(motDamp869779.port_b, room1333984.airPorIn) annotation(
    Line(points = {{140, 30}, {154, 30}, {154, 41}, {155, 41}}, color = {0, 127, 255}));
  connect(motDamp866580.port_b, room1333983.airPorIn) annotation(
    Line(points = {{140, 90}, {140, 91}, {152, 91}, {152, 100}, {156, 100}}, color = {0, 127, 255}));
  connect(motDamp869803.port_b, room1333986.airPorIn) annotation(
    Line(points = {{140, -30}, {148, -30}, {148, -19}, {155, -19}}, color = {0, 127, 255}));
  connect(motDamp869789.port_b, room1333985.airPorIn) annotation(
    Line(points = {{140, -90}, {140, -79}, {155, -79}}, color = {0, 127, 255}));
  connect(fan1331423.port_b, senPre1356764.port_a) annotation(
    Line(points = {{-40, 70}, {-20, 70}}, color = {0, 127, 255}));
  connect(fan1332058.port_b, senPre1359814.port_a) annotation(
    Line(points = {{-60, -30}, {-40, -30}}, color = {0, 127, 255}));
  connect(senPre1356764.port_b, senTem1359936.port_a) annotation(
    Line(points = {{0, 70}, {22, 70}}));
  connect(AHUctrl.supFan_y, fan1331423.y) annotation(
    Line(points = {{-106, 138}, {-50, 138}, {-50, 82}}, color = {0, 0, 127}));
  connect(AHUctrl.retFan_y, fan1332058.y) annotation(
    Line(points = {{-106, 134}, {-90, 134}, {-90, -6}, {-70, -6}, {-70, -18}}, color = {0, 0, 127}));
  connect(AHUctrl.heatingCoil_y, motVal1151719.y) annotation(
    Line(points = {{-106, 126}, {-76, 126}, {-76, 30}, {-22, 30}}, color = {0, 0, 127}));
  connect(senPre1359814.statPres, AHUctrl.retPre) annotation(
    Line(points = {{-30, -18}, {-30, 12}, {-168, 12}, {-168, 134}, {-134, 134}}, color = {0, 0, 127}));
  connect(vav1.y, motDamp869789.y) annotation(
    Line(points = {{118, -62}, {154, -62}, {154, -74}, {130, -74}, {130, -78}}, color = {0, 0, 127}));
  connect(vav1.roomTemp, room1333985.airTemp) annotation(
    Line(points = {{102, -64}, {98, -64}, {98, -56}, {194, -56}, {194, -76}, {188, -76}}, color = {0, 0, 127}));
  connect(vav1.co2Level, room1333985.co2Level) annotation(
    Line(points = {{102, -70}, {90, -70}, {90, -50}, {200, -50}, {200, -80}, {188, -80}}, color = {0, 0, 127}));
  connect(vav2.roomTemp, room1333986.airTemp) annotation(
    Line(points = {{102, -4}, {102, -5}, {96, -5}, {96, 4}, {192, 4}, {192, -16}, {188, -16}}, color = {0, 0, 127}));
  connect(vav2.co2Level, room1333986.co2Level) annotation(
    Line(points = {{102, -10}, {102, -11}, {90, -11}, {90, 10}, {198, 10}, {198, -20}, {188, -20}}, color = {0, 0, 127}));
  connect(vav2.y, motDamp869803.y) annotation(
    Line(points = {{118, -2}, {152, -2}, {152, -12}, {130, -12}, {130, -18}}, color = {0, 0, 127}));
  connect(vav3.y, motDamp869779.y) annotation(
    Line(points = {{118, 58}, {130, 58}, {130, 42}}, color = {0, 0, 127}));
  connect(vav3.co2Level, room1333984.co2Level) annotation(
    Line(points = {{102, 50}, {90, 50}, {90, 68}, {196, 68}, {196, 40}, {188, 40}}, color = {0, 0, 127}));
  connect(vav4.y, motDamp866580.y) annotation(
    Line(points = {{118, 118}, {130, 118}, {130, 102}}, color = {0, 0, 127}));
  connect(vav3.roomTemp, room1333984.airTemp) annotation(
    Line(points = {{102, 56}, {102, 55}, {96, 55}, {96, 64}, {192, 64}, {192, 44}, {188, 44}}, color = {0, 0, 127}));
  connect(vav4.roomTemp, room1333983.airTemp) annotation(
    Line(points = {{102, 116}, {96, 116}, {96, 124}, {192, 124}, {192, 104}, {188, 104}}, color = {0, 0, 127}));
  connect(vav4.co2Level, room1333983.co2Level) annotation(
    Line(points = {{102, 110}, {90, 110}, {90, 130}, {196, 130}, {196, 100}, {188, 100}}, color = {0, 0, 127}));
  connect(senPre1356764.statPres, AHUctrl.supPre) annotation(
    Line(points = {{-10, 60}, {-10, 48}, {-140, 48}, {-140, 138}, {-134, 138}}, color = {0, 0, 127}));
  connect(senTem1359936.T, AHUctrl.supTemp) annotation(
    Line(points = {{32, 82}, {32, 148}, {-156, 148}, {-156, 128}, {-134, 128}}, color = {0, 0, 127}));
  annotation(
    experiment(StartTime = 0, StopTime = 86400, __Dymola_Algorithm = "Dassl"),
    Diagram(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}})),
    version = "",
    uses(Buildings(version = "9.1.0")));
end Model;
