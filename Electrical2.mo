within FirstSteps;

model Electrical2 "First example"
  //Parameters are constant variables
  parameter Real R(quantity="resistance", unit="Ohm") = 10 "Resistance";
  parameter Real L(quantity="inductance", unit="H") = 2 "Inductance";
  parameter Real v(quantity="voltage", unit="V") = 20 "Total DC Voltage";
  Real vR(quantity="voltage", unit="V") "Voltage drop of resistor";
  Real vL(quantity="voltage", unit="V") "Voltage drop of Inductor";
  Real i(quantity="current", unit="A") "Current";
initial equation
  i = 0;
equation
/*
  3 equation
  3 unknowns i, vR, vL??
  */
  v = vR + vL;
  vR = R * i;
  vL = L * der(i);
end Electrical2;
