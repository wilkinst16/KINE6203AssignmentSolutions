%Question3: Write a function that takes 2 numbers as inputs and returns Woo if their sum is
%even and Hah if their sum is odd.

function [outputArg1] = WooandHah(inputNumber1,inputNumber2)
outputArg1 = inputNumber1+inputNumber2;
if (mod(outputArg1,2) == 0)
    outputArg1 = 'Woo';
else
    outputArg1 = 'Hah';
end