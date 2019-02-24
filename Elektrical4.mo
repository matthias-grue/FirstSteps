within FirstSteps;

model Elektrical4
  extends Modelica.Icons.Example;
  parameter Modelica.SIunits.Resistance R = 10 "Resitance";
  parameter Modelica.SIunits.Inductance L = 2 "Inductance";
  parameter Modelica.SIunits.Voltage v = 20 "Total DC voltage";
  // alias-variables to simplify result access
  Modelica.SIunits.Voltage vR = resistor.v "Voltage drop of resistor";
  Modelica.SIunits.Voltage vL = inductor.v "Voltage drop of inductance";
  Modelica.SIunits.Current i = resistor.i "Current";

  
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-40, -52}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = R)  annotation(
    Placement(visible = true, transformation(origin = {-24, -12}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = L)  annotation(
    Placement(visible = true, transformation(origin = {6, -12}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V = v)  annotation(
    Placement(visible = true, transformation(origin = {-40, -28}, extent = {{-6, -6}, {6, 6}}, rotation = -90)));

initial equation
  inductor.i = 0;
  
equation
  connect(ground.p, constantVoltage.n) annotation(
    Line(points = {{-40, -46}, {-40, -46}, {-40, -34}, {-40, -34}}, color = {0, 0, 255}));
  connect(constantVoltage.p, resistor.p) annotation(
    Line(points = {{-40, -22}, {-40, -12}, {-30, -12}}, color = {0, 0, 255}));
  connect(ground.p, inductor.n) annotation(
    Line(points = {{-40, -46}, {20, -46}, {20, -12}, {12, -12}}, color = {0, 0, 255}));
  connect(resistor.n, inductor.p) annotation(
    Line(points = {{-18, -12}, {2.98024e-07, -12}, {2.98024e-07, -12}, {2.98024e-07, -12}}, color = {0, 0, 255}));

annotation(
    Diagram,
    Icon);
end Elektrical4;
