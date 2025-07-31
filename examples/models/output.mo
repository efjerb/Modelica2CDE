 within Auto_Generated;
      model Model "Auto-generated model"
        
        package MediumHeating = Buildings.Media.Water(T_default=273.15+70) annotation (
            __Dymola_choicesAllMatching=true);
        package MediumCooling = Buildings.Media.Antifreeze.PropyleneGlycolWater(property_T=273.15 + 5, X_a=0.35, T_default=273.15 + 5) annotation (
            __Dymola_choicesAllMatching=true);
        package MediumVentilation = Buildings.Media.Air(extraPropertiesNames={"CO2"}) annotation (
            __Dymola_choicesAllMatching=true);
        
        Buildings.Fluid.Actuators.Dampers.Exponential motDampHTR8_ETS01_1(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.333333,
            dpDamper_nominal=0.64)
			annotation (Placement(transformation(extent={{0,0},{20,20}})), _CDE(id="inst:HTR8_ETS01_1"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDampHTR8_ETS01_2(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 1.333333,
            dpDamper_nominal=6.72)
			annotation (Placement(transformation(extent={{60,0},{80,20}})), _CDE(id="inst:HTR8_ETS01_2"));

        RambollDefaults.Ventilation.K08_H06_M57_N101_ExternalControl ahuHTR9_VEN02(
        redeclare package MediumW = MediumHeating,
        redeclare package MediumA = MediumVentilation,
        redeclare package MediumC = MediumCooling)
			annotation (Placement(transformation(extent={{210,180},{230,200}})), _CDE(id="inst:HTR9_VEN02"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049075c(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.333333,
            dh=0.400000000608,
            length=0.784841188563041)
			annotation (Placement(transformation(extent={{180,0},{200,20}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049075c"));

        Buildings.Fluid.FixedResistances.PressureDrop bendebcf0139_4bfc_4dab_8138_8164b02a410f_004b1180(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.3333333333333336,
            dp_nominal=0.6045)
			annotation (Placement(transformation(extent={{210,0},{230,20}})), _CDE(id="inst:ebcf0139-4bfc-4dab-8138-8164b02a410f-004b1180"));

        Buildings.Fluid.FixedResistances.Junction tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd4(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.333333,0.0012,-1.666667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{240,0},{260,20}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cd4"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909ba(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.666667,
            dh=0.545454546283636,
            length=1.01451724191175)
			annotation (Placement(transformation(extent={{0,30},{20,50}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004909ba"));

        Buildings.Fluid.FixedResistances.PressureDrop gen4f00b934_a44d_40f7_8241_64f04c45343d_0066e509(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{30,30},{50,50}})), _CDE(id="inst:4f00b934-a44d-40f7-8241-64f04c45343d-0066e509"));

        Buildings.Fluid.FixedResistances.PressureDrop bend4f00b934_a44d_40f7_8241_64f04c45343d_0066e68b(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 1.6666666666666679,
            dp_nominal=15.6896)
			annotation (Placement(transformation(extent={{60,30},{80,50}})), _CDE(id="inst:4f00b934-a44d-40f7-8241-64f04c45343d-0066e68b"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909d1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.666667,
            dh=0.600000000456,
            length=1.11249271957491)
			annotation (Placement(transformation(extent={{90,30},{110,50}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004909d1"));

        Buildings.Fluid.FixedResistances.PressureDrop redba897980_5115_4b31_927c_2dab0f8d7279_006362e4(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 1.6666666666666679,
            dp_nominal=3.3538)
			annotation (Placement(transformation(extent={{120,30},{140,50}})), _CDE(id="inst:ba897980-5115-4b31-927c-2dab0f8d7279-006362e4"));

        Buildings.Fluid.FixedResistances.PressureDrop cap940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{150,30},{170,50}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cd2"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd6(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.333333,
            dh=0.400000000608,
            length=0.226000000000112)
			annotation (Placement(transformation(extent={{180,30},{200,50}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cd6"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cda(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.3333333333333336,
            dp_nominal=0.6045)
			annotation (Placement(transformation(extent={{210,30},{230,50}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cda"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cdc(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.333333,
            dh=0.400000000608,
            length=8.65827310951232)
			annotation (Placement(transformation(extent={{240,30},{260,50}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cdc"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911cd(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.333333,
            dh=0.50000000076,
            length=0.206952243927778)
			annotation (Placement(transformation(extent={{0,60},{20,80}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911cd"));

        Buildings.Fluid.FixedResistances.Junction tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492748(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={1.333333,0.0012,-1.666667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{30,60},{50,80}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492748"));

        Buildings.Fluid.FixedResistances.PressureDrop term940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049273f(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.666667,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{60,60},{80,80}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049273f"));

        Buildings.Fluid.FixedResistances.PressureDrop bend8d173b06_c167_4240_9613_bdeab7069a65_0072c146(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.666666666666666,
            dp_nominal=4.1427)
			annotation (Placement(transformation(extent={{90,60},{110,80}})), _CDE(id="inst:8d173b06-c167-4240-9613-bdeab7069a65-0072c146"));

        Buildings.Fluid.FixedResistances.PressureDrop red940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492741(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 1.333333333333332,
            dp_nominal=1.1746)
			annotation (Placement(transformation(extent={{120,60},{140,80}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492741"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg2e868801_e24b_4667_b393_4e3be4c80bde_00638f03(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.333333,
            dh=0.61538461632,
            length=0.385609109346166)
			annotation (Placement(transformation(extent={{150,60},{170,80}})), _CDE(id="inst:2e868801-e24b-4667-b393-4e3be4c80bde-00638f03"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492743(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.333333,
            dh=0.50000000076,
            length=0.199998262710959)
			annotation (Placement(transformation(extent={{180,60},{200,80}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492743"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492773(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.333333,
            dh=0.400000000608,
            length=0.761603825448395)
			annotation (Placement(transformation(extent={{210,60},{230,80}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492773"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492747_seg1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.666667,
            dh=0.61538461632,
            length=0.352492766031632)
			annotation (Placement(transformation(extent={{240,60},{260,80}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492747-seg1"));

        Buildings.Fluid.FixedResistances.Junction tee8d173b06_c167_4240_9613_bdeab7069a65_0072bfaf(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-1.333333,0.0012,0.666667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{0,90},{20,110}})), _CDE(id="inst:8d173b06-c167-4240-9613-bdeab7069a65-0072bfaf"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492747_seg2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.333333,
            dh=0.61538461632,
            length=0.60000000070967)
			annotation (Placement(transformation(extent={{30,90},{50,110}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492747-seg2"));

        Buildings.Fluid.FixedResistances.Junction tee8d173b06_c167_4240_9613_bdeab7069a65_0072c136(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-1.333333,0.0012,0.666667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{60,90},{80,110}})), _CDE(id="inst:8d173b06-c167-4240-9613-bdeab7069a65-0072c136"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492747_seg3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.333333,
            dh=0.61538461632,
            length=0.65189812391253)
			annotation (Placement(transformation(extent={{90,90},{110,110}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492747-seg3"));

        Buildings.Fluid.FixedResistances.PressureDrop gen2e868801_e24b_4667_b393_4e3be4c80bde_00638e73(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{120,90},{140,110}})), _CDE(id="inst:2e868801-e24b-4667-b393-4e3be4c80bde-00638e73"));

        Buildings.Fluid.FixedResistances.PressureDrop cap940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492752(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{150,90},{170,110}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492752"));

        Buildings.Fluid.FixedResistances.PressureDrop term940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049274e(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.666667,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{180,90},{200,110}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049274e"));

        Buildings.Fluid.FixedResistances.PressureDrop bend8d173b06_c167_4240_9613_bdeab7069a65_0072c16e(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.666666666666666,
            dp_nominal=4.1427)
			annotation (Placement(transformation(extent={{210,90},{230,110}})), _CDE(id="inst:8d173b06-c167-4240-9613-bdeab7069a65-0072c16e"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049276d(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.333333,
            dh=0.400000000608,
            length=0.811015447343177)
			annotation (Placement(transformation(extent={{240,90},{260,110}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049276d"));

        Buildings.Fluid.FixedResistances.Junction teecb27adb2_7c23_413c_9092_d6d0a180c7c9_0072bd57(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-0.333333,0.0012,0.333333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{0,120},{20,140}})), _CDE(id="inst:cb27adb2-7c23-413c-9092-d6d0a180c7c9-0072bd57"));

        Buildings.Fluid.FixedResistances.PressureDrop genc9f0dda1_788e_431d_bc9b_01d3704d965e_00664c67(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{30,120},{50,140}})), _CDE(id="inst:c9f0dda1-788e-431d-bc9b-01d3704d965e-00664c67"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049276f(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.333333,
            dh=0.400000000608,
            length=0.272595552143075)
			annotation (Placement(transformation(extent={{60,120},{80,140}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049276f"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492771(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.3333333333333336,
            dp_nominal=0.6045)
			annotation (Placement(transformation(extent={{90,120},{110,140}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492771"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492775(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.3333333333333336,
            dp_nominal=0.6045)
			annotation (Placement(transformation(extent={{120,120},{140,140}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492775"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segc9f0dda1_788e_431d_bc9b_01d3704d965e_00664c64(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.333333,
            dh=0.400000000608,
            length=0.273353399968622)
			annotation (Placement(transformation(extent={{150,120},{170,140}})), _CDE(id="inst:c9f0dda1-788e-431d-bc9b-01d3704d965e-00664c64"));

        Buildings.Fluid.FixedResistances.PressureDrop genba897980_5115_4b31_927c_2dab0f8d7279_00637725(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{180,120},{200,140}})), _CDE(id="inst:ba897980-5115-4b31-927c-2dab0f8d7279-00637725"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e50b_seg1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.333333,
            dh=0.5454545462836363,
            length=0.389482758392254)
			annotation (Placement(transformation(extent={{210,120},{230,140}})), _CDE(id="inst:4f00b934-a44d-40f7-8241-64f04c45343d-0066e50b-seg1"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e50b_seg2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.5454545462836363,
            length=0.0500000000760059)
			annotation (Placement(transformation(extent={{240,120},{260,140}})), _CDE(id="inst:4f00b934-a44d-40f7-8241-64f04c45343d-0066e50b-seg2"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e50b_seg3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.5454545462836363,
            length=0.293448501486597)
			annotation (Placement(transformation(extent={{0,150},{20,170}})), _CDE(id="inst:4f00b934-a44d-40f7-8241-64f04c45343d-0066e50b-seg3"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segbeb16037_64e2_4119_9b35_9d9558e2f45f_00714dab_seg1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.333333,
            dh=0.600000000912,
            length=0.250030480477731)
			annotation (Placement(transformation(extent={{30,150},{50,170}})), _CDE(id="inst:beb16037-64e2-4119-9b35-9d9558e2f45f-00714dab-seg1"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segbeb16037_64e2_4119_9b35_9d9558e2f45f_00714dab_seg2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.600000000912,
            length=0.317499999522279)
			annotation (Placement(transformation(extent={{60,150},{80,170}})), _CDE(id="inst:beb16037-64e2-4119-9b35-9d9558e2f45f-00714dab-seg2"));

        Buildings.Fluid.FixedResistances.PressureDrop capbeb16037_64e2_4119_9b35_9d9558e2f45f_00714e22(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{90,150},{110,170}})), _CDE(id="inst:beb16037-64e2-4119-9b35-9d9558e2f45f-00714e22"));

        Buildings.Fluid.FixedResistances.PressureDrop red8d173b06_c167_4240_9613_bdeab7069a65_0072ce90(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.3333333333333336,
            dp_nominal=0.0)
			annotation (Placement(transformation(extent={{120,150},{140,170}})), _CDE(id="inst:8d173b06-c167-4240-9613-bdeab7069a65-0072ce90"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg8d173b06_c167_4240_9613_bdeab7069a65_0072beae(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.666667,
            dh=0.50000000076,
            length=0.422297775288686)
			annotation (Placement(transformation(extent={{150,150},{170,170}})), _CDE(id="inst:8d173b06-c167-4240-9613-bdeab7069a65-0072beae"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg8d173b06_c167_4240_9613_bdeab7069a65_0072bf6d(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.666667,
            dh=0.50000000076,
            length=0.422297774529257)
			annotation (Placement(transformation(extent={{180,150},{200,170}})), _CDE(id="inst:8d173b06-c167-4240-9613-bdeab7069a65-0072bf6d"));

        Buildings.Fluid.FixedResistances.PressureDrop term8d173b06_c167_4240_9613_bdeab7069a65_0072cceb(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.333333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{210,150},{230,170}})), _CDE(id="inst:8d173b06-c167-4240-9613-bdeab7069a65-0072cceb"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_01_VAV01_1(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.12,
            dpDamper_nominal=0.89)
			annotation (Placement(transformation(extent={{240,150},{260,170}})), _CDE(id="inst:R08.01_VAV01_1"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_07_VAV01_1(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.178333,
            dpDamper_nominal=5.45)
			annotation (Placement(transformation(extent={{30,180},{50,200}})), _CDE(id="inst:R08.07_VAV01_1"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_07_VAV01_2(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.178333,
            dpDamper_nominal=5.45)
			annotation (Placement(transformation(extent={{90,180},{110,200}})), _CDE(id="inst:R08.07_VAV01_2"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDampR08_07_VAV01_3(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.178333,
            dpDamper_nominal=5.45)
			annotation (Placement(transformation(extent={{150,180},{170,200}})), _CDE(id="inst:R08.07_VAV01_3"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490760(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.535,
            dh=0.400000000608,
            length=0.22600000000042)
			annotation (Placement(transformation(extent={{0,210},{20,230}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490760"));

        Buildings.Fluid.FixedResistances.PressureDrop bend269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c27e4(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.5349999999999996,
            dp_nominal=1.4257)
			annotation (Placement(transformation(extent={{30,210},{50,230}})), _CDE(id="inst:269d15da-04b7-4025-8d8d-b5c9fc5a557a-006c27e4"));

        Buildings.Fluid.FixedResistances.PressureDrop bendebcf0139_4bfc_4dab_8138_8164b02a410f_004b116c(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.5349999999999996,
            dp_nominal=1.4257)
			annotation (Placement(transformation(extent={{60,210},{80,230}})), _CDE(id="inst:ebcf0139-4bfc-4dab-8138-8164b02a410f-004b116c"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490762(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.535,
            dh=0.400000000608,
            length=1.22194881754651)
			annotation (Placement(transformation(extent={{90,210},{110,230}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490762"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490826(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.333333,
            dh=0.50000000076,
            length=0.768999999924211)
			annotation (Placement(transformation(extent={{120,210},{140,230}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490826"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004908b3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=1.27034287169058)
			annotation (Placement(transformation(extent={{150,210},{170,230}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004908b3"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00491293(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.12,
            dp_nominal=2.6466)
			annotation (Placement(transformation(extent={{180,210},{200,230}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00491293"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ca(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.12,
            dp_nominal=0.5731)
			annotation (Placement(transformation(extent={{210,210},{230,230}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911ca"));

        Buildings.Fluid.FixedResistances.PressureDrop gen4f00b934_a44d_40f7_8241_64f04c45343d_0066e586(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{240,210},{260,230}})), _CDE(id="inst:4f00b934-a44d-40f7-8241-64f04c45343d-0066e586"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909cd(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.868333,
            dh=0.545454545906777,
            length=1.14270222418258)
			annotation (Placement(transformation(extent={{0,240},{20,260}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004909cd"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909cf(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 1.868333300781252,
            dp_nominal=19.3256)
			annotation (Placement(transformation(extent={{30,240},{50,260}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004909cf"));

        Buildings.Fluid.FixedResistances.PressureDrop redba897980_5115_4b31_927c_2dab0f8d7279_00635fa6(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 1.868333300781252,
            dp_nominal=5.1133)
			annotation (Placement(transformation(extent={{60,240},{80,260}})), _CDE(id="inst:ba897980-5115-4b31-927c-2dab0f8d7279-00635fa6"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909ce(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.868333,
            dh=0.545454545906777,
            length=0.0650494925667976)
			annotation (Placement(transformation(extent={{90,240},{110,260}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004909ce"));

        Buildings.Fluid.FixedResistances.PressureDrop bend4f00b934_a44d_40f7_8241_64f04c45343d_0066e649(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 1.868333300781252,
            dp_nominal=19.3256)
			annotation (Placement(transformation(extent={{120,240},{140,260}})), _CDE(id="inst:4f00b934-a44d-40f7-8241-64f04c45343d-0066e649"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.400000000608,
            length=3.79256856848389)
			annotation (Placement(transformation(extent={{150,240},{170,260}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cd0-seg1"));

        Buildings.Fluid.FixedResistances.Junction tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492799(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-0.0012,0.666667,-0.166667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{180,240},{200,260}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492799"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.400000000608,
            length=0.109999999999992)
			annotation (Placement(transformation(extent={{210,240},{230,260}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cd0-seg2"));

        Buildings.Fluid.FixedResistances.Junction teede757268_ae7f_4271_9846_adbe8ec919b3_004acc59(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-0.0012,0.666667,-0.166667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{240,240},{260,260}})), _CDE(id="inst:de757268-ae7f-4271-9846-adbe8ec919b3-004acc59"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.400000000608,
            length=0.190000000000035)
			annotation (Placement(transformation(extent={{0,270},{20,290}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cd0-seg3"));

        Buildings.Fluid.FixedResistances.Junction tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049278e(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-0.0012,0.666667,-0.166667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{30,270},{50,290}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049278e"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg4(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.400000000608,
            length=0.050000000000006)
			annotation (Placement(transformation(extent={{60,270},{80,290}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cd0-seg4"));

        Buildings.Fluid.FixedResistances.Junction teede757268_ae7f_4271_9846_adbe8ec919b3_004acc5d(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-0.0012,0.666667,-0.166667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{90,270},{110,290}})), _CDE(id="inst:de757268-ae7f-4271-9846-adbe8ec919b3-004acc5d"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg5(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.400000000608,
            length=0.137431431516079)
			annotation (Placement(transformation(extent={{120,270},{140,290}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cd0-seg5"));

        Buildings.Fluid.FixedResistances.PressureDrop cap43c5ea64_f071_41d7_8fc9_71fbb8bec110_00725cec(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{150,270},{170,290}})), _CDE(id="inst:43c5ea64-f071-41d7-8fc9-71fbb8bec110-00725cec"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911a8(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.333333,
            dh=0.50000000076,
            length=1.19528203230279)
			annotation (Placement(transformation(extent={{180,270},{200,290}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911a8"));

        Buildings.Fluid.FixedResistances.PressureDrop red940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049283a(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 1.333333300781244,
            dp_nominal=0.0)
			annotation (Placement(transformation(extent={{210,270},{230,290}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049283a"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b1(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 1.333333300781244,
            dp_nominal=3.217)
			annotation (Placement(transformation(extent={{240,270},{260,290}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b1"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ab_seg1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.50000000076,
            length=0.256930242423671)
			annotation (Placement(transformation(extent={{0,300},{20,320}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911ab-seg1"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ab_seg2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.166667,
            dh=0.50000000076,
            length=0.396151214682566)
			annotation (Placement(transformation(extent={{30,300},{50,320}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911ab-seg2"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ad(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 1.1666666381835935,
            dp_nominal=2.5189)
			annotation (Placement(transformation(extent={{60,300},{80,320}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911ad"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b4(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=0.932999999999999)
			annotation (Placement(transformation(extent={{90,300},{110,320}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b4"));

        Buildings.Fluid.FixedResistances.PressureDrop gencf9f750a_ea51_41cb_ab4c_788bc890f2c6_006c2f9a(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{120,300},{140,320}})), _CDE(id="inst:cf9f750a-ea51-41cb-ab4c-788bc890f2c6-006c2f9a"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.400000000608,
            length=0.523466671133275)
			annotation (Placement(transformation(extent={{150,300},{170,320}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b6-seg1"));

        Buildings.Fluid.FixedResistances.Junction teee246c92d_8b9b_4241_9f8e_8c63254bc791_0055d176(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.535,-0.0012,-0.178333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{180,300},{200,320}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d176"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.535,
            dh=0.400000000608,
            length=2.5)
			annotation (Placement(transformation(extent={{210,300},{230,320}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b6-seg2"));

        Buildings.Fluid.FixedResistances.Junction teee246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11c(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.535,-0.0012,-0.178333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{240,300},{260,320}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d11c"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.535,
            dh=0.400000000608,
            length=2.3)
			annotation (Placement(transformation(extent={{0,330},{20,350}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b6-seg3"));

        Buildings.Fluid.FixedResistances.Junction tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049231f(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.535,-0.0012,-0.178333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{30,330},{50,350}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049231f"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg4(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.535,
            dh=0.400000000608,
            length=0.601024336834744)
			annotation (Placement(transformation(extent={{60,330},{80,350}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b6-seg4"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492300(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.5349999999999996,
            dp_nominal=0.7784)
			annotation (Placement(transformation(extent={{90,330},{110,350}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492300"));

        Buildings.Fluid.FixedResistances.PressureDrop cap43c5ea64_f071_41d7_8fc9_71fbb8bec110_00725cf6(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{120,330},{140,350}})), _CDE(id="inst:43c5ea64-f071-41d7-8fc9-71fbb8bec110-00725cf6"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b8_seg1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.400000000608,
            length=1.09329777568047)
			annotation (Placement(transformation(extent={{150,330},{170,350}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b8-seg1"));

        Buildings.Fluid.FixedResistances.Junction teede757268_ae7f_4271_9846_adbe8ec919b3_004acc61(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-0.535,0.535,-0.0012},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{180,330},{200,350}})), _CDE(id="inst:de757268-ae7f-4271-9846-adbe8ec919b3-004acc61"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b8_seg2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.535,
            dh=0.400000000608,
            length=0.643598195182268)
			annotation (Placement(transformation(extent={{210,330},{230,350}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b8-seg2"));

        Buildings.Fluid.FixedResistances.PressureDrop bend269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c284c(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.5349999999999996,
            dp_nominal=6.5096)
			annotation (Placement(transformation(extent={{240,330},{260,350}})), _CDE(id="inst:269d15da-04b7-4025-8d8d-b5c9fc5a557a-006c284c"));

        Buildings.Fluid.FixedResistances.PressureDrop bend269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c284f(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.5349999999999996,
            dp_nominal=0.7784)
			annotation (Placement(transformation(extent={{0,360},{20,380}})), _CDE(id="inst:269d15da-04b7-4025-8d8d-b5c9fc5a557a-006c284f"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911be(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=0.279485608433341)
			annotation (Placement(transformation(extent={{30,360},{50,380}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911be"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00491268(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.12,
            dp_nominal=0.2909)
			annotation (Placement(transformation(extent={{60,360},{80,380}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00491268"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911c2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=1.43229204609824)
			annotation (Placement(transformation(extent={{90,360},{110,380}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911c2"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049126b(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.12,
            dp_nominal=0.5731)
			annotation (Placement(transformation(extent={{120,360},{140,380}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049126b"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911c4(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=0.269999998479851)
			annotation (Placement(transformation(extent={{150,360},{170,380}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911c4"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00491290(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=0.206999998479937)
			annotation (Placement(transformation(extent={{180,360},{200,380}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00491290"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049275f(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.12,
            dp_nominal=0.5731)
			annotation (Placement(transformation(extent={{210,360},{230,380}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049275f"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004922fa(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.535,
            dh=0.400000000608,
            length=1.38285023920153)
			annotation (Placement(transformation(extent={{240,360},{260,380}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004922fa"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492316(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.0918239155368234)
			annotation (Placement(transformation(extent={{0,390},{20,410}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492316"));

        Buildings.Fluid.FixedResistances.PressureDrop gene246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0b3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{30,390},{50,410}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d0b3"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049231d(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.179435560156577)
			annotation (Placement(transformation(extent={{60,390},{80,410}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049231d"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492319(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.201764949147362)
			annotation (Placement(transformation(extent={{90,390},{110,410}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492319"));

        Buildings.Fluid.FixedResistances.PressureDrop bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0a9(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.1783333333333332,
            dp_nominal=0.9831)
			annotation (Placement(transformation(extent={{120,390},{140,410}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d0a9"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg69ec72a1_886f_4162_9566_0e59020e8370_00604eb3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=0.664310462746351)
			annotation (Placement(transformation(extent={{150,390},{170,410}})), _CDE(id="inst:69ec72a1-886f-4162-9566-0e59020e8370-00604eb3"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.50000000076,
            length=0.611659183699785)
			annotation (Placement(transformation(extent={{180,390},{200,410}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492327-seg1"));

        Buildings.Fluid.FixedResistances.Junction tee42feaa49_c60d_42d2_b24a_0870fde19080_006c2630(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={1.166667,-0.666667,-0.166667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{210,390},{230,410}})), _CDE(id="inst:42feaa49-c60d-42d2-b24a-0870fde19080-006c2630"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.166667,
            dh=0.50000000076,
            length=1.6)
			annotation (Placement(transformation(extent={{240,390},{260,410}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492327-seg2"));

        Buildings.Fluid.FixedResistances.Junction tee42feaa49_c60d_42d2_b24a_0870fde19080_006c2645(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={1.166667,-0.666667,-0.166667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{0,420},{20,440}})), _CDE(id="inst:42feaa49-c60d-42d2-b24a-0870fde19080-006c2645"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.166667,
            dh=0.50000000076,
            length=1.6)
			annotation (Placement(transformation(extent={{30,420},{50,440}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492327-seg3"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg4(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.166667,
            dh=0.50000000076,
            length=0.394647802844607)
			annotation (Placement(transformation(extent={{60,420},{80,440}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492327-seg4"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492671(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.166667,
            dpDamper_nominal=4.76)
			annotation (Placement(transformation(extent={{90,420},{110,440}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492671"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg42feaa49_c60d_42d2_b24a_0870fde19080_006c2649(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.865265466504096)
			annotation (Placement(transformation(extent={{150,420},{170,440}})), _CDE(id="inst:42feaa49-c60d-42d2-b24a-0870fde19080-006c2649"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049267a(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.343193804942547)
			annotation (Placement(transformation(extent={{180,420},{200,440}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049267a"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492678(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.204000000778494)
			annotation (Placement(transformation(extent={{210,420},{230,440}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492678"));

        Buildings.Fluid.FixedResistances.PressureDrop bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055cac7(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{240,420},{260,440}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055cac7"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049267c(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{0,450},{20,470}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049267c"));

        Buildings.Fluid.FixedResistances.PressureDrop gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e72(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{30,450},{50,470}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00603e72"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e74(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.342806937682626)
			annotation (Placement(transformation(extent={{60,450},{80,470}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00603e74"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926e0(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.166667,
            dpDamper_nominal=4.76)
			annotation (Placement(transformation(extent={{90,450},{110,470}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004926e0"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg42feaa49_c60d_42d2_b24a_0870fde19080_006c263d(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.8652654665041)
			annotation (Placement(transformation(extent={{150,450},{170,470}})), _CDE(id="inst:42feaa49-c60d-42d2-b24a-0870fde19080-006c263d"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926e9(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.343193804942547)
			annotation (Placement(transformation(extent={{180,450},{200,470}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004926e9"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926e7(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.204000000778494)
			annotation (Placement(transformation(extent={{210,450},{230,470}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004926e7"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926eb(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{240,450},{260,470}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004926eb"));

        Buildings.Fluid.FixedResistances.PressureDrop bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055caae(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{0,480},{20,500}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055caae"));

        Buildings.Fluid.FixedResistances.PressureDrop gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e64(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{30,480},{50,500}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00603e64"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e66(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.342806937682626)
			annotation (Placement(transformation(extent={{60,480},{80,500}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00603e66"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926f9(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.166667,
            dpDamper_nominal=4.76)
			annotation (Placement(transformation(extent={{90,480},{110,500}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004926f9"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg42feaa49_c60d_42d2_b24a_0870fde19080_006c2625(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.865265466504105)
			annotation (Placement(transformation(extent={{150,480},{170,500}})), _CDE(id="inst:42feaa49-c60d-42d2-b24a-0870fde19080-006c2625"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492702(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.343193804942548)
			annotation (Placement(transformation(extent={{180,480},{200,500}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492702"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492700(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.154000000000034)
			annotation (Placement(transformation(extent={{210,480},{230,500}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492700"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492704(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{240,480},{260,500}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492704"));

        Buildings.Fluid.FixedResistances.PressureDrop bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055ca31(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{0,510},{20,530}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055ca31"));

        Buildings.Fluid.FixedResistances.PressureDrop gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e56(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{30,510},{50,530}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00603e56"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e58(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.342806938340702)
			annotation (Placement(transformation(extent={{60,510},{80,530}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00603e58"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492712(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.166667,
            dpDamper_nominal=4.76)
			annotation (Placement(transformation(extent={{90,510},{110,530}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492712"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055a67e(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.343193805652248)
			annotation (Placement(transformation(extent={{150,510},{170,530}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055a67e"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055a5e5(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.642806194727637)
			annotation (Placement(transformation(extent={{180,510},{200,530}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055a5e5"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492717(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{210,510},{230,530}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492717"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a4f(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.852522642496202)
			annotation (Placement(transformation(extent={{240,510},{260,530}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603a4f"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492719(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.204000000778519)
			annotation (Placement(transformation(extent={{0,540},{20,560}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492719"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049271d(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{30,540},{50,560}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049271d"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e48(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.342806937682501)
			annotation (Placement(transformation(extent={{60,540},{80,560}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00603e48"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492727(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.386432792695853)
			annotation (Placement(transformation(extent={{90,540},{110,560}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492727"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049272b(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.166667,
            dpDamper_nominal=4.76)
			annotation (Placement(transformation(extent={{120,540},{140,560}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049272b"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492732(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.193897830934195)
			annotation (Placement(transformation(extent={{180,540},{200,560}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492732"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055ce70(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=1.01783411824779)
			annotation (Placement(transformation(extent={{210,540},{230,560}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055ce70"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492730(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.303000000759436)
			annotation (Placement(transformation(extent={{240,540},{260,560}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492730"));

        Buildings.Fluid.FixedResistances.PressureDrop bendcb1c4e4f_061c_43bc_ba54_49f465968a1e_00604793(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{0,570},{20,590}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00604793"));

        Buildings.Fluid.FixedResistances.PressureDrop bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055cb3b(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{30,570},{50,590}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055cb3b"));

        Buildings.Fluid.FixedResistances.PressureDrop gencb1c4e4f_061c_43bc_ba54_49f465968a1e_006043f3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{60,570},{80,590}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-006043f3"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segcf9f750a_ea51_41cb_ab4c_788bc890f2c6_006c2f97(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=5.35968853183974)
			annotation (Placement(transformation(extent={{90,570},{110,590}})), _CDE(id="inst:cf9f750a-ea51-41cb-ab4c-788bc890f2c6-006c2f97"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492762(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=0.66431046274635)
			annotation (Placement(transformation(extent={{120,570},{140,590}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492762"));

        Buildings.Fluid.FixedResistances.PressureDrop gen69ec72a1_886f_4162_9566_0e59020e8370_00604ea1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{150,570},{170,590}})), _CDE(id="inst:69ec72a1-886f-4162-9566-0e59020e8370-00604ea1"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492767(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.12,
            dp_nominal=0.9233)
			annotation (Placement(transformation(extent={{180,570},{200,590}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492767"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492765(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=0.160328657032467)
			annotation (Placement(transformation(extent={{210,570},{230,590}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492765"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492769(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.12,
            dp_nominal=0.9233)
			annotation (Placement(transformation(extent={{240,570},{260,590}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492769"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6ca4(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.25000000038,
            length=0.385999997643155)
			annotation (Placement(transformation(extent={{0,600},{20,620}})), _CDE(id="inst:9b98b828-21c4-44d3-a6f0-6040afb947ff-006e6ca4"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492781(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.0674602477588074)
			annotation (Placement(transformation(extent={{30,600},{50,620}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492781"));

        Buildings.Fluid.FixedResistances.PressureDrop bend426850e9_05bf_4ab8_bb02_28e614eb6e8a_00559390(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=11.1008)
			annotation (Placement(transformation(extent={{60,600},{80,620}})), _CDE(id="inst:426850e9-05bf-4ab8-bb02-28e614eb6e8a-00559390"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492783(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.166667,
            dpDamper_nominal=4.76)
			annotation (Placement(transformation(extent={{90,600},{110,620}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492783"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055cbe1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.118449998723557)
			annotation (Placement(transformation(extent={{150,600},{170,620}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055cbe1"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492797(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.178797972581335)
			annotation (Placement(transformation(extent={{180,600},{200,620}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492797"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049279f(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.368267380414477)
			annotation (Placement(transformation(extent={{210,600},{230,620}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-0049279f"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a3(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{240,600},{260,620}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927a3"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.244000000760067)
			annotation (Placement(transformation(extent={{0,630},{20,650}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927a1"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a7(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{30,630},{50,650}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927a7"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a5(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.169130567521399)
			annotation (Placement(transformation(extent={{60,630},{80,650}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927a5"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927ab(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.166667,
            dpDamper_nominal=4.76)
			annotation (Placement(transformation(extent={{90,630},{110,650}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927ab"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a9(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.0577603637630906)
			annotation (Placement(transformation(extent={{150,630},{170,650}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927a9"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b8(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{180,630},{200,650}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927b8"));

        Buildings.Fluid.Actuators.Dampers.Exponential motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927bc(
            redeclare package Medium = MediumVentilation, 
            m_flow_nominal= 0.166667,
            dpDamper_nominal=4.76)
			annotation (Placement(transformation(extent={{210,630},{230,650}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927bc"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927ac(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.341887604175282)
			annotation (Placement(transformation(extent={{0,660},{20,680}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927ac"));

        Buildings.Fluid.FixedResistances.PressureDrop bendcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603fd4(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=11.1008)
			annotation (Placement(transformation(extent={{30,660},{50,680}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00603fd4"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b0(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.234083487540207)
			annotation (Placement(transformation(extent={{60,660},{80,680}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927b0"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b4(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{90,660},{110,680}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927b4"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927c1(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{120,660},{140,680}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927c1"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.244000000760057)
			annotation (Placement(transformation(extent={{150,660},{170,680}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927b2"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927ba(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=3.50856865060378)
			annotation (Placement(transformation(extent={{180,660},{200,680}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927ba"));

        Buildings.Fluid.FixedResistances.PressureDrop bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927c3(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{210,660},{230,680}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927c3"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927bd(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.0924013806240458)
			annotation (Placement(transformation(extent={{240,660},{260,680}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927bd"));

        Buildings.Fluid.FixedResistances.PressureDrop bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055ccc5(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=11.1008)
			annotation (Placement(transformation(extent={{0,690},{20,710}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055ccc5"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927bf(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.394000000000016)
			annotation (Placement(transformation(extent={{30,690},{50,710}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004927bf"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492835(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.333333,
            dh=0.50000000076,
            length=0.548000000000008)
			annotation (Placement(transformation(extent={{60,690},{80,710}})), _CDE(id="inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492835"));

        Buildings.Fluid.FixedResistances.PressureDrop genba897980_5115_4b31_927c_2dab0f8d7279_00635f51(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{90,690},{110,710}})), _CDE(id="inst:ba897980-5115-4b31-927c-2dab0f8d7279-00635f51"));

        Buildings.Fluid.FixedResistances.PressureDrop gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e46(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{120,690},{140,710}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00603e46"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603adf(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.895823912491936)
			annotation (Placement(transformation(extent={{150,690},{170,710}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603adf"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603af6(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.85252264249611)
			annotation (Placement(transformation(extent={{180,690},{200,710}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603af6"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b0c(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.852522642496128)
			annotation (Placement(transformation(extent={{210,690},{230,710}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b0c"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b4b(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.657522642303035)
			annotation (Placement(transformation(extent={{240,690},{260,710}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b4b"));

        Buildings.Fluid.FixedResistances.PressureDrop gencb1c4e4f_061c_43bc_ba54_49f465968a1e_006047d9(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{0,720},{20,740}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-006047d9"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055cc17(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.486856591223588)
			annotation (Placement(transformation(extent={{30,720},{50,740}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055cc17"));

        Buildings.Fluid.FixedResistances.PressureDrop gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00604802(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{60,720},{80,740}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00604802"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00604812(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.486786586142583)
			annotation (Placement(transformation(extent={{90,720},{110,740}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00604812"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0dd(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.0659999999999926)
			annotation (Placement(transformation(extent={{120,720},{140,740}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d0dd"));

        Buildings.Fluid.FixedResistances.PressureDrop rede246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0ef(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.1783333333333332,
            dp_nominal=4.2649)
			annotation (Placement(transformation(extent={{150,720},{170,740}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d0ef"));

        Buildings.Fluid.FixedResistances.PressureDrop terme246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0ee(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.178333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{180,720},{200,740}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d0ee"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d115(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.0918239155368234)
			annotation (Placement(transformation(extent={{210,720},{230,740}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d115"));

        Buildings.Fluid.FixedResistances.PressureDrop gene246c92d_8b9b_4241_9f8e_8c63254bc791_0055d120(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{240,720},{260,740}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d120"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11a(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.179435560156577)
			annotation (Placement(transformation(extent={{0,750},{20,770}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d11a"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d118(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.201764949147353)
			annotation (Placement(transformation(extent={{30,750},{50,770}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d118"));

        Buildings.Fluid.FixedResistances.PressureDrop bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11e(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.1783333333333332,
            dp_nominal=0.9831)
			annotation (Placement(transformation(extent={{60,750},{80,770}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d11e"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d121(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.0659999999999926)
			annotation (Placement(transformation(extent={{90,750},{110,770}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d121"));

        Buildings.Fluid.FixedResistances.PressureDrop rede246c92d_8b9b_4241_9f8e_8c63254bc791_0055d124(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.1783333333333332,
            dp_nominal=4.2649)
			annotation (Placement(transformation(extent={{120,750},{140,770}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d124"));

        Buildings.Fluid.FixedResistances.PressureDrop terme246c92d_8b9b_4241_9f8e_8c63254bc791_0055d123(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.178333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{150,750},{170,770}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d123"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d16f(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.0918239155368234)
			annotation (Placement(transformation(extent={{180,750},{200,770}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d16f"));

        Buildings.Fluid.FixedResistances.PressureDrop gene246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17a(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{210,750},{230,770}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d17a"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d174(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.179435560156577)
			annotation (Placement(transformation(extent={{240,750},{260,770}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d174"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d172(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.201764949147344)
			annotation (Placement(transformation(extent={{0,780},{20,800}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d172"));

        Buildings.Fluid.FixedResistances.PressureDrop bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055d178(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.1783333333333332,
            dp_nominal=0.9831)
			annotation (Placement(transformation(extent={{30,780},{50,800}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d178"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17b(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.178333,
            dh=0.2,
            length=0.0659999999999926)
			annotation (Placement(transformation(extent={{60,780},{80,800}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d17b"));

        Buildings.Fluid.FixedResistances.PressureDrop rede246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17e(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.1783333333333332,
            dp_nominal=4.2649)
			annotation (Placement(transformation(extent={{90,780},{110,800}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d17e"));

        Buildings.Fluid.FixedResistances.PressureDrop terme246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17d(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.178333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{120,780},{140,800}})), _CDE(id="inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d17d"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg2884d09a_d7bd_4554_927c_ea48221943bd_005f9afb(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.535,
            dh=0.400000000608,
            length=9.11711542731882)
			annotation (Placement(transformation(extent={{150,780},{170,800}})), _CDE(id="inst:2884d09a-d7bd-4554-927c-ea48221943bd-005f9afb"));

        Buildings.Fluid.FixedResistances.Junction tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a51(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.166667,-0.083333,-0.083333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{180,780},{200,800}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603a51"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a53(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.0100000000000009)
			annotation (Placement(transformation(extent={{210,780},{230,800}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603a53"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a55(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.0100000000000014)
			annotation (Placement(transformation(extent={{240,780},{260,800}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603a55"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a57(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{0,810},{20,830}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603a57"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a58(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{30,810},{50,830}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603a58"));

        Buildings.Fluid.FixedResistances.Junction tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae1(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.166667,-0.083333,-0.083333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{60,810},{80,830}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603ae1"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.00999999999999981)
			annotation (Placement(transformation(extent={{90,810},{110,830}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603ae3"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae5(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.010000000000002)
			annotation (Placement(transformation(extent={{120,810},{140,830}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603ae5"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae7(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{150,810},{170,830}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603ae7"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae8(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{180,810},{200,830}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603ae8"));

        Buildings.Fluid.FixedResistances.Junction tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603af8(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.166667,-0.083333,-0.083333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{210,810},{230,830}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603af8"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603afe(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{240,810},{260,830}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603afe"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603afc(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.00999999999999576)
			annotation (Placement(transformation(extent={{0,840},{20,860}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603afc"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603aff(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{30,840},{50,860}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603aff"));

        Buildings.Fluid.FixedResistances.Junction tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b0e(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.166667,-0.083333,-0.083333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{60,840},{80,860}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b0e"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b12(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.00999999999999576)
			annotation (Placement(transformation(extent={{90,840},{110,860}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b12"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b14(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{120,840},{140,860}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b14"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b15(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{150,840},{170,860}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b15"));

        Buildings.Fluid.FixedResistances.Junction tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b4d(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.166667,-0.083333,-0.083333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{180,840},{200,860}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b4d"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b53(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{210,840},{230,860}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b53"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b51(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.00999999999999771)
			annotation (Placement(transformation(extent={{240,840},{260,860}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b51"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b54(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{0,870},{20,890}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b54"));

        Buildings.Fluid.FixedResistances.Junction tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b92(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-0.083333,0.166667,-0.083333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{30,870},{50,890}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b92"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b94(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.0100000000000065)
			annotation (Placement(transformation(extent={{60,870},{80,890}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b94"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segcb1c4e4f_061c_43bc_ba54_49f465968a1e_006047db(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.118449998723553)
			annotation (Placement(transformation(extent={{90,870},{110,890}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-006047db"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b96(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.00999999999999773)
			annotation (Placement(transformation(extent={{120,870},{140,890}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b96"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b98(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{150,870},{170,890}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b98"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b99(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{180,870},{200,890}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603b99"));

        Buildings.Fluid.FixedResistances.Junction tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ba6(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-0.083333,0.166667,-0.083333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{210,870},{230,890}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603ba6"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603baa(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.00999999999999773)
			annotation (Placement(transformation(extent={{240,870},{260,890}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603baa"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00604804(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.118503653933578)
			annotation (Placement(transformation(extent={{0,900},{20,920}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00604804"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ba8(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.0100000000000029)
			annotation (Placement(transformation(extent={{30,900},{50,920}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603ba8"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bac(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{60,900},{80,920}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603bac"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bad(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{90,900},{110,920}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603bad"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bb8(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.200000000304,
            length=0.118573659014583)
			annotation (Placement(transformation(extent={{120,900},{140,920}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603bb8"));

        Buildings.Fluid.FixedResistances.Junction tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bba(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.166667,-0.083333,-0.083333},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{150,900},{170,920}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603bba"));

        Buildings.Fluid.FixedResistances.PressureDrop gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00604810(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{180,900},{200,920}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-00604810"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bbe(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.00999999999999773)
			annotation (Placement(transformation(extent={{210,900},{230,920}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603bbe"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bbc(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.083333,
            dh=0.200000000304,
            length=0.0100000000000053)
			annotation (Placement(transformation(extent={{240,900},{260,920}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603bbc"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bc0(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{0,930},{20,950}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603bc0"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bc1(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.083333,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{30,930},{50,950}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603bc1"));

        Buildings.Fluid.FixedResistances.PressureDrop term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603c8e(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.12,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{60,930},{80,950}})), _CDE(id="inst:7600bad2-d41e-4ce2-8d51-db63fd905ac6-00603c8e"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6bf0(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.200000000304,
            length=0.445257745448606)
			annotation (Placement(transformation(extent={{90,930},{110,950}})), _CDE(id="inst:9b98b828-21c4-44d3-a6f0-6040afb947ff-006e6bf0"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter segcb1c4e4f_061c_43bc_ba54_49f465968a1e_006043f5(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.166667,
            dh=0.2,
            length=0.492801641501974)
			annotation (Placement(transformation(extent={{120,930},{140,950}})), _CDE(id="inst:cb1c4e4f-061c-43bc-ba54-49f465968a1e-006043f5"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e597(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.868333,
            dh=0.545454546283636,
            length=0.210517241911757)
			annotation (Placement(transformation(extent={{150,930},{170,950}})), _CDE(id="inst:4f00b934-a44d-40f7-8241-64f04c45343d-0066e597"));

        Buildings.Fluid.FixedResistances.PressureDrop red9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6e56(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.12,
            dp_nominal=0.2878)
			annotation (Placement(transformation(extent={{180,930},{200,950}})), _CDE(id="inst:9b98b828-21c4-44d3-a6f0-6040afb947ff-006e6e56"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter seg9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6c14(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.12,
            dh=0.200000000304,
            length=0.496257745448618)
			annotation (Placement(transformation(extent={{210,930},{230,950}})), _CDE(id="inst:9b98b828-21c4-44d3-a6f0-6040afb947ff-006e6c14"));

        Buildings.Fluid.FixedResistances.PressureDrop bend9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6ead(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.12,
            dp_nominal=6.1601)
			annotation (Placement(transformation(extent={{240,930},{260,950}})), _CDE(id="inst:9b98b828-21c4-44d3-a6f0-6040afb947ff-006e6ead"));

        Buildings.Fluid.FixedResistances.PressureDrop term9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6d78(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal=0.12,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{0,960},{20,980}})), _CDE(id="inst:9b98b828-21c4-44d3-a6f0-6040afb947ff-006e6d78"));

        Buildings.Fluid.FixedResistances.Junction tee9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6cc8(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={0.0012,-0.0012,-0.0012},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{30,960},{50,980}})), _CDE(id="inst:9b98b828-21c4-44d3-a6f0-6040afb947ff-006e6cc8"));

        Buildings.Fluid.FixedResistances.PressureDrop red9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6eb7(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.12,
            dp_nominal=0.2878)
			annotation (Placement(transformation(extent={{60,960},{80,980}})), _CDE(id="inst:9b98b828-21c4-44d3-a6f0-6040afb947ff-006e6eb7"));

        Buildings.Fluid.FixedResistances.Junction teee7c947e9_d32d_4551_97e6_c70eb34fc702_00492759(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-0.535,1.868333,-0.0012},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{90,960},{110,980}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-00492759"));

        Buildings.Fluid.FixedResistances.Junction teee7c947e9_d32d_4551_97e6_c70eb34fc702_004909d7(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={-1.333333,1.868333,-0.0012},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{120,960},{140,980}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-004909d7"));

        Buildings.Fluid.FixedResistances.PressureDrop bende7c947e9_d32d_4551_97e6_c70eb34fc702_0055924f(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 1.333333300781244,
            dp_nominal=14.5694)
			annotation (Placement(transformation(extent={{150,960},{170,980}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-0055924f"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege7c947e9_d32d_4551_97e6_c70eb34fc702_004909c8_seg1(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.535,
            dh=0.5454545462836363,
            length=0.393482758392262)
			annotation (Placement(transformation(extent={{180,960},{200,980}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-004909c8-seg1"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege7c947e9_d32d_4551_97e6_c70eb34fc702_004909c8_seg2(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.868333,
            dh=0.5454545462836363,
            length=0.0699999996960016)
			annotation (Placement(transformation(extent={{210,960},{230,980}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-004909c8-seg2"));

        Buildings.Fluid.FixedResistances.HydraulicDiameter sege7c947e9_d32d_4551_97e6_c70eb34fc702_004909c8_seg3(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=1.868333,
            dh=0.5454545462836363,
            length=0.310999999999994)
			annotation (Placement(transformation(extent={{240,960},{260,980}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-004909c8-seg3"));

        Buildings.Fluid.FixedResistances.Junction teee7c947e9_d32d_4551_97e6_c70eb34fc702_004927c5(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={1.333333,-1.166667,-0.166667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{0,990},{20,1010}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-004927c5"));

        Buildings.Fluid.FixedResistances.Junction teee7c947e9_d32d_4551_97e6_c70eb34fc702_006c2651(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal={1.166667,-0.666667,-0.166667},
            dp_nominal={0,0,0})
			annotation (Placement(transformation(extent={{30,990},{50,1010}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-006c2651"));

        Buildings.Fluid.FixedResistances.PressureDrop bende7c947e9_d32d_4551_97e6_c70eb34fc702_006c25b5(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.16666666259765636,
            dp_nominal=2.4182)
			annotation (Placement(transformation(extent={{60,990},{80,1010}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-006c25b5"));

        Buildings.Fluid.FixedResistances.PressureDrop rede7c947e9_d32d_4551_97e6_c70eb34fc702_00492792(
            redeclare package Medium = MediumVentilation,
            m_flow_nominal = 0.6666666503906244,
            dp_nominal=0.6624)
			annotation (Placement(transformation(extent={{90,990},{110,1010}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-00492792"));

        Buildings.Fluid.FixedResistances.PressureDrop cape7c947e9_d32d_4551_97e6_c70eb34fc702_0072c1e4(
            redeclare package Medium = MediumVentilation,
            allowFlowReversal=true,
            m_flow_nominal=0.1,
            dp_nominal=0)
			annotation (Placement(transformation(extent={{120,990},{140,1010}})), _CDE(id="inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-0072c1e4"));

        Buildings.Fluid.Sources.Boundary_pT roomE02_9(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{150,990},{170,1010}})), _CDE(id="inst:E02-9"));

        Buildings.Fluid.Sources.Boundary_pT roomE03_9(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{180,990},{200,1010}})), _CDE(id="inst:E03-9"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_01(
            redeclare package Medium = MediumVentilation,
            nPorts = 2
            )
			annotation (Placement(transformation(extent={{210,990},{230,1010}})), _CDE(id="inst:R08.01"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_02(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{240,990},{260,1010}})), _CDE(id="inst:R08.02"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_03(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{0,1020},{20,1040}})), _CDE(id="inst:R08.03"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_04(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{30,1020},{50,1040}})), _CDE(id="inst:R08.04"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_05(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{60,1020},{80,1040}})), _CDE(id="inst:R08.05"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_06(
            redeclare package Medium = MediumVentilation,
            nPorts = 18
            )
			annotation (Placement(transformation(extent={{90,1020},{110,1040}})), _CDE(id="inst:R08.06"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_07(
            redeclare package Medium = MediumVentilation,
            nPorts = 4
            )
			annotation (Placement(transformation(extent={{120,1020},{140,1040}})), _CDE(id="inst:R08.07"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_08(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{150,1020},{170,1040}})), _CDE(id="inst:R08.08"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_09(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{180,1020},{200,1040}})), _CDE(id="inst:R08.09"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_50(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{210,1020},{230,1040}})), _CDE(id="inst:R08.50"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_51(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{240,1020},{260,1040}})), _CDE(id="inst:R08.51"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_52(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{0,1050},{20,1070}})), _CDE(id="inst:R08.52"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_53(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{30,1050},{50,1070}})), _CDE(id="inst:R08.53"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_54(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{60,1050},{80,1070}})), _CDE(id="inst:R08.54"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_55(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{90,1050},{110,1070}})), _CDE(id="inst:R08.55"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_56(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{120,1050},{140,1070}})), _CDE(id="inst:R08.56"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_57(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{150,1050},{170,1070}})), _CDE(id="inst:R08.57"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_58(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{180,1050},{200,1070}})), _CDE(id="inst:R08.58"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_59(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{210,1050},{230,1070}})), _CDE(id="inst:R08.59"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_60(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{240,1050},{260,1070}})), _CDE(id="inst:R08.60"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_61(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{0,1080},{20,1100}})), _CDE(id="inst:R08.61"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_62(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{30,1080},{50,1100}})), _CDE(id="inst:R08.62"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_63(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{60,1080},{80,1100}})), _CDE(id="inst:R08.63"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_64(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{90,1080},{110,1100}})), _CDE(id="inst:R08.64"));

        Buildings.Fluid.Sources.Boundary_pT roomR08_65(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{120,1080},{140,1100}})), _CDE(id="inst:R08.65"));

        Buildings.Fluid.Sources.Boundary_pT roomS01_9(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{150,1080},{170,1100}})), _CDE(id="inst:S01-9"));

        Buildings.Fluid.Sources.Boundary_pT roomS03_9(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{180,1080},{200,1100}})), _CDE(id="inst:S03-9"));

        Buildings.Fluid.Sources.Boundary_pT roomS04_9(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{210,1080},{230,1100}})), _CDE(id="inst:S04-9"));

        Buildings.Fluid.Sources.Boundary_pT roomS05_9(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{240,1080},{260,1100}})), _CDE(id="inst:S05-9"));

        Buildings.Fluid.Sources.Boundary_pT roomS06_10(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{0,1110},{20,1130}})), _CDE(id="inst:S06-10"));

        Buildings.Fluid.Sources.Boundary_pT roomS10_9(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{30,1110},{50,1130}})), _CDE(id="inst:S10-9"));

        Buildings.Fluid.Sources.Boundary_pT roomT01_9(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{60,1110},{80,1130}})), _CDE(id="inst:T01-9"));

        Buildings.Fluid.Sources.Boundary_pT roomT02_9(
            redeclare package Medium = MediumVentilation,
            nPorts = 0
            )
			annotation (Placement(transformation(extent={{90,1110},{110,1130}})), _CDE(id="inst:T02-9"));

	equation

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492773.port_b,motDampHTR8_ETS01_1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDampHTR8_ETS01_1.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cdc.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492743.port_b,motDampHTR8_ETS01_2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDampHTR8_ETS01_2.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911cd.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:d2c3922e-fc49-4381-b79f-22585f4eec6d-004d6c05 - skipping connection to HTR9_VEN02

        connect(genba897980_5115_4b31_927c_2dab0f8d7279_00637725.port_b,ahuHTR9_VEN02.retAir) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(ahuHTR9_VEN02.supAir,genba897980_5115_4b31_927c_2dab0f8d7279_00635f51.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:ce7659f4-be97-41a3-9ba6-3609878d404c-004d6bbf - skipping connection to HTR9_VEN02

        connect(bendebcf0139_4bfc_4dab_8138_8164b02a410f_004b1180.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049075c.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049075c.port_b,tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd4.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd6.port_b,bendebcf0139_4bfc_4dab_8138_8164b02a410f_004b1180.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e50b_seg2.port_b,tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd4.port_3) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd4.port_2,seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e50b_seg1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gen4f00b934_a44d_40f7_8241_64f04c45343d_0066e509.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909ba.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909ba.port_b,bend4f00b934_a44d_40f7_8241_64f04c45343d_0066e68b.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:4f00b934-a44d-40f7-8241-64f04c45343d-0066e50b - skipping connection to 4f00b934_a44d_40f7_8241_64f04c45343d_0066e509

        connect(seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e50b_seg1.port_b,gen4f00b934_a44d_40f7_8241_64f04c45343d_0066e509.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend4f00b934_a44d_40f7_8241_64f04c45343d_0066e68b.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909d1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909d1.port_b,redba897980_5115_4b31_927c_2dab0f8d7279_006362e4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(redba897980_5115_4b31_927c_2dab0f8d7279_006362e4.port_b,genba897980_5115_4b31_927c_2dab0f8d7279_00637725.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cda.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd6.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cdc.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cda.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492742 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cdc
		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492745 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911cd

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911cd.port_b,tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492748.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e50b_seg3.port_b,tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492748.port_3) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492748.port_2,seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e50b_seg2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(roomR08_06.ports[1],term940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049273f.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049273f.port_b,bend8d173b06_c167_4240_9613_bdeab7069a65_0072c146.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend8d173b06_c167_4240_9613_bdeab7069a65_0072c146.port_b,seg8d173b06_c167_4240_9613_bdeab7069a65_0072beae.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg2e868801_e24b_4667_b393_4e3be4c80bde_00638f03.port_b,red940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492741.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(red940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492741.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492743.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gen2e868801_e24b_4667_b393_4e3be4c80bde_00638e73.port_b,seg2e868801_e24b_4667_b393_4e3be4c80bde_00638f03.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492745 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492743

        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492775.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492773.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492742 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492773

        connect(cap940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492752.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492747_seg1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492747_seg1.port_b,tee8d173b06_c167_4240_9613_bdeab7069a65_0072c136.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492747_seg2.port_b,tee8d173b06_c167_4240_9613_bdeab7069a65_0072bfaf.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg8d173b06_c167_4240_9613_bdeab7069a65_0072bf6d.port_b,tee8d173b06_c167_4240_9613_bdeab7069a65_0072bfaf.port_3) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee8d173b06_c167_4240_9613_bdeab7069a65_0072bfaf.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492747_seg3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee8d173b06_c167_4240_9613_bdeab7069a65_0072c136.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492747_seg2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg8d173b06_c167_4240_9613_bdeab7069a65_0072beae.port_b,tee8d173b06_c167_4240_9613_bdeab7069a65_0072c136.port_3) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492747_seg3.port_b,gen2e868801_e24b_4667_b393_4e3be4c80bde_00638e73.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492747 - skipping connection to 2e868801_e24b_4667_b393_4e3be4c80bde_00638e73

        connect(roomR08_06.ports[2],term940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049274e.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049274e.port_b,bend8d173b06_c167_4240_9613_bdeab7069a65_0072c16e.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend8d173b06_c167_4240_9613_bdeab7069a65_0072c16e.port_b,seg8d173b06_c167_4240_9613_bdeab7069a65_0072bf6d.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teecb27adb2_7c23_413c_9092_d6d0a180c7c9_0072bd57.port_1,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049276d.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049276d.port_b,genc9f0dda1_788e_431d_bc9b_01d3704d965e_00664c67.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segbeb16037_64e2_4119_9b35_9d9558e2f45f_00714dab_seg1.port_b,teecb27adb2_7c23_413c_9092_d6d0a180c7c9_0072bd57.port_2) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segbeb16037_64e2_4119_9b35_9d9558e2f45f_00714dab_seg2.port_b,teecb27adb2_7c23_413c_9092_d6d0a180c7c9_0072bd57.port_3) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(genc9f0dda1_788e_431d_bc9b_01d3704d965e_00664c67.port_b,segc9f0dda1_788e_431d_bc9b_01d3704d965e_00664c64.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492771.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049276f.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049276f.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492775.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segc9f0dda1_788e_431d_bc9b_01d3704d965e_00664c64.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492771.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:426850e9-05bf-4ab8-bb02-28e614eb6e8a-005568b2 - skipping connection to ba897980_5115_4b31_927c_2dab0f8d7279_00637725

        connect(cap940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd2.port_b,seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e50b_seg3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(capbeb16037_64e2_4119_9b35_9d9558e2f45f_00714e22.port_b,segbeb16037_64e2_4119_9b35_9d9558e2f45f_00714dab_seg1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(red8d173b06_c167_4240_9613_bdeab7069a65_0072ce90.port_b,segbeb16037_64e2_4119_9b35_9d9558e2f45f_00714dab_seg2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term8d173b06_c167_4240_9613_bdeab7069a65_0072cceb.port_b,red8d173b06_c167_4240_9613_bdeab7069a65_0072ce90.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:beb16037-64e2-4119-9b35-9d9558e2f45f-00714dab - skipping connection to 8d173b06_c167_4240_9613_bdeab7069a65_0072ce90

        connect(roomR08_07.ports[1],term8d173b06_c167_4240_9613_bdeab7069a65_0072cceb.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b4.port_b,motDampR08_01_VAV01_1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDampR08_01_VAV01_1.port_b,seg69ec72a1_886f_4162_9566_0e59020e8370_00604eb3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d174.port_b,motDampR08_07_VAV01_1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDampR08_07_VAV01_1.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d16f.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11a.port_b,motDampR08_07_VAV01_2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDampR08_07_VAV01_2.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d115.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049231d.port_b,motDampR08_07_VAV01_3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDampR08_07_VAV01_3.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492316.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bendebcf0139_4bfc_4dab_8138_8164b02a410f_004b116c.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490760.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490760.port_b,bend269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c27e4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c27e4.port_b,seg2884d09a_d7bd_4554_927c_ea48221943bd_005f9afb.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490762.port_b,bendebcf0139_4bfc_4dab_8138_8164b02a410f_004b116c.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee7c947e9_d32d_4551_97e6_c70eb34fc702_00492759.port_1,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490762.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee7c947e9_d32d_4551_97e6_c70eb34fc702_004909d7.port_1,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490826.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490826.port_b,bende7c947e9_d32d_4551_97e6_c70eb34fc702_0055924f.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ca.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004908b3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004908b3.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00491293.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00491293.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00491290.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911c4.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ca.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e597.port_b,gen4f00b934_a44d_40f7_8241_64f04c45343d_0066e586.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gen4f00b934_a44d_40f7_8241_64f04c45343d_0066e586.port_b,sege7c947e9_d32d_4551_97e6_c70eb34fc702_004909c8_seg1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-004909c8 - skipping connection to 4f00b934_a44d_40f7_8241_64f04c45343d_0066e586

        connect(redba897980_5115_4b31_927c_2dab0f8d7279_00635fa6.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909cd.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909cd.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909cf.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909cf.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909ce.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(genba897980_5115_4b31_927c_2dab0f8d7279_00635f51.port_b,redba897980_5115_4b31_927c_2dab0f8d7279_00635fa6.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004909ce.port_b,bend4f00b934_a44d_40f7_8241_64f04c45343d_0066e649.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend4f00b934_a44d_40f7_8241_64f04c45343d_0066e649.port_b,seg4f00b934_a44d_40f7_8241_64f04c45343d_0066e597.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(rede7c947e9_d32d_4551_97e6_c70eb34fc702_00492792.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg1.port_b,teede757268_ae7f_4271_9846_adbe8ec919b3_004acc5d.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg4.port_b,tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492799.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492799.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg5.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492799.port_3,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492797.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teede757268_ae7f_4271_9846_adbe8ec919b3_004acc5d.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg2.port_b,tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049278e.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg3.port_b,teede757268_ae7f_4271_9846_adbe8ec919b3_004acc59.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teede757268_ae7f_4271_9846_adbe8ec919b3_004acc59.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teede757268_ae7f_4271_9846_adbe8ec919b3_004acc59.port_3,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049279f.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049278e.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049278e.port_3,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055ce70.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teede757268_ae7f_4271_9846_adbe8ec919b3_004acc5d.port_3,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927ba.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00490cd0_seg5.port_b,cap43c5ea64_f071_41d7_8fc9_71fbb8bec110_00725cec.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cd0 - skipping connection to 43c5ea64_f071_41d7_8fc9_71fbb8bec110_00725cec

        connect(red940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049283a.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911a8.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911a8.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492835.port_b,red940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049283a.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911ab - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b1

        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b1.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ab_seg1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ab_seg1.port_b,teee7c947e9_d32d_4551_97e6_c70eb34fc702_004927c5.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee7c947e9_d32d_4551_97e6_c70eb34fc702_004927c5.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ab_seg2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ab_seg2.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ad.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911ab - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ad
		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492327 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ad

        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911ad.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gencf9f750a_ea51_41cb_ab4c_788bc890f2c6_006c2f9a.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492325 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b4

        connect(segcf9f750a_ea51_41cb_ab4c_788bc890f2c6_006c2f97.port_b,gencf9f750a_ea51_41cb_ab4c_788bc890f2c6_006c2f9a.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492300.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg1.port_b,teee246c92d_8b9b_4241_9f8e_8c63254bc791_0055d176.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee246c92d_8b9b_4241_9f8e_8c63254bc791_0055d176.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee246c92d_8b9b_4241_9f8e_8c63254bc791_0055d176.port_3,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d172.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg2.port_b,teee246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11c.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11c.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11c.port_3,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d118.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg3.port_b,tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049231f.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049231f.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049231f.port_3,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492319.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b6_seg4.port_b,cap43c5ea64_f071_41d7_8fc9_71fbb8bec110_00725cf6.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004922fa.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492300.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b6 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492300
		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b6 - skipping connection to 43c5ea64_f071_41d7_8fc9_71fbb8bec110_00725cf6

        connect(bend269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c284c.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b8_seg1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b8_seg1.port_b,teede757268_ae7f_4271_9846_adbe8ec919b3_004acc61.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teede757268_ae7f_4271_9846_adbe8ec919b3_004acc61.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b8_seg2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teede757268_ae7f_4271_9846_adbe8ec919b3_004acc61.port_3,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911be.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911b8_seg2.port_b,bend269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c284f.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg2884d09a_d7bd_4554_927c_ea48221943bd_005f9afb.port_b,bend269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c284c.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b8 - skipping connection to 269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c284c
		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-004911b8 - skipping connection to 269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c284f

        connect(bend269d15da_04b7_4025_8d8d_b5c9fc5a557a_006c284f.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004922fa.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911be.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00491268.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00491268.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911c2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911c2.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049126b.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049126b.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004911c4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00491290.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049275f.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049275f.port_b,segcf9f750a_ea51_41cb_ab4c_788bc890f2c6_006c2f97.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492318 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492316

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492316.port_b,gene246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0b3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gene246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0b3.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0dd.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0a9.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049231d.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492318 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049231d

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492319.port_b,bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0a9.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492325 - skipping connection to 69ec72a1_886f_4162_9566_0e59020e8370_00604eb3

        connect(seg69ec72a1_886f_4162_9566_0e59020e8370_00604eb3.port_b,gen69ec72a1_886f_4162_9566_0e59020e8370_00604ea1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg1.port_b,tee42feaa49_c60d_42d2_b24a_0870fde19080_006c2630.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee42feaa49_c60d_42d2_b24a_0870fde19080_006c2630.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee42feaa49_c60d_42d2_b24a_0870fde19080_006c2630.port_3,seg42feaa49_c60d_42d2_b24a_0870fde19080_006c2625.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg2.port_b,tee42feaa49_c60d_42d2_b24a_0870fde19080_006c2645.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee42feaa49_c60d_42d2_b24a_0870fde19080_006c2645.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee42feaa49_c60d_42d2_b24a_0870fde19080_006c2645.port_3,seg42feaa49_c60d_42d2_b24a_0870fde19080_006c263d.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg3.port_b,teee7c947e9_d32d_4551_97e6_c70eb34fc702_006c2651.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee7c947e9_d32d_4551_97e6_c70eb34fc702_006c2651.port_2,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492327_seg4.port_b,rede7c947e9_d32d_4551_97e6_c70eb34fc702_00492792.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg42feaa49_c60d_42d2_b24a_0870fde19080_006c2649.port_b,motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492671.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492671.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049267a.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee7c947e9_d32d_4551_97e6_c70eb34fc702_006c2651.port_3,seg42feaa49_c60d_42d2_b24a_0870fde19080_006c2649.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_n_VAV01_4 - skipping connection to 42feaa49_c60d_42d2_b24a_0870fde19080_006c2649
		// Cannot find component inst:R08_06_n_VAV01_4 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049267a

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049267a.port_b,gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e72.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049267c.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492678.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492678.port_b,bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055cac7.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055cac7.port_b,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b0c.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e74.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049267c.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e72.port_b,segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e74.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg42feaa49_c60d_42d2_b24a_0870fde19080_006c263d.port_b,motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926e0.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926e0.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926e9.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_n_VAV01_3 - skipping connection to 42feaa49_c60d_42d2_b24a_0870fde19080_006c263d
		// Cannot find component inst:R08_06_n_VAV01_3 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926e9

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926e9.port_b,gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e64.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926eb.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926e7.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926e7.port_b,bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055caae.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e66.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926eb.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055caae.port_b,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603af6.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e64.port_b,segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e66.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg42feaa49_c60d_42d2_b24a_0870fde19080_006c2625.port_b,motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926f9.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004926f9.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492702.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_n_VAV01_2 - skipping connection to 42feaa49_c60d_42d2_b24a_0870fde19080_006c2625
		// Cannot find component inst:R08_06_n_VAV01_2 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492702

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492702.port_b,gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e56.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492704.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492700.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492700.port_b,bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055ca31.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e58.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492704.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055ca31.port_b,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603adf.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e56.port_b,segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e58.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055a5e5.port_b,motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492712.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492712.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055a67e.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_n_VAV01_1 - skipping connection to e246c92d_8b9b_4241_9f8e_8c63254bc791_0055a67e

        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055a67e.port_b,gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e46.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bende7c947e9_d32d_4551_97e6_c70eb34fc702_006c25b5.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055a5e5.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_n_VAV01_1 - skipping connection to e246c92d_8b9b_4241_9f8e_8c63254bc791_0055a5e5

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492719.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492717.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492717.port_b,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a4f.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a4f.port_b,tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a51.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049271d.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492719.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e48.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049271d.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e46.port_b,segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603e48.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee7c947e9_d32d_4551_97e6_c70eb34fc702_004927c5.port_3,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492727.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492727.port_b,bende7c947e9_d32d_4551_97e6_c70eb34fc702_006c25b5.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055ce70.port_b,motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049272b.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049272b.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492732.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_o_VAV01_1 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492732

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492732.port_b,gencb1c4e4f_061c_43bc_ba54_49f465968a1e_006043f3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_o_VAV01_1 - skipping connection to e246c92d_8b9b_4241_9f8e_8c63254bc791_0055ce70

        connect(bendcb1c4e4f_061c_43bc_ba54_49f465968a1e_00604793.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492730.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492730.port_b,bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055cb3b.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segcb1c4e4f_061c_43bc_ba54_49f465968a1e_006043f5.port_b,bendcb1c4e4f_061c_43bc_ba54_49f465968a1e_00604793.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055cb3b.port_b,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b4b.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gencb1c4e4f_061c_43bc_ba54_49f465968a1e_006043f3.port_b,segcb1c4e4f_061c_43bc_ba54_49f465968a1e_006043f5.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gen69ec72a1_886f_4162_9566_0e59020e8370_00604ea1.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492762.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492762.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492767.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492767.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492765.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492765.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492769.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492769.port_b,seg9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6ca4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6ca4.port_b,tee9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6cc8.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend426850e9_05bf_4ab8_bb02_28e614eb6e8a_00559390.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492781.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492781.port_b,motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492783.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_o_VAV01_2 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492781

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492797.port_b,bend426850e9_05bf_4ab8_bb02_28e614eb6e8a_00559390.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492783.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055cbe1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_o_VAV01_2 - skipping connection to e246c92d_8b9b_4241_9f8e_8c63254bc791_0055cbe1

        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055cbe1.port_b,gencb1c4e4f_061c_43bc_ba54_49f465968a1e_006047d9.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_0049279f.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a3.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a1.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a7.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a7.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a5.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a5.port_b,motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927ab.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_o_VAV01_3 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a5

        connect(motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927ab.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927ac.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b8.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a9.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a9.port_b,motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927bc.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_o_VAV01_4 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927a9

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b2.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b8.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(motDamp940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927bc.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927bd.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_o_VAV01_3 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927ac

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927ac.port_b,bendcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603fd4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bendcb1c4e4f_061c_43bc_ba54_49f465968a1e_00603fd4.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055cc17.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927c1.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b0.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b0.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b4.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927b2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927bf.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927c1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927ba.port_b,bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927c3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927c3.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927bf.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:R08_06_o_VAV01_4 - skipping connection to 940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927bd

        connect(seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_004927bd.port_b,bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055ccc5.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055ccc5.port_b,segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00604812.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bende7c947e9_d32d_4551_97e6_c70eb34fc702_0055924f.port_b,seg940b52ee_bf99_41b0_ba08_1a3cd71d6032_00492835.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:426850e9-05bf-4ab8-bb02-28e614eb6e8a-005568b2 - skipping connection to ba897980_5115_4b31_927c_2dab0f8d7279_00635f51

        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603adf.port_b,tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae1.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603af6.port_b,tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603af8.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b0c.port_b,tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b0e.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b4b.port_b,tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b4d.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gencb1c4e4f_061c_43bc_ba54_49f465968a1e_006047d9.port_b,segcb1c4e4f_061c_43bc_ba54_49f465968a1e_006047db.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055cc17.port_b,gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00604802.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00604802.port_b,segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00604804.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00604812.port_b,gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00604810.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0dd.port_b,rede246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0ef.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(rede246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0ef.port_b,terme246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0ee.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(terme246c92d_8b9b_4241_9f8e_8c63254bc791_0055d0ee.port_b,roomR08_07.ports[1]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d117 - skipping connection to e246c92d_8b9b_4241_9f8e_8c63254bc791_0055d115

        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d115.port_b,gene246c92d_8b9b_4241_9f8e_8c63254bc791_0055d120.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gene246c92d_8b9b_4241_9f8e_8c63254bc791_0055d120.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d121.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11e.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11a.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d117 - skipping connection to e246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11a

        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d118.port_b,bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055d11e.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d121.port_b,rede246c92d_8b9b_4241_9f8e_8c63254bc791_0055d124.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(rede246c92d_8b9b_4241_9f8e_8c63254bc791_0055d124.port_b,terme246c92d_8b9b_4241_9f8e_8c63254bc791_0055d123.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(terme246c92d_8b9b_4241_9f8e_8c63254bc791_0055d123.port_b,roomR08_07.ports[2]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d171 - skipping connection to e246c92d_8b9b_4241_9f8e_8c63254bc791_0055d16f

        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d16f.port_b,gene246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17a.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gene246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17a.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17b.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055d178.port_b,sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d174.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:e246c92d-8b9b-4241-9f8e-8c63254bc791-0055d171 - skipping connection to e246c92d_8b9b_4241_9f8e_8c63254bc791_0055d174

        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d172.port_b,bende246c92d_8b9b_4241_9f8e_8c63254bc791_0055d178.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17b.port_b,rede246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17e.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(rede246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17e.port_b,terme246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17d.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(terme246c92d_8b9b_4241_9f8e_8c63254bc791_0055d17d.port_b,roomR08_07.ports[3]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a51.port_2,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a53.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a51.port_3,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a55.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a53.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a57.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a55.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a58.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a57.port_b,roomR08_06.ports[1]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603a58.port_b,roomR08_06.ports[2]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae1.port_2,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae1.port_3,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae5.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae3.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae7.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae5.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae8.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae7.port_b,roomR08_06.ports[3]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ae8.port_b,roomR08_06.ports[4]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603af8.port_2,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603afe.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603af8.port_3,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603afc.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603afe.port_b,roomR08_06.ports[5]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603afc.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603aff.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603aff.port_b,roomR08_06.ports[6]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b0e.port_2,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b12.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b0e.port_3,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b14.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b12.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b15.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b14.port_b,roomR08_06.ports[7]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b15.port_b,roomR08_06.ports[8]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b4d.port_2,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b53.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b4d.port_3,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b51.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b53.port_b,roomR08_06.ports[9]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b51.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b54.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b54.port_b,roomR08_06.ports[10]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segcb1c4e4f_061c_43bc_ba54_49f465968a1e_006047db.port_b,tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b92.port_2) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b92.port_1,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b94.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b92.port_3,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b96.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b94.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b98.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b96.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b99.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b98.port_b,roomR08_06.ports[11]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603b99.port_b,roomR08_06.ports[12]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(segcb1c4e4f_061c_43bc_ba54_49f465968a1e_00604804.port_b,tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ba6.port_2) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ba6.port_1,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603baa.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ba6.port_3,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ba8.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603baa.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bad.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603ba8.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bac.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bac.port_b,roomR08_06.ports[13]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bad.port_b,roomR08_06.ports[14]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(gencb1c4e4f_061c_43bc_ba54_49f465968a1e_00604810.port_b,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bb8.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bb8.port_b,tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bba.port_1) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bba.port_2,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bbe.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bba.port_3,seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bbc.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bbe.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bc1.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bbc.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bc0.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bc0.port_b,roomR08_06.ports[15]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603bc1.port_b,roomR08_06.ports[16]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6bf0.port_b,term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603c8e.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term7600bad2_d41e_4ce2_8d51_db63fd905ac6_00603c8e.port_b,roomR08_01.ports[1]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(red9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6e56.port_b,seg9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6bf0.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6cc8.port_2,red9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6e56.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(bend9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6ead.port_b,seg9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6c14.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(seg9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6c14.port_b,term9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6d78.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(red9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6eb7.port_b,bend9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6ead.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(term9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6d78.port_b,roomR08_01.ports[2]) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(tee9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6cc8.port_3,red9b98b828_21c4_44d3_a6f0_6040afb947ff_006e6eb7.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege7c947e9_d32d_4551_97e6_c70eb34fc702_004909c8_seg1.port_b,teee7c947e9_d32d_4551_97e6_c70eb34fc702_00492759.port_2) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee7c947e9_d32d_4551_97e6_c70eb34fc702_00492759.port_3,sege7c947e9_d32d_4551_97e6_c70eb34fc702_004909c8_seg2.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege7c947e9_d32d_4551_97e6_c70eb34fc702_004909c8_seg2.port_b,teee7c947e9_d32d_4551_97e6_c70eb34fc702_004909d7.port_2) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(teee7c947e9_d32d_4551_97e6_c70eb34fc702_004909d7.port_3,sege7c947e9_d32d_4551_97e6_c70eb34fc702_004909c8_seg3.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            
        connect(sege7c947e9_d32d_4551_97e6_c70eb34fc702_004909c8_seg3.port_b,cape7c947e9_d32d_4551_97e6_c70eb34fc702_0072c1e4.port_a) annotation (Line(points={{-46,16},{-28,
            16}}, color={0,127,255}));
            		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00492327 - skipping connection to e7c947e9_d32d_4551_97e6_c70eb34fc702_00492792
		// Cannot find component inst:940b52ee-bf99-41b0-ba08-1a3cd71d6032-00490cd0 - skipping connection to e7c947e9_d32d_4551_97e6_c70eb34fc702_00492792
		// Cannot find component inst:e7c947e9-d32d-4551-97e6-c70eb34fc702-004909c8 - skipping connection to e7c947e9_d32d_4551_97e6_c70eb34fc702_0072c1e4

        annotation (experiment(StartTime=0,StopTime=86400, __Dymola_Algorithm="Dassl"));
      end Model;