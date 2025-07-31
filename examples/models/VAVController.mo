block VAVController
  parameter Boolean tempControl = true "Does the controller use temperature control?";
  parameter Boolean co2Control=true   "Does the controller use CO2 control?";
  Buildings.Controls.OBC.CDL.Interfaces.RealInput roomTemp if tempControl annotation (
    Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)), __semantic(rdfType = "brick:Zone_Air_Temperature_Sensor"));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput roomTempStp if tempControl annotation (
    Placement(
      visible=true,
      transformation(
        origin={-110,20},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={-120,80},
        extent={{-20,-20},{20,20}},
        rotation=0)),
    __semantic(rdfType="brick:Zone_Air_Temperature_Setpoint"),
    __cdl(semantic(metadataLanguageDefinition="text/turtle" "bldg:<instanceName> a brick:Zone_Air_Temperature_Setpoint")));
  Buildings.Controls.OBC.CDL.Reals.PID tempCtrl(
    controllerType=Buildings.Controls.OBC.CDL.Types.SimpleController.P,
    k=1/3,
    reverseActing=false) if tempControl annotation (Placement(visible=true,
        transformation(
        origin={-70,20},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput co2Level if co2Control annotation (
    Placement(visible = true, transformation(origin = {-110, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)), __semantic(rdfType = "brick:CO2_Sensor"));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput co2Stp if co2Control annotation (
    Placement(visible = true, transformation(origin = {-110, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 0)), __semantic(rdfType = "brick:CO2_Setpoint"));
  Buildings.Controls.OBC.CDL.Reals.PID co2Ctrl(
    controllerType=Buildings.Controls.OBC.CDL.Types.SimpleController.P,
    k=1/150,
    reverseActing=false) if co2Control annotation (Placement(visible=true,
        transformation(
        origin={-70,-20},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.Max max annotation (Placement(visible=true,
        transformation(
        origin={-30,0},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput y annotation (
    Placement(visible = true, transformation(origin = {120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)), __semantic(rdfType = "brick:Damper_Position_Command"));
  Buildings.Controls.OBC.CDL.Reals.Sources.Constant noTempCtrl(k=0)
    if not tempControl annotation (Placement(visible=true, transformation(
        origin={-70,60},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Reals.Sources.Constant noCO2Ctrl(k=0)
    if not co2Control annotation (Placement(visible=true, transformation(
        origin={-70,-62},
        extent={{-10,-10},{10,10}},
        rotation=0)));
equation 
  connect(roomTemp, tempCtrl.u_m) annotation (
    Line(points = {{-110, 0}, {-70, 0}, {-70, 8}}, color = {0, 0, 127}));
  connect(roomTempStp, tempCtrl.u_s) annotation (
    Line(points = {{-110, 20}, {-82, 20}}, color = {0, 0, 127}));
  connect(co2Stp, co2Ctrl.u_s) annotation (
    Line(points = {{-110, -20}, {-82, -20}}, color = {0, 0, 127}));
  connect(co2Level, co2Ctrl.u_m) annotation (
    Line(points = {{-110, -40}, {-70, -40}, {-70, -32}}, color = {0, 0, 127}));
  connect(tempCtrl.y, max.u1) annotation (
    Line(points = {{-58, 20}, {-50, 20}, {-50, 6}, {-42, 6}}, color = {0, 0, 127}));
  connect(co2Ctrl.y, max.u2) annotation (
    Line(points = {{-58, -20}, {-50, -20}, {-50, -6}, {-42, -6}}, color = {0, 0, 127}));
  connect(max.y, y) annotation (
    Line(points = {{-18, 0}, {120, 0}}, color = {0, 0, 127}));
  connect(noTempCtrl.y, max.u1) annotation (
    Line(points = {{-58, 60}, {-50, 60}, {-50, 6}, {-42, 6}}, color = {0, 0, 127}));
  connect(noCO2Ctrl.y, max.u2) annotation (
    Line(points = {{-58, -62}, {-50, -62}, {-50, -6}, {-42, -6}}, color = {0, 0, 127}));
end VAVController;
