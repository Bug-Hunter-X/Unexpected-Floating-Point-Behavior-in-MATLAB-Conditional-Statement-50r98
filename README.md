# Unexpected Floating-Point Behavior in MATLAB Conditional Statement

This repository demonstrates an uncommon error in MATLAB related to floating-point comparisons within conditional statements.  The issue arises from the inherent imprecision of floating-point numbers, leading to unexpected behavior when comparing them for equality.

## Bug Description
The provided MATLAB function `myFunction` demonstrates the problem.  The function aims to square inputs greater than 5, return 25 if the input is exactly 5, and double the input otherwise. However, due to the limitations of floating-point precision, values that should theoretically equal 5 may not exactly match 5 in memory, leading to unexpected outcomes.

## Solution
The solution involves using a tolerance-based comparison instead of direct equality in the `elseif` condition. This accounts for the minor inaccuracies in floating-point representation.

## How to reproduce the bug
1. Save the code in `bug.m` and execute it in MATLAB.
2. Observe the output when calling the function with a number very close to 5 (e.g., 5.0000000001).

## How to use the solution
1. Replace the content of `bug.m` with the content of `bugSolution.m`.
2. Re-run the code and see that the results now behave as expected. 