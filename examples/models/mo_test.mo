model mo_test "Test model"
    parameter Real x;
    parameter Real y=20;
    Real z(unit="kW",
            quantity="heatFlow",
            replaceable package Medium = MediumA)=20;
equation
    z = x*y;
end mo_test;