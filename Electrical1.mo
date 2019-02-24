within FirstSteps;

model Electrical1 "First example"
  //Parameters are constant variables
  parameter Real R = 10 "Resistance";
  parameter Real L = 2 "Inductance";
  parameter Real v = 20 "Total DC Voltage";
  Real vR "Voltage drop of resistor";
  Real vL "Voltage drop of Inductor";
  Real i "Current";
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
end Electrical1;
