Induction machine parameters calculator
=======================================

![alt text](https://raw.githubusercontent.com/davps/induction-machine-params-calculator/master/output-example.PNG)


#### Description ####

This Matlab based software compute the speed, output torque and power, stator current, power factor, and efficiency when an induction motor is operated at rated voltage and frequency.

#### Program structure ####
The program is divided into the following parts:

*	`tpDin`: This function performs the mathematical calculations. Use the following syntax to invoke the function:

``` 
function [na1, ns, Tflecha, Pflecha, I1, fp, nef] = tpDin(s, polos, fe, potencia, VLL, R1, R2, X1, X2, Xm)
``` 

*	`tpDinGrafico`: Plot the values obtained with `tpDin` function.

*	`TpDinGUI`: Presents the results in a user friendly graphical interface. It allows the modification of input parameters.

#### References ####

This program solves the Example 6.2 of the book Electric Machinery (Sixth Edition), from A. E. Fitzgerald. 

