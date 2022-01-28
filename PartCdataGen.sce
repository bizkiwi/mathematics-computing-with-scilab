// ============================================================================
// Organisation: UNITEC Institute of Technology
// Author: Stephen Julian (Student ID: 1041664, Email: julias04@myunitec.ac.nz)
// Project: MG6190 Mathematics 2 - Computing Assignment - SciLab Program Code
// Title: PART C - Generate Measurement Data between Limits, Plot on Graph
// File name: PartCdataGen.sce
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

// Next, output title to console window:
mprintf('GENERATE MEASUREMENT DATA BETWEEN LIMITS, PLOT ON GRAPH:')
mprintf('\n\n')

// Next, prompt user for parameter values for our calculations...
// ...and assign the user-provided values to variables.
Xa=input('What is the value for the LOWER LIMIT (Xa)? ')
Xb=input('What is the value for the UPPER LIMIT (Xb)? ')

// Next, assign the user-provided values for the lower and upper limits to x:
x=Xa:Xb; 

// Next, calculate values of y for each (whole number) value of x...
// between the user-provided lower and upper limits:
y=((8*sin(%pi*x/15))^2)./x; 

// Next, plot 2D graph displaying each calculated value of y for each...
// (whole number) of x between user-provided values of lower and upper limits:
mprintf('Now plotting 2D graph of generated measurement data in Graphics Window:')
xtitle('Values of y of x', 'Values of x (between limits 0 and 100)', 'Values of y')
plot2d(x,y) 

// Next, restore SciLab Console mode back to original settings...
// ...to help prevent unnecessary problems for the operator later:
mode(sciLabOriginalModeSetting);
// END program code.


