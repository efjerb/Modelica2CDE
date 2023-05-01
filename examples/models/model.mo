model Model "Auto-generated model"
      
        Buildings.Fluid.Actuators.Dampers.Exponential motDamp866580(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.0504,
            dpDamper_nominal=20.84)
			annotation (Placement(transformation(extent={{0,0},{20,20}})), _CDE(id=866580), __cdl(generatePointlist=true));

        Buildings.Fluid.Actuators.Dampers.Exponential motDamp869789(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.0504,
            dpDamper_nominal=9.68)
			annotation (Placement(transformation(extent={{30,0},{50,20}})), _CDE(id=869789), __cdl(generatePointlist=true));

        ToolchainLib.Radiator rad1131635(
            redeclare package Medium = MediumHeating,
            rad(
            Q_flow_nominal=400.00000000000006,
            T_a_nominal=343.15,
            T_b_nominal=313.15,
            
            
            dp_nominal=1000.0,
            TAir_nominal=293.15))
			annotation (Placement(transformation(extent={{90,0},{110,20}})), _CDE(id="1131635"), __cdl(generatePointlist=true));

        ToolchainLib.RoomDetachedDetailedProfile room1333984(redeclare package MediumA = 
            MediumVentilation,
            nPersons = 6)
			annotation (Placement(visible = true, transformation(origin = {-48, -18}, extent = {{0, -30}, {20, -10}}, rotation = 0)), _CDE(id=1333984), __cdl(generatePointlist=true));
  RambollDefaults.Ventilation.Controls.VAVController_type2 vAVController_type2 annotation(
    Placement(visible = true, transformation(origin = {-42, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)), __cdl(generatePointlist=true));
  Buildings.Controls.OBC.CDL.Continuous.Sources.Constant tempStp annotation(
    Placement(visible = true, transformation(origin = {-88, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.Sources.Constant co2Stp annotation(
    Placement(visible = true, transformation(origin = {-90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));	equation
  connect(vAVController_type2.y, motDamp866580.y) annotation(
    Line(points = {{-30, 10}, {-24, 10}, {-24, 44}, {10, 44}, {10, 22}}, color = {0, 0, 127}));
  connect(vAVController_type2.roomTemp, room1333984.airTemp) annotation(
    Line(points = {{-54, 8}, {-92, 8}, {-92, -18}, {-14, -18}, {-14, -25}, {-21, -25}}, color = {0, 0, 127}));
  connect(vAVController_type2.co2Level, room1333984.co2Level) annotation(
    Line(points = {{-54, 2}, {-96, 2}, {-96, -70}, {-6, -70}, {-6, -29}, {-21, -29}}, color = {0, 0, 127}));
  connect(tempStp.y, vAVController_type2.roomTempStp) annotation(
    Line(points = {{-76, 48}, {-68, 48}, {-68, 10}, {-54, 10}}, color = {0, 0, 127}));
  connect(co2Stp.y, vAVController_type2.co2Stp) annotation(
    Line(points = {{-78, 20}, {-72, 20}, {-72, 4}, {-54, 4}}, color = {0, 0, 127}));
  connect(vAVController_type2.y, motDamp869789.y) annotation(
    Line(points = {{-30, 10}, {-24, 10}, {-24, 46}, {40, 46}, {40, 22}}, color = {0, 0, 127}));
      annotation(
    uses(Buildings(version = "9.0.0")));
end Model;
