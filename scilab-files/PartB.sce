// ============================================================================
// Organisation: UNITEC Institute of Technology
// Author: Stephen Julian (Student ID: 1041664, Email: julias04@myunitec.ac.nz)
// Project: MG6190 Mathematics 2 - Computing Assignment
// Title: PART B - Discrete Fourier Transform - Program Code for SciLab
// File name: PartB.sce
// Last updated: 24/07/2020
// ============================================================================
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

// START declare global variables..
N=1000 // N=1000 (as in 1000 milliseconds in 1 second)
td=1:N; // TimeDomain = td = 1:N = 1:1000
fd=0:N-1; // FrequencyDomain = fd = 0:N-1 = 0:1000-1 = 0:999
// END declare global variables.

// START function for calculations generating time domain measurement data...
// and discrete fourier transforms...
function DiscreteFourierTransform=FrequencyDomainData(k)
	// declare the local variables of the function below.
	summation=0; // initialise summation to zero.
	// START for loop to iterate through each millisecond of the time domain...
	for t=td // TimeDomain = td = 1:N = 1:1000
        // generate TimeDomain measurement data and assign to variable y.
		y=sin((2*%pi*t)/100)+sin((2*%pi*t)/10)+sin((3*%pi*t)/3)+sin((4*%pi*t)/4); 
		// valid range for n = fd = 0:999...
        // (apply n=t-1 because time step specified in requirements is 1ms)
        n=t-1;
        // Next, add discrete fourier transform calculation of value of y...
        // to the summation variable.
		summation = summation + (y*%e^(-sqrt(-1)*((2*%pi*n*k)/N)));
	end
	// END for loop.
    // Next, output the absolute value of the summation variable:
	DiscreteFourierTransform=abs(summation); 
endfunction
// END function.

// assign to f the output of the function for the frequency domain:
f=FrequencyDomainData(fd); // FrequencyDomain = fd = 0:N-1 = 0:1000-1 = 0:999

// Next, plot 2D graph for data output of frequency (y-axis) VS time (x-axis).
// Graph labelling:
xtitle('Frequency / f (Hz) vs Time / t (ms)', 'Time / t (ms)', 'Frequency / f (Hz)'); 
plot2d(td,f); // Plot 2D Graph.

// Next, restore SciLab Console mode back to original settings...
// ...to help prevent unnecessary problems for the operator later:
mode(sciLabOriginalModeSetting); 

// END program code.


