// ============================================================================
// Organisation: UNITEC Institute of Technology
// Author: Stephen Julian (Student ID: 1041664, Email: julias04@myunitec.ac.nz)
// Project: MG6190 Mathematics 2 - Computing Assignment
// Title: PART A - Charging a Capacitor - Program Code for SciLab
// File name: PartAcharge.sce
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

// START function y=f(x):
function y=f(x)   
	if x==0 then
        // if x==0 then we would be about to attempt to divide by zero...
        // which would produce a "NAN" ("not a number") error.
        // Therefore, we will next workaround this issue by...
        // reassigning an atomically small value to the variable x...
        // (x=1*10^-35)...
        // this being 1 following 34 zeros...
        // to the right of the decimal point...
        // this value is near to the smallest value that...
        // can be specified for the double variable data type. 
        // By assigning the smallest value possible this helps...
        // to maximise the accuracy of the calculated values...
        // that are output by this function.
        x=1*10^-35
	end
	y=((8*sin(%pi*x/15))^2)./x; // calculate function output
endfunction
// END function.

// Next, write title to console window.
mprintf('CALCULATION OF CAPACITOR VOLTAGE WHEN CHARGING A CAPACITOR:')
mprintf('\n\n') // write 2 x carriage returns

// Next, prompt user for parameter values for our calculations...
// and assign the user-provided values to variables.
Vo=input('What is the value for the INITIAL VOLTAGE (Vo)? ')
R=input('What is the value for the RESISTANCE (R)? ')
C=input('What is the value for the CAPACITANCE (C)? ')
t=input('What is the value for the TIME ELAPSED (t)? ')

// START calculate capacitor voltage when charging...
TC=R*C // calculate TC = Time Constant = RC
TC5 = TC*5 // calculate TC5 = Time Constant * 5
V=Vo*%e^((-1*t)/R*C); // 
td=0:TC5
// END calculate capacitor voltage when charging.

// output calculated value to console window with highest precision possible:
mprintf('CAPACITOR VOLTAGE: %f',V)

// Next, restore SciLab Console mode back to original settings...
// ...to help prevent unnecessary problems for the operator later:
mode(sciLabOriginalModeSetting);
// END program code.
