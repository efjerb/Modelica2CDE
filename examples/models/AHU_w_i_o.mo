within ;
model AHU_w_i_o
  extends RambollDefaults.Ventilation.K08_H06_M57_N101_BaseClass;
  Buildings.Controls.OBC.CDL.Interfaces.RealInput supFanSpeed annotation (
    Placement(visible = true, transformation(origin = {-210, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {40, -120}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput retFanSpeed annotation (
    Placement(visible = true, transformation(origin = {-210, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-140, 120}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput supAirTemp annotation (
    Placement(visible = true, transformation(origin = {210, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {170, 20}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput retAirTemp annotation (
    Placement(visible = true, transformation(origin = {210, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {40, 120}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput exhaustAirTemp annotation (
    Placement(visible = true, transformation(origin = {210, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 120}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Buildings.Controls.OBC.CDL.Interfaces.RealInput heatCoil_y annotation (
      Placement(
      visible=true,
      transformation(
        origin={20,-110},
        extent={{-10,-10},{10,10}},
        rotation=90),
      iconTransformation(
        origin={110,-120},
        extent={{-20,-20},{20,20}},
        rotation=90)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput supAirPre annotation (
      Placement(
      visible=true,
      transformation(
        origin={210,-70},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={220,-80},
        extent={{-20,-20},{20,20}},
        rotation=0)));
  Buildings.Controls.OBC.CDL.Interfaces.RealOutput retAirPre annotation (
      Placement(
      visible=true,
      transformation(
        origin={210,10},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={100,20},
        extent={{-20,-20},{20,20}},
        rotation=0)));
equation
  connect(supFanSpeed, supFan.y) annotation (
    Line(points = {{-210, 90}, {150, 90}, {150, -18}}, color = {0, 0, 127}));
  connect(retFanSpeed, retFan.y) annotation (
    Line(points = {{-210, 70}, {-80, 70}, {-80, 42}}, color = {0, 0, 127}));
  connect(bta104.T, supAirTemp) annotation (
    Line(points={{180,-19},{180,90},{210,90}},        color = {0, 0, 127}));
  connect(bta501.T, retAirTemp) annotation (
    Line(points={{30,41},{30,70},{210,70}},        color = {0, 0, 127}));
  connect(bta502.T, exhaustAirTemp) annotation (
    Line(points={{-50,41},{-50,50},{210,50}},        color = {0, 0, 127}));
annotation (
    Icon(graphics={  Text(origin = {-170, 108}, lineColor = {0, 0, 127}, extent = {{-22, 10}, {22, -10}}, textString = "retFanSpeed"), Text(origin = {-130, -110}, lineColor = {0, 0, 127}, extent = {{-22, 10}, {22, -10}}, textString = "damperPosition"), Text(origin = {-60, 110}, lineColor = {0, 0, 127}, extent = {{-22, 10}, {22, -10}}, textString = "rotorSpeed"), Text(origin = {0, -110}, lineColor = {0, 0, 127}, extent = {{-22, 10}, {22, -10}}, textString = "supFanSpeed"),
                                                                                                                                                                                                        Text(origin={138,-110},  lineColor={0,0,127},     extent={{-18,10},
              {18,-10}},
          textString="heatCoil_y")}),                                                                                                                                                                                                        __cdl(generatePointlist=true),
    Documentation(info="<html>
<p>Model of an AHU with a water-based heating and cooling coil, and a rotary heat exchanger.</p>
<p>The rotary heat exchanger does not consider moisture exchange.</p>
<p>For succesful simulation, there must be a pressure drop across all flow streams (vent. supply, vent. return, heating and cooling)!</p>
</html>"),
    uses(RambollDefaults(version="1"), Buildings(version="9.1.1")));
end AHU_w_i_o;
