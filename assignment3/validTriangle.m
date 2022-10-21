%Question 5: Write a function that accepts a single 3-element array (e.g. [3 4 5]), and returns a
%logical value (0 or 1) indicating if the 3 elements of the array represent the sides
%of a valid triangle.
%For those who can't remember...in a valid triangle the sum of the lengths of the 2
%shorter sides are greater than the length of the longest side.

function [outputArg1] = validTriangle(inputSides)
T = sort(inputSides);
if T(1,3) < T(1,2) + T(1,1)
    outputArg1 = true;
else
    outputArg1 = false;
end