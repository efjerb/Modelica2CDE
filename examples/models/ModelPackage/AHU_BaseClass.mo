within ModelPackage;

partial model AHU_BaseClass
  replaceable package MediumW = Buildings.Media.Water;
  replaceable package MediumA = Buildings.Media.Air(extraPropertiesNames = {"CO2"});
  replaceable package MediumC = Buildings.Media.Water;
  parameter Modelica.Units.SI.VolumeFlowRate V_flow_nominal_vent(displayUnit = "m3/h") = 10 "Nominal mass flow of ventilation" annotation(
    Dialog(group = "Nominal values"));
  parameter Modelica.Units.SI.PressureDifference dp_nominal_sup(displayUnit = "Pa") = 100 "Nominal external pressure loss in supply system" annotation(
    Dialog(group = "Nominal values"),
    Evaluate = false);
  parameter Modelica.Units.SI.PressureDifference dp_nominal_ret(displayUnit = "Pa") = 100 "Nominal external pressure loss in return system" annotation(
    Dialog(group = "Nominal values"));
  parameter Modelica.Units.SI.PressureDifference dp_nominal_extra_sup(displayUnit = "Pa") = 0 "Nominal internal pressure loss not covered in supply components" annotation(
    Dialog(group = "Nominal values"));
  parameter Modelica.Units.SI.PressureDifference dp_nominal_extra_ret(displayUnit = "Pa") = 0 "Nominal internal pressure loss not covered in return components" annotation(
    Dialog(group = "Nominal values"));
  parameter Modelica.Units.SI.Efficiency eps_HEX = 0.8 "Efficiency of the rotor heat exchanger" annotation(
    Dialog(group = "Heat exchanger"));
  parameter Modelica.Units.SI.PressureDifference dp_heat_exchanger(displayUnit = "Pa") = 10 "Nominal pressure loss heat exchanger" annotation(
    Dialog(group = "Heat exchanger"));
  parameter Modelica.Units.SI.MassFlowRate m_flow_nominal_heat = 0.1 "Nominal mass flow" annotation(
    Dialog(group = "Heating coil"));
  parameter Modelica.Units.SI.PressureDifference dp1_nominal_heat(displayUnit = "Pa") = 10 "Nominal pressure loss heating coil (air side)" annotation(
    Dialog(group = "Heating coil"));
  parameter Modelica.Units.SI.PressureDifference dp2_nominal_heat(displayUnit = "bar") = 10000 "Nominal pressure loss heating coil (water side)" annotation(
    Dialog(group = "Heating coil"));
  parameter Modelica.Units.SI.Efficiency eps_heatingCoil = 0.7 "Efficiency of the heating coil" annotation(
    Dialog(group = "Heating coil"));
  parameter Modelica.Units.SI.MassFlowRate m_flow_nominal_cool = 0.1 "Nominal mass flow" annotation(
    Dialog(group = "Cooling coil"));
  parameter Modelica.Units.SI.PressureDifference dp1_nominal_cool(displayUnit = "Pa") = 10 "Nominal pressure loss cooling coil (air side)" annotation(
    Dialog(group = "Cooling coil"));
  parameter Modelica.Units.SI.PressureDifference dp2_nominal_cool(displayUnit = "bar") = 10000 "Nominal pressure loss cooling coil (water side)" annotation(
    Dialog(group = "Cooling coil"));
  parameter Modelica.Units.SI.Efficiency eps_coolingCoil = 0.7 "Efficiency of the cooling coil" annotation(
    Dialog(group = "Cooling coil"));
  Buildings.Fluid.Movers.SpeedControlled_y retFan(redeclare package Medium = MediumA, per(pressure(V_flow = 2*{0, V_flow_nominal_vent}, dp = 2*{dp_nominal_ret + dp_nominal_internal_ret, 0}))) annotation(
    Placement(visible = true, transformation(origin = {-80, 30}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Buildings.Fluid.Movers.SpeedControlled_y supFan(redeclare package Medium = MediumA, per(pressure(V_flow = 2*{0, V_flow_nominal_vent}, dp = 2*{dp_nominal_sup + dp_nominal_internal_sup, 0}))) annotation(
    Placement(visible = true, transformation(origin = {150, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Fluid.Actuators.Dampers.Exponential qmb501(redeclare package Medium = MediumA, dpDamper_nominal = 10, m_flow_nominal = m_flow_nominal_vent) annotation(
    Placement(visible = true, transformation(origin = {-110, 30}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Buildings.Fluid.Actuators.Dampers.Exponential qmb101(redeclare package Medium = MediumA, dpDamper_nominal = 10, m_flow_nominal = m_flow_nominal_vent) annotation(
    Placement(visible = true, transformation(origin = {-110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Fluid.Sensors.TemperatureTwoPort bta502(redeclare package Medium = MediumA, m_flow_nominal = m_flow_nominal_vent, transferHeat = true) annotation(
    Placement(visible = true, transformation(origin = {-50, 30}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Buildings.Fluid.Sensors.TemperatureTwoPort bta101(redeclare package Medium = MediumA, m_flow_nominal = m_flow_nominal_vent, transferHeat = true) annotation(
    Placement(visible = true, transformation(origin = {-50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Fluid.Sensors.TemperatureTwoPort bta501(redeclare package Medium = MediumA, m_flow_nominal = m_flow_nominal_vent, transferHeat = true) annotation(
    Placement(visible = true, transformation(origin = {30, 30}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Buildings.Fluid.Sensors.TemperatureTwoPort bta102(redeclare package Medium = MediumA, m_flow_nominal = m_flow_nominal_vent, transferHeat = true) annotation(
    Placement(visible = true, transformation(origin = {30, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Fluid.Sensors.TemperatureTwoPort bta103(redeclare package Medium = MediumA, m_flow_nominal = m_flow_nominal_vent, transferHeat = true) annotation(
    Placement(visible = true, transformation(origin = {90, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Fluid.Sensors.TemperatureTwoPort bta104(redeclare package Medium = MediumA, m_flow_nominal = m_flow_nominal_vent, transferHeat = true) annotation(
    Placement(visible = true, transformation(origin = {180, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Fluid.HeatExchangers.DryCoilEffectivenessNTU heatingCoil(redeclare package Medium1 = MediumA, redeclare package Medium2 = MediumW, configuration = Buildings.Fluid.Types.HeatExchangerConfiguration.CounterFlow, dp1_nominal(displayUnit = "Pa") = dp1_nominal_heat, dp2_nominal = dp2_nominal_heat, eps_nominal = eps_heatingCoil, m1_flow_nominal = m_flow_nominal_vent, m2_flow_nominal = m_flow_nominal_heat, use_Q_flow_nominal = false) annotation(
    Placement(visible = true, transformation(origin = {60, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Fluid.HeatExchangers.DryCoilEffectivenessNTU coolingCoil(redeclare package Medium1 = MediumA, redeclare package Medium2 = MediumC, configuration = Buildings.Fluid.Types.HeatExchangerConfiguration.CounterFlow, dp1_nominal(displayUnit = "Pa") = dp1_nominal_cool, dp2_nominal = dp2_nominal_cool, eps_nominal = eps_coolingCoil, m1_flow_nominal = m_flow_nominal_vent, m2_flow_nominal = m_flow_nominal_cool, use_Q_flow_nominal = false) annotation(
    Placement(visible = true, transformation(origin = {120, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Interfaces.FluidPort_a outdoorAir(redeclare package Medium = MediumA) annotation(
    Placement(visible = true, transformation(origin = {-200, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-200, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Interfaces.FluidPort_b exhaustAir(redeclare package Medium = MediumA) annotation(
    Placement(visible = true, transformation(origin = {-200, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-200, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Interfaces.FluidPort_b supAir(redeclare package Medium = MediumA) annotation(
    Placement(visible = true, transformation(origin = {200, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {200, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Interfaces.FluidPort_a retAir(redeclare package Medium = MediumA) annotation(
    Placement(visible = true, transformation(origin = {200, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {80, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Fluid.Interfaces.FluidPort_a heatSup(redeclare package Medium = MediumW) annotation(
    Placement(visible = true, transformation(origin = {70, -100}, extent = {{-6, -6}, {6, 6}}, rotation = 0), iconTransformation(extent = {{124, -106}, {136, -94}}, rotation = 0)));
  Modelica.Fluid.Interfaces.FluidPort_b heatRet(redeclare package Medium = MediumW) annotation(
    Placement(visible = true, transformation(origin = {50, -100}, extent = {{-6, -6}, {6, 6}}, rotation = 0), iconTransformation(extent = {{84, -106}, {96, -94}}, rotation = 0)));
  Modelica.Fluid.Interfaces.FluidPort_b coolRet(redeclare package Medium = MediumC) annotation(
    Placement(visible = true, transformation(origin = {110, -100}, extent = {{-6, -6}, {6, 6}}, rotation = 0), iconTransformation(extent = {{144, -106}, {156, -94}}, rotation = 0)));
  Modelica.Fluid.Interfaces.FluidPort_a coolSup(redeclare package Medium = MediumC) annotation(
    Placement(visible = true, transformation(origin = {130, -100}, extent = {{-6, -6}, {6, 6}}, rotation = 0), iconTransformation(extent = {{184, -106}, {196, -94}}, rotation = 0)));
  RotaryHeatExchanger hex(redeclare package Medium1 = MediumA, redeclare package Medium2 = MediumA, dp1_nominal = dp_heat_exchanger, dp2_nominal = dp_heat_exchanger, eps = eps_HEX, m1_flow_nominal = m_flow_nominal_vent, m2_flow_nominal = m_flow_nominal_vent) annotation(
    Placement(visible = true, transformation(origin = {-10, 0}, extent = {{20, -50}, {-20, 50}}, rotation = 0)));

  model RotaryHeatExchanger
    extends Buildings.Fluid.HeatExchangers.BaseClasses.PartialEffectiveness(
      sensibleOnly1 = true,
      sensibleOnly2 = true,
      final prescribedHeatFlowRate1=true,
      final prescribedHeatFlowRate2=true,
      Q1_flow = y * eps * QMax_flow,
      Q2_flow = -Q1_flow,
      mWat1_flow = 0,
      mWat2_flow = 0);
    parameter Modelica.Units.SI.Efficiency eps(max=1) = 0.8 "Effectiveness at y=1.";
    Modelica.Units.SI.Efficiency eps_actual = y * eps "Actual efficiency of wheel at the given input speed.";
    Buildings.Controls.OBC.CDL.Interfaces.RealInput y annotation (
      Placement(visible = true, transformation(origin = {0, -110}, extent = {{10, -10}, {-10, 10}}, rotation = -90), iconTransformation(origin = {0, 100}, extent = {{-20, 20}, {20, -20}}, rotation = -90)));
  annotation (
      Icon(graphics={  Line(origin = {3.08885, -6.37717}, points = {{-15.933, -12.546}, {-5.93305, 13.454}, {4.06695, -12.546}, {14.067, 13.454}}), Polygon(origin = {23, 18}, rotation = -8,
              fillPattern =                                                                                                                                                                                 FillPattern.Solid, points = {{3, -3}, {1, 3}, {-3, -1}, {3, -3}, {3, -3}}), Ellipse(origin = {0, -1}, rotation = 180, extent = {{-30, 30}, {30, -30}}, startAngle = 42.3, endAngle = 137.7, closure = EllipseClosure.None)}));
  
  end RotaryHeatExchanger;
protected
  parameter Modelica.Units.SI.PressureDifference dp_nominal_internal_sup = dp_heat_exchanger + dp1_nominal_heat + dp1_nominal_cool + dp_nominal_extra_sup;
  parameter Modelica.Units.SI.PressureDifference dp_nominal_internal_ret = dp_heat_exchanger + dp_nominal_extra_ret;
  parameter Modelica.Units.SI.MassFlowRate m_flow_nominal_vent = V_flow_nominal_vent*1.204 "Nominal mass flow of ventilation";
equation
  connect(bta104.port_b, supAir) annotation(
    Line(points = {{190, -30}, {200, -30}}, color = {0, 127, 255}));
  connect(supFan.port_b, bta104.port_a) annotation(
    Line(points = {{160, -30}, {170, -30}}, color = {0, 127, 255}));
  connect(qmb101.port_b, bta101.port_a) annotation(
    Line(points = {{-100, -30}, {-60, -30}}, color = {0, 127, 255}));
  connect(qmb101.port_a, outdoorAir) annotation(
    Line(points = {{-120, -30}, {-200, -30}}, color = {0, 127, 255}));
  connect(qmb501.port_b, exhaustAir) annotation(
    Line(points = {{-120, 30}, {-200, 30}}, color = {0, 127, 255}));
  connect(retFan.port_b, qmb501.port_a) annotation(
    Line(points = {{-90, 30}, {-100, 30}}, color = {0, 127, 255}));
  connect(bta502.port_b, retFan.port_a) annotation(
    Line(points = {{-60, 30}, {-70, 30}}, color = {0, 127, 255}));
  connect(bta501.port_a, retAir) annotation(
    Line(points = {{40, 30}, {200, 30}}, color = {0, 127, 255}));
  connect(coolingCoil.port_b1, supFan.port_a) annotation(
    Line(points = {{130, -30}, {140, -30}}, color = {0, 127, 255}));
  connect(bta103.port_b, coolingCoil.port_a1) annotation(
    Line(points = {{100, -30}, {110, -30}}, color = {0, 127, 255}));
  connect(bta102.port_b, heatingCoil.port_a1) annotation(
    Line(points = {{40, -30}, {50, -30}}, color = {0, 127, 255}));
  connect(bta103.port_a, heatingCoil.port_b1) annotation(
    Line(points = {{80, -30}, {70, -30}}, color = {0, 127, 255}));
  connect(heatingCoil.port_a2, heatSup) annotation(
    Line(points = {{70, -42}, {70, -100}}, color = {0, 127, 255}));
  connect(heatingCoil.port_b2, heatRet) annotation(
    Line(points = {{50, -42}, {50, -100}}, color = {0, 127, 255}));
  connect(coolingCoil.port_b2, coolRet) annotation(
    Line(points = {{110, -42}, {110, -100}}, color = {0, 127, 255}));
  connect(coolingCoil.port_a2, coolSup) annotation(
    Line(points = {{130, -42}, {130, -100}}, color = {0, 127, 255}));
  connect(bta502.port_a, hex.port_b1) annotation(
    Line(points = {{-40, 30}, {-30, 30}}, color = {0, 127, 255}));
  connect(hex.port_a1, bta501.port_b) annotation(
    Line(points = {{10, 30}, {20, 30}}, color = {0, 127, 255}));
  connect(hex.port_b2, bta102.port_a) annotation(
    Line(points = {{10, -30}, {20, -30}}, color = {0, 127, 255}));
  connect(hex.port_a2, bta101.port_b) annotation(
    Line(points = {{-30, -30}, {-40, -30}}, color = {0, 127, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}}), graphics = {Rectangle(origin = {-60, 0}, fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{-40, 100}, {40, -100}}), Rectangle(origin = {-150, -50}, fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{-50, 50}, {50, -50}}), Rectangle(origin = {-150, 50}, fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{-50, 50}, {50, -50}}), Rectangle(origin = {30, 50}, fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{50, 50}, {-50, -50}}), Rectangle(origin = {30, -50}, fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{50, 50}, {-50, -50}}), Rectangle(origin = {110, -50}, fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{30, 50}, {-30, -50}}), Rectangle(origin = {170, -50}, fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{30, 50}, {-30, -50}}), Ellipse(origin = {-150, 50}, lineThickness = 0.75, extent = {{-30, 30}, {30, -30}}), Polygon(origin = {-149, 42}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-17, 16}, {-17, -32}, {31, -8}, {-17, 16}}), Polygon(origin = {29, -42}, fillPattern = FillPattern.Solid, points = {{-17, 16}, {-17, -32}, {31, -8}, {-17, 16}}), Ellipse(origin = {30, -50}, rotation = 180, lineThickness = 0.75, extent = {{-30, 30}, {30, -30}}), Ellipse(origin = {110, -50}, rotation = 180, lineThickness = 0.75, extent = {{-20, 20}, {20, -20}}), Line(origin = {110, -50}, points = {{0, 20}, {0, -20}}, thickness = 0.75), Line(origin = {110, -50}, points = {{-20, 0}, {20, 0}}, thickness = 0.75), Ellipse(origin = {170, -50}, rotation = 180, lineThickness = 0.75, extent = {{-20, 20}, {20, -20}}), Line(origin = {170, -50}, points = {{-15, 0}, {15, 0}}, thickness = 0.75), Polygon(origin = {-39, 18}, rotation = -8, fillPattern = FillPattern.Solid, lineThickness = 1, points = {{3, -3}, {1, 3}, {-3, -1}, {3, -3}, {3, -3}}), Line(origin = {-58.53, -5.55}, points = {{-15.933, -12.546}, {-5.93305, 13.454}, {4.06695, -12.546}, {14.067, 13.454}}, thickness = 0.75), Ellipse(origin = {-62, -1}, rotation = 180, lineThickness = 0.75, extent = {{-30, 30}, {30, -30}}, startAngle = 42.3, endAngle = 137.7, closure = EllipseClosure.None)}),
    Documentation(info = "<html>
<p>Model of an AHU with a water-based heating and cooling coil, and a rotary heat exchanger.</p>
<p><br>The rotary heat exchanger does not consider moisture exchange.</p>
<p><br>For succesful simulation, there must be a pressure drop across all flow streams (vent. supply, vent. return, heating and cooling)!</p>
</html>"));
end AHU_BaseClass;
