model Model "Auto-generated model"

  package MediumHeating = Buildings.Media.Water(T_default=273.15+70) annotation (
      __Dymola_choicesAllMatching=true);
  package MediumCooling = Buildings.Media.Antifreeze.PropyleneGlycolWater(property_T=273.15 + 5, X_a=0.35, T_default=273.15 + 5) annotation (
      __Dymola_choicesAllMatching=true);
  package MediumVentilation = Buildings.Media.Air(extraPropertiesNames={"CO2"}) annotation (
      __Dymola_choicesAllMatching=true);

  AHU_w_i_o ahuHTR9_VEN02(
    redeclare package MediumW = MediumHeating,
    redeclare package MediumA = MediumVentilation,
    redeclare package MediumC = MediumCooling,
    retFan(addPowerToMedium=false),
    supFan(addPowerToMedium=false)) annotation (Placement(transformation(extent
          ={{-170,88},{-90,128}})), _CDE(iri="inst:HTR9_VEN02"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_01_VAV01_1_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_01_VAV01_1(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_01_VAV01_1_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{30,190},
            {50,210}})), _CDE(iri="inst:R08.01_VAV01_1"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_n_VAV01_1_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_n_VAV01_1(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_n_VAV01_1_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{-2,86},{
            18,106}})), _CDE(iri="inst:R08.06_n_VAV01_1"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_n_VAV01_2_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_n_VAV01_2(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_n_VAV01_2_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{28,86},{
            48,106}})), _CDE(iri="inst:R08.06_n_VAV01_2"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_n_VAV01_3_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_n_VAV01_3(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_n_VAV01_3_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{58,86},{
            78,106}})), _CDE(iri="inst:R08.06_n_VAV01_3"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_n_VAV01_4_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_n_VAV01_4(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_n_VAV01_4_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{88,86},{
            108,106}})), _CDE(iri="inst:R08.06_n_VAV01_4"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_o_VAV01_1_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_o_VAV01_1(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_o_VAV01_1_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{54,0},{
            74,20}})), _CDE(iri="inst:R08.06_o_VAV01_1"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_o_VAV01_2_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_o_VAV01_2(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_o_VAV01_2_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{84,0},{
            104,20}})), _CDE(iri="inst:R08.06_o_VAV01_2"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_o_VAV01_3_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_o_VAV01_3(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_o_VAV01_3_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{114,0},{
            134,20}})), _CDE(iri="inst:R08.06_o_VAV01_3"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_06_o_VAV01_4_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_06_o_VAV01_4(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_06_o_VAV01_4_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{142,0},{
            162,20}})), _CDE(iri="inst:R08.06_o_VAV01_4"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_07_VAV01_1_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_07_VAV01_1(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_07_VAV01_1_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{48,-66},
            {68,-46}})), _CDE(iri="inst:R08.07_VAV01_1"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_07_VAV01_2_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_07_VAV01_2(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_07_VAV01_2_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{78,-66},
            {98,-46}})), _CDE(iri="inst:R08.07_VAV01_2"));

  parameter Modelica.Units.SI.PressureDifference motDampR08_07_VAV01_3_damper_dp_nom(displayUnit="Pa") = 15552000.0;
  Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_07_VAV01_3(
      redeclare package Medium = MediumVentilation,
      m_flow_nominal= 0.12,
      y_start=0,
      dpDamper_nominal=motDampR08_07_VAV01_3_damper_dp_nom,
      dpFixed_nominal=0) annotation (Placement(transformation(extent={{108,-66},
            {128,-46}})), _CDE(iri="inst:R08.07_VAV01_3"));

  ToolchainLib.RoomDetached           roomR08_01 annotation (Placement(
        transformation(extent={{-54,196},{-34,216}})), _CDE(iri="inst:R08.01"));

  ToolchainLib.RoomDetached           roomR08_07 annotation (Placement(
        transformation(extent={{-68,-70},{-48,-50}})), _CDE(iri="inst:R08.07"));

  ToolchainLib.RoomDetached           roomR08_06_n annotation (Placement(
        transformation(extent={{-56,112},{-36,132}})), _CDE(iri="inst:R08.06_n"));

  ToolchainLib.RoomDetached           roomR08_06_o annotation (Placement(
        transformation(extent={{-18,16},{2,36}})), _CDE(iri="inst:R08.06_o"));

  CtrllSeqLib.AHUController aHUController
    annotation (Placement(transformation(extent={{-262,-68},{-150,44}})));
  CtrllSeqLib.VAVController vAVController
    annotation (Placement(transformation(extent={{-12,-66},{8,-46}})));
  CtrllSeqLib.VAVController vAVController1
    annotation (Placement(transformation(extent={{28,18},{48,38}})));
  CtrllSeqLib.VAVController vAVController2
    annotation (Placement(transformation(extent={{-22,114},{-2,134}})));
  CtrllSeqLib.VAVController vAVController3
    annotation (Placement(transformation(extent={{-22,200},{-2,220}})));
