within CtrlLib;
model AHUController
  // Parameters
  parameter Modelica.Units.SI.TemperatureDifference tempDeadBand = 4 annotation(__semantic(rdfType = "brick:Temperature_Deadband_Setpoint"));
  parameter Modelica.Units.SI.PressureDifference returnPressureSetpoint annotation(__semantic(rdfType = "brick:Return_Air_Static_Pressure_Setpoint"));
  parameter Modelica.Units.SI.PressureDifference supplyPressureSetpoint annotation(__semantic(rdfType = "brick:Supply_Air_Static_Pressure_Setpoint"));
  parameter Modelica.Units.SI.Temperature supTempSetpoint=18 annotation(__semantic(rdfType = "brick:Supply_Air_Temperature_Setpoint"));
  //  Inputs
  Buildings.Controls.OBC.CDL.Interfaces.RealInput supPre annotation (
  __semantic(rdfType="brick:Supply_Air_Static_Pressure_Sensor"),
  Placement(
      visible=true,
      transformation(
        origin={-110,120},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={-70,30},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput retPre annotation (
  __semantic(rdfType="brick:Return_Air_Static_Pressure_Sensor"),
    Placement(visible = true, transformation(origin={-110,80},    extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput supTemp annotation (
  __semantic(rdfType="brick:Supply_Air_Temperature_Sensor"),
    Placement(visible = true, transformation(origin = {-110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

// Outputs
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput supFan_y annotation (
  __semantic(rdfType="brick:Fan_Command"),
  Placement(
      visible=true,
      transformation(
        origin={110,140},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={70,90},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput retFan_y annotation (
  __semantic(rdfType="brick:Fan_Command"),
  Placement(
      visible=true,
      transformation(
        origin={110,120},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={70,70},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput rotor_y annotation (
  __semantic(rdfType="brick:Speed_Command"),
  Placement(
      visible=true,
      transformation(
        origin={110,60},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={70,48},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput heatingCoil_y annotation (
  __semantic(rdfType="brick:Heating_Command"),
  Placement(
      visible=true,
      transformation(
        origin={110,-30},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={70,30},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput coolingCoil_y annotation (
  __semantic(rdfType="brick:Cooling_Command"),
  Placement(
      visible=true,
      transformation(
        origin={110,-70},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={70,10},
        extent={{-10,-10},{10,10}},
        rotation=0)));

// Blocks
  Buildings.Controls.OBC.CDL.Reals.PID          supFanCtrl(Ti=10, k=0.1)
    annotation (__cdl(generatePointlist=true), Placement(visible=true, transformation(
        origin={10,140},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.PID          rotorCtrl(Ti=10, k=0.1)
    annotation (__cdl(generatePointlist=true), Placement(visible=true, transformation(
        origin={10,40},
        extent={{-10,-10},{10,10}},
        rotation=0)));

  Buildings.Controls.OBC.CDL.Reals.PID          retFanCtrl(Ti=10, k=0.1)
    annotation (__cdl(generatePointlist=true), Placement(visible=true, transformation(
        origin={10,100},
        extent={{-10,-10},{10,10}},
        rotation=0)));

  Buildings.Controls.OBC.CDL.Reals.Hysteresis hys(uHigh=0.99, uLow=0.98)
    annotation (Placement(transformation(origin = {30, 10}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.OBC.CDL.Reals.Switch swi annotation (Placement(transformation(origin = {50, -30}, extent = {{-10, -10}, {10, 10}})));
  Buildings.Controls.OBC.CDL.Reals.PIDWithReset heatingCoilCtrl(Ti=10, k=0.1)
    annotation (__cdl(generatePointlist=true), Placement(visible=true, transformation(
        origin={10,-34},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.AddParameter heatingStp(p=-tempDeadBand/2)
    annotation (__cdl(generatePointlist=true), Placement(visible=true, transformation(
        origin={-40,40},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.Sources.Constant zero(k=0) annotation (
      __cdl(generatePointlist=true), Placement(visible=true, transformation(
        origin={-80,-120},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.AddParameter coolingStp(p=tempDeadBand/2)
    annotation (__cdl(generatePointlist=true), Placement(visible=true, transformation(
        origin={-40,-70},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.PID          coolingCoilCtrl(
    Ti=10,
    k=0.1,
    reverseActing=false) annotation (__cdl(generatePointlist=true), Placement(visible=true, transformation(
        origin={10,-70},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.Sources.Constant supPreStp(k=
        supplyPressureSetpoint) annotation (__cdl(generatePointlist=true), Placement(visible=true,
        transformation(
        origin={-80,140},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.Sources.Constant retPreStp(k=
        supplyPressureSetpoint) annotation (__cdl(generatePointlist=true), Placement(visible=true,
        transformation(
        origin={-80,100},
        extent={{-10,-10},{10,10}},
        rotation=0)));
    Buildings.Controls.OBC.CDL.Reals.Sources.Constant supTempStp(k=
        supTempSetpoint)        annotation (__cdl(generatePointlist=true), Placement(visible=true,
        transformation(
        origin={-80,40},
        extent={{-10,-10},{10,10}},
        rotation=0)));

equation
  connect(supFanCtrl.y, supFan_y) annotation (
    Line(points={{22,140},{110,140}},    color = {0, 0, 127}));
  connect(retFanCtrl.y, retFan_y) annotation (
    Line(points={{22,100},{40,100},{40,120},{110,120}},      color = {0, 0, 127}));
  connect(supPre, supFanCtrl.u_m) annotation (
    Line(points={{-110,120},{10,120},{10,128}},                                                 color = {0, 0, 127}));
  connect(retPre, retFanCtrl.u_m) annotation (
    Line(points={{-110,80},{10,80},{10,88}},                              color = {0, 0, 127}));

  connect(supTemp, rotorCtrl.u_m) annotation (
    Line(points={{-110,-30},{-24,-30},{-24,0},{10,0},{10,28}},                  color = {0, 0, 127}));

  connect(heatingStp.y, rotorCtrl.u_s) annotation (
    Line(points={{-28,40},{-2,40}},                               color = {0, 0, 127}));
  connect(hys.y, swi.u2) annotation (
    Line(points={{42,10},{42, 0}, {46, 0}, {46, -10}, {32, -10}, {32, -30},{38,-30}},                                        color = {255, 0, 255}));
  connect(heatingStp.y, heatingCoilCtrl.u_s) annotation (
    Line(points={{-28,40},{-16,40},{-16,-34},{-2,-34}},             color = {0, 0, 127}));
  connect(supTemp, heatingCoilCtrl.u_m) annotation (
    Line(points={{-110,-30},{-24,-30},{-24,-54},{10,-54},{10,-46}},              color = {0, 0, 127}));
  connect(hys.y, heatingCoilCtrl.trigger) annotation (
    Line(points={{42,10},{46, 10}, {46, -10},{-10,-10},{-10,-50},{4,-50},{4,-46}},                            color = {255, 0, 255}));
  connect(heatingCoilCtrl.y, swi.u1) annotation (
    Line(points={{22,-34},{28,-34},{28,-22},{38,-22}},             color = {0, 0, 127}));
  connect(swi.y, heatingCoil_y) annotation (
    Line(points={{62,-30},{110,-30}},      color = {0, 0, 127}));
    connect(zero.y, swi.u3) annotation (
    Line(points={{-68,-120},{30,-120},{30,-38},{38,-38}},          color = {0, 0, 127}));

  connect(coolingStp.y, coolingCoilCtrl.u_s) annotation (
    Line(points={{-28,-70},{-2,-70}},                               color = {0, 0, 127}));
  connect(supTemp, coolingCoilCtrl.u_m) annotation (
    Line(points={{-110,-30},{-80,-30},{-80,-90},{10,-90},{10,-82}},              color = {0, 0, 127}));

  connect(heatingCoil_y, heatingCoil_y)
    annotation (Line(points={{110,-30},{110,-30}}, color={0,0,127}));
  connect(supPreStp.y, supFanCtrl.u_s)
    annotation (Line(points={{-68,140},{-2,140}},
                                                color={0,0,127}));
  connect(retPreStp.y, retFanCtrl.u_s)
    annotation (Line(points={{-68,100},{-2,100}},
                                                color={0,0,127}));
  connect(rotorCtrl.y, hys.u)
    annotation (Line(points={{22,40},{27, 40}, {27, 28}, {16.5, 28}, {16.5, 10}, {18, 10}},
                                               color={0,0,127}));
  connect(rotorCtrl.y, rotor_y) annotation (Line(points={{22,40},{40,40},{40,60},
          {110,60}}, color={0,0,127}));
  connect(coolingCoilCtrl.y, coolingCoil_y)
    annotation (Line(points={{22,-70},{110,-70}}, color={0,0,127}));
  connect(supTempStp.y, heatingStp.u)
    annotation (Line(points={{-68,40},{-52,40}},   color={0,0,127}));
  connect(supTempStp.y, coolingStp.u) annotation (Line(points={{-68,40},{-60,40},
          {-60,-70},{-52,-70}}, color={0,0,127}));
  annotation (
    Icon(graphics={  Rectangle(fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{-60, 100}, {60, -100}}), Text(origin = {0, 40}, extent = {{-60, 20}, {60, -20}}, textString = "%name")}, coordinateSystem(extent={{-100,
            -160},{100,160}})),
    Diagram(coordinateSystem(extent={{-100,-160},{100,160}})),
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.002));
end AHUController;
