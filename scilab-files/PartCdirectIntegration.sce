// ============================================================================
// Organisation: UNITEC Institute of Technology
// Author: Stephen Julian (Student ID: 1041664, Email: julias04@myunitec.ac.nz)
// Project: MG6190 Mathematics 2 - Computing Assignment
// Title: PART C - Direct Integration - Program Code for SciLab
// File name: PartCdirectIntegration.sce
// Last updated: 28/07/2020
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

// Next, write title to console window.
mprintf('INTEGRATION OF DATA BETWEEN LIMITS, BY DIRECT INTEGRATION:')
mprintf('\n\n') // write 2 x carriage returns

// y=((8*sin(%pi*x/15))^2)./x; // <<== original function from Requirements

// Next, declare variables for limits of Integral
Xa = 0; // Xa = Lower Limit
Xb = 100; // Xb = Upper Limit

// Next, evaluate Direct Integral value:
areaUnits = integrate('((8*sin(%pi*x/15))^2)./x', 'x', Xa, Xb);

// Next, output evaluated Direct Integral value:
mprintf('AREA UNITS: %f',areaUnits) 

// Next, restore SciLab Console mode back to original settings...
// ...to help prevent unnecessary problems for the operator later:
mode(sciLabOriginalModeSetting);
// END program code.


