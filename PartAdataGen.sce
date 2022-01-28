// ============================================================================
// Organisation: UNITEC Institute of Technology
// Author: Stephen Julian (Student ID: 1041664, Email: julias04@myunitec.ac.nz)
// Project: MG6190 Mathematics 2 - Computing Assignment - SciLab Program Code
// Title: PART A - Generate Measurement Data between Limits, Plot on Graph
// File name: PartAdataGen.sce
// Last updated: 24/07/2020
// ============================================================================
//
// START program code...

// START prepare SciLab code execution environment...
close() // close existing graph related GUI elements
clearglobal() // clear global variables
clear() // clear existing console log
clc() // clear command window
clf() // clear existing graph windows
close() // closes graphic figures, progressionbars or waitbars
// get existing Console mode setting currently being used by SciLab:
sciLabOriginalModeSetting = mode(); 
mode(-1) // temp disabling of verbose Console output for faster code execution.
format("v",25); // set console variable output precision to maximum 25 digits.
// END prepare SciLab code execution environment.

// START function y=f(R,C)
function y=f(Vs,R,C)
    // if [R or C]==0 then we would be about to attempt to divide by zero...
    // which would produce a "NAN" ("not a number") error.
    // Therefore, we will next workaround this issue by...
    // reassigning an atomically small value to the variable x...
    // ([R or C]=1*10^-35)...
    // this being 1 following 34 zeros...
    // to the right of the decimal point...
    // this value is near to the smallest value that...
    // can be specified for the double variable data type. 
    // By assigning the smallest value possible this helps...
    // to maximise the accuracy of the calculated values...
    // that are output by this function.
    if R==0 then
        R=1*10^-35
	end
    if C==0 then
        C=1*10^-35
	end
    TC=R*C // calculate TC = Time Constant = RC
    TC5=round(TC*5) // calculate TC5 = Time Constant * 5
    t=0:TC5 // assign user-provided values for lower and upper limits to t.
    output=0;
    output=output+(Vs*(1-(1*%e^((0-t)/(R*C))))); // calculate function output.
    y=output;
endfunction
// FINISH function y=f(x)

// Next, output title to console window:
mprintf('GENERATE MEASUREMENT DATA BETWEEN LIMITS, PLOT ON GRAPH:')
mprintf('\n\n')

// Next, prompt user for parameter values for our calculations...
// and assign the user-provided values to variables.
Vs=input('1) What is the value for the SUPPLY VOLTAGE (Vs) in units of Volts? ')
R=input('2) What is the value for the RESISTANCE (R) in units of Ohms? ')
C=input('3) What is the value for the CAPACITANCE (C) in units of micro-Farads? ')

// START calculations:
C=C/1000000 // divide C by 1 million to convert microFarads into Farads.
TC=R*C // calculate TC = Time Constant = RC
TC5=round(TC*5) // calculate TC5 = Time Constant * 5
t=0:TC5 // Next, assign the user-provided values for the lower and upper limits to t
Vc=f(Vs,R,C) // Vc = Capacitor voltage
// END calculations.

// Next, output calculated values to console window:
mprintf('\n\n')
mprintf('\n\n')
mprintf('CALCULATIONS RESULTS:')
mprintf('\n\n')
mprintf('1) R x C = TIME CONSTANT (TC): %f',TC)
mprintf('(s)\n\n')
mprintf('2) 5 x TIME CONSTANT (TC5): %f',TC5)
mprintf('(s)\n   Note: TC5 = t when capacitor fully charged (Vc == Vs).\n\n\n')

// Next, plot 2D graph displaying each calculated value of y for each...
// (whole number) value x between user-provided values for lower & upper limits:
mprintf('GRAPH RESULTS (Vc versus t):')
mprintf('\n\n')
mprintf('See the 2D graph in the Graphics Window...')
xtitle('Values of Vc versus t', 't (seconds)', 'Vc (Volts)')
plot2d(t,Vc)

// Next, restore SciLab Console mode back to original settings...
// ...to help prevent unnecessary problems for the operator later:
mode(sciLabOriginalModeSetting);

// END program code.