equation

  connect(aHUController.supFan_y, ahuHTR9_VEN02.supFanSpeed) annotation (Line(
        points={{-166.8,38.4},{-166.8,78},{-130,78},{-130,76},{-122,76},{-122,
          84}}, color={0,0,127}));
  connect(aHUController.retFan_y, ahuHTR9_VEN02.retFanSpeed) annotation (Line(
        points={{-166.8,27.2},{-144,27.2},{-144,76},{-178,76},{-178,142},{-158,
          142},{-158,132}}, color={0,0,127}));
  connect(aHUController.heatingCoil_y, ahuHTR9_VEN02.heatCoil_y) annotation (
      Line(points={{-166.8,4.8},{-130,4.8},{-130,74},{-108,74},{-108,84}},
        color={0,0,127}));
  connect(ahuHTR9_VEN02.supAirTemp, aHUController.supPre) annotation (Line(
        points={{-96,112},{-76,112},{-76,94},{-78,94},{-78,76},{-146,76},{-146,
          46},{-268,46},{-268,38.4},{-245.2,38.4}}, color={0,0,127}));
  connect(aHUController.retPre, ahuHTR9_VEN02.retAirPre) annotation (Line(
        points={{-245.2,27.2},{-245.2,146},{-110,146},{-110,112}}, color={0,0,
          127}));
  connect(ahuHTR9_VEN02.supAirPre, aHUController.supTemp) annotation (Line(
        points={{-86,92},{-86,78},{-132,78},{-132,74},{-272,74},{-272,10.4},{
          -245.2,10.4}}, color={0,0,127}));
  connect(roomR08_07.airTemp, vAVController.roomTemp) annotation (Line(points={
          {-48.5556,-52.7778},{-16,-52.7778},{-16,-50},{-10,-50}}, color={0,0,
          127}));
  connect(roomR08_07.co2Level, vAVController.co2Level) annotation (Line(points=
          {{-48.5556,-55},{-48.5556,-56},{-10,-56}}, color={0,0,127}));
  connect(vAVController.y, motDampR08_07_VAV01_1.y) annotation (Line(points={{6,
          -48},{26,-48},{26,-22},{58,-22},{58,-44}}, color={0,0,127}));
  connect(vAVController.y, motDampR08_07_VAV01_2.y) annotation (Line(points={{6,
          -48},{26,-48},{26,-22},{88,-22},{88,-44}}, color={0,0,127}));
  connect(vAVController.y, motDampR08_07_VAV01_3.y) annotation (Line(points={{6,
          -48},{26,-48},{26,-22},{118,-22},{118,-44}}, color={0,0,127}));
  connect(roomR08_06_o.airTemp, vAVController1.roomTemp) annotation (Line(
        points={{1.44444,33.2222},{15.7222,33.2222},{15.7222,34},{30,34}},
        color={0,0,127}));
  connect(roomR08_06_o.co2Level, vAVController1.co2Level) annotation (Line(
        points={{1.44444,31},{20,31},{20,28},{30,28}}, color={0,0,127}));
  connect(vAVController1.y, motDampR08_06_o_VAV01_1.y)
    annotation (Line(points={{46,36},{64,36},{64,22}}, color={0,0,127}));
  connect(vAVController1.y, motDampR08_06_o_VAV01_2.y)
    annotation (Line(points={{46,36},{94,36},{94,22}}, color={0,0,127}));
  connect(vAVController1.y, motDampR08_06_o_VAV01_3.y)
    annotation (Line(points={{46,36},{124,36},{124,22}}, color={0,0,127}));
  connect(vAVController1.y, motDampR08_06_o_VAV01_4.y)
    annotation (Line(points={{46,36},{152,36},{152,22}}, color={0,0,127}));
  connect(roomR08_06_n.airTemp, vAVController2.roomTemp) annotation (Line(
        points={{-36.5556,129.222},{-20,129.222},{-20,130}}, color={0,0,127}));
  connect(roomR08_06_n.co2Level, vAVController2.co2Level) annotation (Line(
        points={{-36.5556,127},{-30,127},{-30,124},{-20,124}}, color={0,0,127}));
  connect(vAVController2.y, motDampR08_06_n_VAV01_1.y)
    annotation (Line(points={{-4,132},{8,132},{8,108}}, color={0,0,127}));
  connect(vAVController2.y, motDampR08_06_n_VAV01_2.y)
    annotation (Line(points={{-4,132},{38,132},{38,108}}, color={0,0,127}));
  connect(vAVController2.y, motDampR08_06_n_VAV01_3.y)
    annotation (Line(points={{-4,132},{68,132},{68,108}}, color={0,0,127}));
  connect(vAVController2.y, motDampR08_06_n_VAV01_4.y)
    annotation (Line(points={{-4,132},{98,132},{98,108}}, color={0,0,127}));
  connect(roomR08_01.airTemp, vAVController3.roomTemp) annotation (Line(points=
          {{-34.5556,213.222},{-28,213.222},{-28,216},{-20,216}}, color={0,0,
          127}));
  connect(roomR08_01.co2Level, vAVController3.co2Level) annotation (Line(points
        ={{-34.5556,211},{-20,211},{-20,210}}, color={0,0,127}));
  connect(vAVController3.y, motDampR08_01_VAV01_1.y)
    annotation (Line(points={{-4,218},{40,218},{40,212}}, color={0,0,127}));
  annotation (uses(Buildings(version="9.1.1"), Modelica(version="4.0.0"),RambollDefaults(version="1"),
      ToolchainLib(version="2.0")),                                                                       experiment(StartTime=0,StopTime=86400, __Dymola_Algorithm="Dassl"));
end Model;
