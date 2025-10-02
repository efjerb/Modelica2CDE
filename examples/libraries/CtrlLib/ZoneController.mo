within CtrlLib;
model ZoneController
  // Parameters 
  parameter Modelica.Units.SI.MassFraction co2Setpoint=800*10^(-6) annotation(__semantic(rdfType = "brick:CO2_Setpoint"));
  parameter Modelica.Units.SI.Temperature temperatureSetpoint=294.15   annotation(__semantic(rdfType = "brick:Zone_Air_Temperature_Setpoint"));
  parameter Modelica.Units.SI.TemperatureDifference tempDeadband=2 annotation(__semantic(rdfType = "brick:Temperature_Deadband_Setpoint"));
  
  // Inputs
  Buildings.Controls.OBC.CDL.Interfaces.RealInput roomTemp annotation(__semantic(rdfType = "brick:Zone_Air_Temperature_Sensor"), Placement(visible = true, transformation(origin={-110,0},    extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={-80,80},    extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput co2Level annotation(__semantic(rdfType = "brick:CO2_Level_Sensor"), Placement(visible = true, transformation(origin={-110,-80},    extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={-80,40},   extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  
  // Outputs
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput damper_y annotation (
      __semantic(rdfType="brick:Damper_Command"), Placement(
      visible=true,
      transformation(
        origin={120,10},
        extent={{-20,-20},{20,20}},
        rotation=0),
      iconTransformation(
        origin={80,80},
        extent={{-20,-20},{20,20}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput heating_y annotation (
      __semantic(rdfType="brick:Heating_Command"), Placement(
      visible=true,
      transformation(
        origin={120,60},
        extent={{-20,-20},{20,20}},
        rotation=0),
      iconTransformation(
        origin={80,40},
        extent={{-20,-20},{20,20}},
        rotation=0)));

  // Blocks
  Buildings.Controls.OBC.CDL.Reals.PID coolCtrl(
    controllerType=Buildings.Controls.OBC.CDL.Types.SimpleController.PI,                                              k = 1/3, reverseActing = false)
    if tempControl annotation (
    __cdl(generatePointlist=true), Placement(visible = true, transformation(origin={10,30},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));

  Buildings.Controls.OBC.CDL.Reals.PID co2Ctrl(controllerType = Buildings.Controls.OBC.CDL.Types.SimpleController.P, k = 1/150, reverseActing = false) if co2Control annotation (
    __cdl(generatePointlist=true), Placement(visible = true, transformation(origin={10,-20},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Reals.Max max annotation (
    __cdl(generatePointlist=true), Placement(visible = true, transformation(origin={50,10},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));

  Buildings.Controls.OBC.CDL.Reals.AddParameter addPar(p=tempDeadband/2)
    annotation (__cdl(generatePointlist=true), Placement(transformation(extent={{-60,20},{-40,40}})));
  Buildings.Controls.OBC.CDL.Reals.PID heatCtrl(
    controllerType=Buildings.Controls.OBC.CDL.Types.SimpleController.PI,
    k=1/3,
    reverseActing=true) if tempControl annotation (__cdl(generatePointlist=true), Placement(visible=true,
        transformation(
        origin={10,70},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.AddParameter addPar1(p=-tempDeadband/2)
    annotation (__cdl(generatePointlist=true), Placement(transformation(extent={{-60,60},{-40,80}})));

  Buildings.Controls.OBC.CDL.Reals.Sources.Constant co2Stp(k=co2Setpoint)   annotation (__cdl(generatePointlist=true), Placement(
        visible=true, transformation(
        origin={-60,-40},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.Sources.Constant tempStp(k=
        temperatureSetpoint)                                                         annotation (__cdl(generatePointlist=true), Placement(
        visible=true, transformation(
        origin={-90,50},
        extent={{-10,-10},{10,10}},
        rotation=0)));
equation
  connect(roomTemp,coolCtrl. u_m) annotation (
    Line(points={{-110,0},{10,0},{10,18}},       color = {0, 0, 127}));
  connect(co2Level, co2Ctrl.u_m) annotation (
    Line(points={{-110,-80},{10,-80},{10,-32}},        color = {0, 0, 127}));
  connect(coolCtrl.y, max.u1) annotation (
    Line(points={{22,30},{30,30},{30,16},{38,16}},        color = {0, 0, 127}));
  connect(co2Ctrl.y, max.u2) annotation (
    Line(points={{22,-20},{30,-20},{30,4},{38,4}},            color = {0, 0, 127}));
  connect(max.y, damper_y)
    annotation (Line(points={{62,10},{120,10}}, color={0,0,127}));
  connect(addPar.y, coolCtrl.u_s)
    annotation (Line(points={{-38,30},{-2,30}}, color={0,0,127}));
  connect(addPar1.y, heatCtrl.u_s)
    annotation (Line(points={{-38,70},{-2,70}}, color={0,0,127}));
  connect(roomTemp, heatCtrl.u_m) annotation (Line(points={{-110,0},{-20,0},{
          -20,50},{10,50},{10,58}}, color={0,0,127}));
  connect(heatCtrl.y, heating_y) annotation (Line(points={{22,70},{60,70},{60,
          60},{120,60}}, color={0,0,127}));
  connect(co2Stp.y, co2Ctrl.u_s) annotation (Line(points={{-48,-40},{-24,-40},{-24,
          -22},{-2,-22},{-2,-20}}, color={0,0,127}));
  connect(tempStp.y, addPar1.u) annotation (Line(points={{-78,50},{-70,50},{-70,
          70},{-62,70}}, color={0,0,127}));
  connect(tempStp.y, addPar.u) annotation (Line(points={{-78,50},{-70,50},{-70,30},
          {-62,30}}, color={0,0,127}));
  annotation (
    Icon(graphics={  Rectangle(fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{-60, 100}, {60, -100}}), Text(origin = {0, 40}, extent = {{-100, 20}, {100, -20}}, textString = "%name")}),
      Documentation(info="<html>
<p>Model of a zone (IBI in Danish contexts) controller, which controls the heating and ventilation in a zone, using the CO2 level and zone air temperature. The CO2 and temperature setpoints are set as a parameter in the controller. The temperature setpoint is a midpoint, and the deadband (also a parameter) defines the heating and cooling setpoints.</p>
</html>"));
end ZoneController;
