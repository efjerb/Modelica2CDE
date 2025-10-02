within ModelPackage;
model HTR9VEN02 "Auto-generated model"

  package MediumHeating = Buildings.Media.Water(T_default=273.15+70) annotation (
      __Dymola_choicesAllMatching=true);
  package MediumCooling = Buildings.Media.Antifreeze.PropyleneGlycolWater(property_T=273.15 + 5, X_a=0.35, T_default=273.15 + 5) annotation (
      __Dymola_choicesAllMatching=true);
  package MediumVentilation = Buildings.Media.Air(extraPropertiesNames={"CO2"}) annotation (
      __Dymola_choicesAllMatching=true);

  AHU ahuAHU09_02(
    redeclare package MediumW = MediumHeating,
    redeclare package MediumA = MediumVentilation,
    redeclare package MediumC = MediumCooling,
    retFan(addPowerToMedium=false),
    supFan(addPowerToMedium=false)) annotation (Placement(transformation(extent
          ={{-40,-62},{40,-22}})), _CDE(iri="inst:AHU09.02", rdfType={"brick:AHU", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_01_VAV01_1_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_01_VAV01_1(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_01_VAV01_1_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{144,102},
            {164,122}})),_CDE(iri="inst:R08.01_VAV01_1", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_n_VAV01_1_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_n_VAV01_1(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_n_VAV01_1_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{144,42},
            {164,62}})), _CDE(iri="inst:R08.06_n_VAV01_1", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_n_VAV01_2_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_n_VAV01_2(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_n_VAV01_2_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{174,42},
            {194,62}})), _CDE(iri="inst:R08.06_n_VAV01_2", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_n_VAV01_3_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_n_VAV01_3(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_n_VAV01_3_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{204,42},
            {224,62}})), _CDE(iri="inst:R08.06_n_VAV01_3", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_n_VAV01_4_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_n_VAV01_4(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_n_VAV01_4_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{234,42},
            {254,62}})), _CDE(iri="inst:R08.06_n_VAV01_4", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_o_VAV01_1_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_o_VAV01_1(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_o_VAV01_1_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{144,-18},
            {164,2}})),   _CDE(iri="inst:R08.06_o_VAV01_1", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_o_VAV01_2_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_o_VAV01_2(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_o_VAV01_2_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{174,-18},
            {194,2}})),   _CDE(iri="inst:R08.06_o_VAV01_2", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_o_VAV01_3_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_o_VAV01_3(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_o_VAV01_3_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{204,-18},
            {224,2}})),   _CDE(iri="inst:R08.06_o_VAV01_3", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_o_VAV01_4_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_o_VAV01_4(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_o_VAV01_4_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{234,-18},
            {254,2}})),   _CDE(iri="inst:R08.06_o_VAV01_4", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_07_VAV01_1_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_07_VAV01_1(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_07_VAV01_1_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{144,-78},
            {164,-58}})), _CDE(iri="inst:R08.07_VAV01_1", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_07_VAV01_2_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_07_VAV01_2(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_07_VAV01_2_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{174,-78},
            {194,-58}})), _CDE(iri="inst:R08.07_VAV01_2", rdfType={"brick:VAV", "brick:Equipment"}));

  parameter Modelica.Units.SI.PressureDifference motDampR08_07_VAV01_3_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_07_VAV01_3(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_07_VAV01_3_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{204,-78},
            {224,-58}})), _CDE(iri="inst:R08.07_VAV01_3", rdfType={"brick:VAV", "brick:Equipment"}));

  Zone           roomR08_01 annotation (Placement(
        transformation(extent={{64,102},{104,142}})),
                                                    _CDE(iri="inst:R08.01", rdfType={"rec:Room"}));

  Zone           roomR08_07 annotation (Placement(
        transformation(extent={{64,-78},{104,-38}})), _CDE(iri="inst:R08.07", rdfType={"rec:Room"}));

  Zone           roomR08_06_n annotation (Placement(
        transformation(extent={{64,42},{104,82}})),_CDE(iri="inst:R08.06_n", rdfType={"rec:Room"}));

  Zone           roomR08_06_o annotation (Placement(
        transformation(extent={{64,-18},{104,22}})),_CDE(iri="inst:R08.06_o", rdfType={"rec:Room"}));

  CtrlLib.ZoneController zoneCtrl2
    annotation (Placement(transformation(extent={{114,2},{134,22}})),  __cdl(
        generatePointlist=true));
  CtrlLib.ZoneController zoneCtrl3
    annotation (Placement(transformation(extent={{114,62},{134,82}})),__cdl(
        generatePointlist=true));
  CtrlLib.ZoneController zoneCtrl4
    annotation (Placement(transformation(extent={{114,122},{134,142}})),
                                                                       __cdl(
        generatePointlist=true));
  CtrlLib.AHUController ahuCtrl(retPreStp(k=returnPressureSetpoint))
                                    annotation (Placement(transformation(extent={{-36,24},
            {22,118}})),             __cdl(generatePointlist=true));
  CtrlLib.ZoneController zoneCtrl1
    annotation (Placement(transformation(extent={{114,-58},{134,-38}})),__cdl(
        generatePointlist=true));
