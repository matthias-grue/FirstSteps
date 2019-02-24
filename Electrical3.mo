within FirstSteps;

model Electrical3 "First example"
  //Parameters are constant variables
  parameter Modelica.SIunits.Resistance R = 10 "Resistance";
  parameter Modelica.SIunits.Inductance L = 2 "Inductance";
  parameter Modelica.SIunits.Voltage v = 20 "Total DC Voltage";
  Modelica.SIunits.Voltage vR "Voltage drop of resistor";
  Modelica.SIunits.Voltage vL "Voltage drop of Inductor";
  Modelica.SIunits.Voltage i "Current";
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
end Electrical3;
