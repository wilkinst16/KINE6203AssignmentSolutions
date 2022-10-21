%Question 4: Write a function that takes in a number of quarters, dimes, nickels, and pennies
%as inputs and returns the total amount as output.

function [outputArg1] = currency(quarters,dimes,nickels,pennies)
outputArg1 = (quarters*.25) + (dimes*.10) + (nickels*.05) + (pennies*.01);
end