equation
  connect(roomR08_07.airTemp, zoneCtrl1.roomTemp) annotation (Line(points={{102.889,
          -43.5556},{102.889,-40},{116,-40}},        color={0,0,127}));
  connect(roomR08_07.co2Level, zoneCtrl1.co2Level)
    annotation (Line(points={{102.889,-48},{102.889,-44},{116,-44}},
                                                      color={0,0,127}));
  connect(roomR08_06_o.airTemp, zoneCtrl2.roomTemp) annotation (Line(points={{102.889,
          16.4444},{102.889,20},{116,20}},         color={0,0,127}));
  connect(roomR08_06_o.co2Level, zoneCtrl2.co2Level)
    annotation (Line(points={{102.889,12},{102.889,16},{116,16}},
                                                      color={0,0,127}));
  connect(roomR08_06_n.co2Level, zoneCtrl3.co2Level)
    annotation (Line(points={{102.889,72},{102.889,76},{116,76}},
                                                    color={0,0,127}));
  connect(roomR08_06_n.airTemp, zoneCtrl3.roomTemp) annotation (Line(points={{102.889,
          76.4444},{102.889,80},{116,80}},        color={0,0,127}));
  connect(roomR08_01.co2Level, zoneCtrl4.co2Level)
    annotation (Line(points={{102.889,132},{102.889,136},{116,136}},
                                                      color={0,0,127}));
  connect(roomR08_01.airTemp, zoneCtrl4.roomTemp) annotation (Line(points={{102.889,
          136.444},{102.889,140},{116,140}},        color={0,0,127}));
  connect(ahuCtrl.supFan_y, ahuAHU09_02.supFanSpeed) annotation (Line(points={{
          13.3,97.4375},{28,97.4375},{28,128},{-68,128},{-68,-68},{8,-68},{8,-66}},
        color={0,0,127}));
  connect(ahuCtrl.retFan_y, ahuAHU09_02.retFanSpeed) annotation (Line(points={{
          13.3,91.5625},{22,91.5625},{22,122},{-62,122},{-62,-10},{-28,-10},{-28,
          -18}}, color={0,0,127}));
  connect(ahuCtrl.heatingCoil_y, ahuAHU09_02.heaCoil_y) annotation (Line(points
        ={{13.3,79.8125},{34,79.8125},{34,134},{-74,134},{-74,-74},{22,-74},{22,
          -66}}, color={0,0,127}));
  connect(ahuCtrl.supPre, ahuAHU09_02.supPre) annotation (Line(points={{-27.3,
          79.8125},{-42,79.8125},{-42,20},{48,20},{48,-58},{44,-58}}, color={0,
          0,127}));
  connect(ahuCtrl.retPre, ahuAHU09_02.retPre) annotation (Line(points={{-27.3,
          73.9375},{-30,73.9375},{-30,74},{-36,74},{-36,26},{28,26},{28,-38},{
          20,-38}}, color={0,0,127}));
  connect(ahuCtrl.supTemp, ahuAHU09_02.supAirTemp) annotation (Line(points={{-27.3,
          56.3125},{-30,56.3125},{-30,32},{34,32},{34,-38}}, color={0,0,127}));
  connect(zoneCtrl4.damper_y, motDampR08_01_VAV01_1.y)
    annotation (Line(points={{132,140},{154,140},{154,124}}, color={0,0,127}));
  connect(zoneCtrl3.damper_y, motDampR08_06_n_VAV01_1.y)
    annotation (Line(points={{132,80},{154,80},{154,64}}, color={0,0,127}));
  connect(zoneCtrl3.damper_y, motDampR08_06_n_VAV01_2.y)
    annotation (Line(points={{132,80},{184,80},{184,64}}, color={0,0,127}));
  connect(zoneCtrl3.damper_y, motDampR08_06_n_VAV01_3.y)
    annotation (Line(points={{132,80},{214,80},{214,64}}, color={0,0,127}));
  connect(zoneCtrl3.damper_y, motDampR08_06_n_VAV01_4.y)
    annotation (Line(points={{132,80},{244,80},{244,64}}, color={0,0,127}));
  connect(zoneCtrl2.damper_y, motDampR08_06_o_VAV01_1.y)
    annotation (Line(points={{132,20},{154,20},{154,4}},   color={0,0,127}));
  connect(zoneCtrl2.damper_y, motDampR08_06_o_VAV01_2.y)
    annotation (Line(points={{132,20},{184,20},{184,4}},   color={0,0,127}));
  connect(zoneCtrl2.damper_y, motDampR08_06_o_VAV01_3.y)
    annotation (Line(points={{132,20},{214,20},{214,4}},   color={0,0,127}));
  connect(zoneCtrl2.damper_y, motDampR08_06_o_VAV01_4.y)
    annotation (Line(points={{132,20},{244,20},{244,4}},   color={0,0,127}));
  connect(zoneCtrl1.damper_y, motDampR08_07_VAV01_1.y)
    annotation (Line(points={{132,-40},{154,-40},{154,-56}}, color={0,0,127}));
  connect(zoneCtrl1.damper_y, motDampR08_07_VAV01_2.y)
    annotation (Line(points={{132,-40},{184,-40},{184,-56}}, color={0,0,127}));
  connect(zoneCtrl1.damper_y, motDampR08_07_VAV01_3.y)
    annotation (Line(points={{132,-40},{214,-40},{214,-56}}, color={0,0,127}));
  connect(ahuCtrl.rotor_y, ahuAHU09_02.rotorSpeed) annotation (Line(points={{
          13.3,85.1},{13.3,86},{16,86},{16,116},{-56,116},{-56,12},{-5.6,12},{-5.6,
          -18}}, color={0,0,127}));
  connect(ahuCtrl.coolingCoil_y, ahuAHU09_02.coolCoil_y) annotation (Line(
        points={{13.3,73.9375},{40,73.9375},{40,140},{-80,140},{-80,-80},{34.4,
          -80},{34.4,-66}}, color={0,0,127}));
  annotation (uses(Buildings(version="10.0.0"), Modelica(version="4.0.0")), experiment(StartTime=0,StopTime=86400, __Dymola_Algorithm="Dassl"),
    Diagram(coordinateSystem(extent={{-300,-120},{300,180}})),
    Icon(coordinateSystem(extent={{-300,-120},{300,180}})));
end HTR9VEN02;
