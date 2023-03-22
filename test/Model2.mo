model Model2 "Auto-generated model"
        
        package MediumHeating = Buildings.Media.Water(T_default=273.15+70) annotation (
            __Dymola_choicesAllMatching=true);
        package MediumCooling = Buildings.Media.Antifreeze.PropyleneGlycolWater(property_T=273.15 + 5, X_a=0.35, T_default=273.15 + 5) annotation (
            __Dymola_choicesAllMatching=true);
        package MediumVentilation = Buildings.Media.Air(extraPropertiesNames={"CO2"}) annotation (
            __Dymola_choicesAllMatching=true);
        
        Buildings.Fluid.Sources.Outside outside(
            redeclare package Medium = MediumVentilation,
            use_C_in=false,
            nPorts=0) "Outside air conditions"
            annotation (Placement(visible = true, transformation(origin = {74, -32},extent = {{-174, 62}, {-154, 82}}, rotation = 0)));
        
        Buildings.Fluid.Movers.SpeedControlled_y fan1332058(
            redeclare package Medium = MediumVentilation,
            energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
            addPowerToMedium=false,
            show_T=true,
            riseTime=120,
            per(pressure(V_flow(displayUnit="m3/s")={0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18, 0.2, 0.22, 0.24, 0.26, 0.28}, dp={438.4, 419.2, 401.2, 384.5, 370.4, 352.5, 332.6, 314.7, 283.8, 236.4, 178.0, 135.0, 86.9, 43.6}),
            use_powerCharacteristic=true,
            power(V_flow(displayUnit="m3/s")={0.02, 0.08, 0.12, 0.16, 0.2, 0.24, 0.28}, P={124.0, 142.7, 157.7, 175.7, 200.0, 221.0, 253.8})))
            annotation (__cdl(generatePointlist=true),Placement(visible = true, transformation(origin = {32, -4}, extent = {{90, 30}, {110, 50}}, rotation = 0)));
            
        ToolchainLib.PressureSensor senPre1356764(redeclare package MediumA = 
            MediumVentilation)
            annotation (__cdl(generatePointlist=true),Placement(visible = true, transformation(extent = {{-80, -20}, {-60, 0}}, rotation = 0)));
            
        ToolchainLib.PressureSensor senPre1359814(redeclare package MediumA = 
            MediumVentilation)
            annotation (__cdl(generatePointlist=true),Placement(visible = true, transformation(extent = {{-50, -20}, {-30, 0}}, rotation = 0)));
            
        Buildings.Fluid.Sensors.TemperatureTwoPort senTem1359936(redeclare package Medium = 
            MediumVentilation,
            m_flow_nominal=0.2016,
            transferHeat=true,
            TAmb=294.15,
            tauHeaTra=600)
            annotation (__cdl(generatePointlist=true),Placement(visible = true, transformation(origin = {-60, -36}, extent = {{28, -26}, {48, -6}}, rotation = 0)));
        
        Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage motVal1151719(
            redeclare package Medium = MediumHeating, 
            m_flow_nominal= 0.05862,
            CvData=Buildings.Fluid.Types.CvTypes.Kv,
            Kv=1.6)
            annotation (__cdl(generatePointlist=true),Placement(visible = true, transformation(extent = {{70, -44}, {90, -24}}, rotation = 0)));
        
        Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage motVal1304448(
            redeclare package Medium = MediumCooling, 
            m_flow_nominal= 0.04,
            CvData=Buildings.Fluid.Types.CvTypes.Kv,
            Kv=1.6)
            annotation (__cdl(generatePointlist=true),Placement(visible = true, transformation(extent = {{140, -60}, {160, -40}}, rotation = 0)));
 Buildings.Fluid.Movers.SpeedControlled_y fan1331423(addPowerToMedium = false, energyDynamics = Modelica.Fluid.Types.Dynamics.SteadyState, per(pressure(V_flow(displayUnit = "m3/s") = {0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18, 0.2, 0.22, 0.24, 0.26, 0.28}, dp = {438.4, 419.2, 401.2, 384.5, 370.4, 352.5, 332.6, 314.7, 283.8, 236.4, 178.0, 135.0, 86.9, 43.6}), use_powerCharacteristic = true, power(V_flow(displayUnit = "m3/s") = {0.02, 0.08, 0.12, 0.16, 0.2, 0.24, 0.28}, P = {124.0, 142.7, 157.7, 175.7, 200.0, 221.0, 253.8})), riseTime = 120, show_T = true) annotation(__cdl(generatePointlist=true),
    Placement(visible = true, transformation(origin = {178, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 RambollDefaults.Ventilation.Controls.AHUController2 aHUController annotation(__cdl(generatePointlist=true),
    Placement(visible = true, transformation(origin = {-2, 68}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
    equation
  connect(aHUController.supFan_y, fan1331423.y) annotation(
    Line(points = {{11, 84}, {178, 84}, {178, 56}}, color = {0, 0, 127}));
 connect(aHUController.retFan_y, fan1332058.y) annotation(
    Line(points = {{11, 81}, {132, 81}, {132, 48}}, color = {0, 0, 127}));
 connect(aHUController.retPre, senPre1359814.statPres) annotation(
    Line(points = {{-15, 70}, {-40, 70}, {-40, 1}}, color = {0, 0, 127}));
 connect(aHUController.supPre, senPre1356764.statPres) annotation(
    Line(points = {{-15, 73}, {-70, 73}, {-70, 1}}, color = {0, 0, 127}));
 connect(aHUController.supTemp, senTem1359936.T) annotation(
    Line(points = {{-15, 59}, {-36, 59}, {-36, 14}, {-22, 14}, {-22, -41}}, color = {0, 0, 127}));
 connect(aHUController.heatingCoil_y, motVal1304448.y) annotation(
    Line(points = {{11, 73}, {80, 73}, {80, 10}, {150, 10}, {150, -38}}, color = {0, 0, 127}));
 connect(aHUController.coolingCoil_y, motVal1151719.y) annotation(
    Line(points = {{11, 70}, {64, 70}, {64, -8}, {80, -8}, {80, -22}}, color = {0, 0, 127}));
        annotation(
    experiment(StartTime = 0, StopTime = 86400, __Dymola_Algorithm = "Dassl"),
    uses(ToolchainLib, RambollDefaults, Buildings(version = "9.0.0")));
      end Model2;
