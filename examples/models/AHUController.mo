model AHUController
  parameter Modelica.Units.SI.TemperatureDifference tempDeadBand = 4;
  Buildings.Controls.OBC.CDL.Conversions.BooleanToReal booToRea annotation(
    Placement(visible = true, transformation(origin = {-70, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.PIDWithReset supFanCtrl(Ti = 10, k = 0.1) annotation(__cdl(generatePointlist=true),
    Placement(visible = true, transformation(origin = {10, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.PIDWithReset rotorCtrl(Ti = 10, k = 0.1) annotation(__cdl(generatePointlist=true),
    Placement(visible = true, transformation(origin = {-30, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.Multiply mul annotation(
    Placement(visible = true, transformation(origin = {-30, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.Multiply multiply annotation(__cdl(generatePointlist=true),
    Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  Buildings.Controls.OBC.CDL.Continuous.PIDWithReset retFanCtrl(Ti = 10, k = 0.1) annotation(
    Placement(visible = true, transformation(origin = {10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  Buildings.Controls.OBC.CDL.Interfaces.BooleanInput schedule "On/off - usually from a schedule" annotation(
    Placement(visible = true, transformation(origin = {-110, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput supPreStp annotation(
    Placement(visible = true, transformation(origin = {-110, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput retPreStp annotation(
    Placement(visible = true, transformation(origin = {-110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput supPre annotation(
    Placement(visible = true, transformation(origin = {-110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput retPre annotation(
    Placement(visible = true, transformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput supTempStp annotation(
    Placement(visible = true, transformation(origin = {-110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput supTemp annotation(
    Placement(visible = true, transformation(origin = {-110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput supFan_y annotation(
    Placement(visible = true, transformation(origin = {110, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {70, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput retFan_y annotation(
    Placement(visible = true, transformation(origin = {110, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {70, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput rotor_y annotation(
    Placement(visible = true, transformation(origin = {110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {70, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput heatingCoil_y annotation(
    Placement(visible = true, transformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput coolingCoil_y annotation(
    Placement(visible = true, transformation(origin = {110, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {70, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput damper_y annotation(
    Placement(visible = true, transformation(origin = {110, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {70, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

  
  
  Buildings.Controls.OBC.CDL.Continuous.Min min annotation(
    Placement(visible = true, transformation(origin = {10, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.Hysteresis hys(uHigh = 0.99, uLow = 0.98) annotation(
    Placement(visible = true, transformation(origin = {40, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.Switch swi annotation(
    Placement(visible = true, transformation(origin = {10, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.PIDWithReset heatingCoilCtrl(Ti = 10, k = 0.1) annotation(__cdl(generatePointlist=true),
    Placement(visible = true, transformation(origin = {-30, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.AddParameter heatingStp(p = -tempDeadBand / 2) annotation(
    Placement(visible = true, transformation(origin = {-80, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.Sources.Constant zero(k = 0) annotation(
    Placement(visible = true, transformation(origin = {-90, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.AddParameter coolingStp(p = tempDeadBand / 2) annotation(
    Placement(visible = true, transformation(origin = {-78, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Buildings.Controls.OBC.CDL.Continuous.PIDWithReset coolingCoilCtrl(Ti = 10, k = 0.1, reverseActing = false) annotation(
    Placement(visible = true, transformation(origin = {-30, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
  connect(schedule, booToRea.u) annotation(
    Line(points = {{-110, 90}, {-82, 90}}, color = {255, 0, 255}));
  connect(booToRea.y, mul.u1) annotation(
    Line(points = {{-58, 90}, {-56, 90}, {-56, 96}, {-42, 96}}, color = {0, 0, 127}));
  connect(supPreStp, mul.u2) annotation(
    Line(points = {{-110, 70}, {-52, 70}, {-52, 84}, {-42, 84}}, color = {0, 0, 127}));
  connect(mul.y, supFanCtrl.u_s) annotation(
    Line(points = {{-18, 90}, {-2, 90}}, color = {0, 0, 127}));
  connect(multiply.y, retFanCtrl.u_s) annotation(
    Line(points = {{-18, 50}, {-2, 50}}, color = {0, 0, 127}));
  connect(booToRea.y, multiply.u1) annotation(
    Line(points = {{-58, 90}, {-56, 90}, {-56, 56}, {-42, 56}}, color = {0, 0, 127}));
  connect(retPreStp, multiply.u2) annotation(
    Line(points = {{-110, 50}, {-76, 50}, {-76, 44}, {-42, 44}}, color = {0, 0, 127}));
  connect(supFanCtrl.y, supFan_y) annotation(
    Line(points = {{22, 90}, {110, 90}}, color = {0, 0, 127}));
  connect(retFanCtrl.y, retFan_y) annotation(
    Line(points = {{22, 50}, {40, 50}, {40, 70}, {110, 70}}, color = {0, 0, 127}));
  connect(supPre, supFanCtrl.u_m) annotation(
    Line(points = {{-110, 30}, {-91, 30}, {-91, 38}, {-48, 38}, {-48, 70}, {10, 70}, {10, 78}}, color = {0, 0, 127}));
  connect(retPre, retFanCtrl.u_m) annotation(
    Line(points = {{-110, 10}, {-84, 10}, {-84, 30}, {10, 30}, {10, 38}}, color = {0, 0, 127}));
  connect(schedule, supFanCtrl.trigger) annotation(
    Line(points = {{-110, 90}, {-96, 90}, {-96, 76}, {4, 76}, {4, 78}}, color = {255, 0, 255}));
  connect(schedule, retFanCtrl.trigger) annotation(
    Line(points = {{-110, 90}, {-96, 90}, {-96, 34}, {4, 34}, {4, 38}}, color = {255, 0, 255}));
  connect(schedule, rotorCtrl.trigger) annotation(
    Line(points = {{-110, 90}, {-96, 90}, {-96, 6}, {-60, 6}, {-60, -8}, {-36, -8}, {-36, -2}}, color = {255, 0, 255}));
  connect(supTemp, rotorCtrl.u_m) annotation(
    Line(points = {{-110, -30}, {-64, -30}, {-64, -14}, {-30, -14}, {-30, -2}}, color = {0, 0, 127}));
  connect(booToRea.y, min.u1) annotation(
    Line(points = {{-58, 90}, {-56, 90}, {-56, 26}, {-10, 26}, {-10, 16}, {-2, 16}}, color = {0, 0, 127}));
  connect(rotorCtrl.y, min.u2) annotation(
    Line(points = {{-18, 10}, {-10, 10}, {-10, 4}, {-2, 4}}, color = {0, 0, 127}));
  connect(min.y, rotor_y) annotation(
    Line(points = {{22, 10}, {26, 10}, {26, 30}, {110, 30}}, color = {0, 0, 127}));
  connect(min.y, hys.u) annotation(
    Line(points = {{22, 10}, {28, 10}}, color = {0, 0, 127}));
  connect(supTempStp, heatingStp.u) annotation(
    Line(points = {{-110, -10}, {-92, -10}}, color = {0, 0, 127}));
  connect(heatingStp.y, rotorCtrl.u_s) annotation(
    Line(points = {{-68, -10}, {-50, -10}, {-50, 10}, {-42, 10}}, color = {0, 0, 127}));
  connect(heatingStp.y, heatingCoilCtrl.u_s) annotation(
    Line(points = {{-68, -10}, {-60, -10}, {-60, -30}, {-42, -30}}, color = {0, 0, 127}));
  connect(supTemp, heatingCoilCtrl.u_m) annotation(
    Line(points = {{-110, -30}, {-64, -30}, {-64, -48}, {-30, -48}, {-30, -42}}, color = {0, 0, 127}));
  connect(hys.y, heatingCoilCtrl.trigger) annotation(
    Line(points = {{52, 10}, {60, 10}, {60, -16}, {-48, -16}, {-48, -44}, {-36, -44}, {-36, -42}}, color = {255, 0, 255}));
  connect(heatingCoilCtrl.y, swi.u1) annotation(
    Line(points = {{-18, -30}, {-12, -30}, {-12, -22}, {-2, -22}}, color = {0, 0, 127}));
  connect(hys.y, swi.u2) annotation(
    Line(points = {{52, 10}, {60, 10}, {60, -16}, {-8, -16}, {-8, -30}, {-2, -30}}, color = {255, 0, 255}));
  connect(zero.y, swi.u3) annotation(
    Line(points = {{-78, -90}, {-10, -90}, {-10, -38}, {-2, -38}}, color = {0, 0, 127}));
  connect(supTempStp, coolingStp.u) annotation(
    Line(points = {{-110, -10}, {-94, -10}, {-94, -60}, {-90, -60}}, color = {0, 0, 127}));
  connect(coolingStp.y, coolingCoilCtrl.u_s) annotation(
    Line(points = {{-66, -60}, {-60, -60}, {-60, -70}, {-42, -70}}, color = {0, 0, 127}));
  connect(supTemp, coolingCoilCtrl.u_m) annotation(
    Line(points = {{-110, -30}, {-64, -30}, {-64, -86}, {-30, -86}, {-30, -82}}, color = {0, 0, 127}));
  connect(swi.y, heatingCoil_y) annotation(
    Line(points = {{22, -30}, {110, -30}}, color = {0, 0, 127}));
  connect(coolingCoilCtrl.y, coolingCoil_y) annotation(
    Line(points = {{-18, -70}, {110, -70}}, color = {0, 0, 127}));
  connect(schedule, coolingCoilCtrl.trigger) annotation(
    Line(points = {{-110, 90}, {-96, 90}, {-96, -74}, {-60, -74}, {-60, -84}, {-36, -84}, {-36, -82}}, color = {255, 0, 255}));
  connect(damper_y, booToRea.y) annotation(
    Line(points = {{110, -90}, {80, -90}, {80, 66}, {-56, 66}, {-56, 90}, {-58, 90}}, color = {0, 0, 127}));
  annotation(
    Icon(graphics = {Rectangle(fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{-60, 100}, {60, -100}}), Text(origin = {0, 40}, extent = {{-60, 20}, {60, -20}}, textString = "%name")}, coordinateSystem(extent = {{-100, -100}, {100, 100}})),
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})),
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.002));
end AHUController;
