% Question 6: Write a function that takes a number as input and returns true if the number is a
% prime number and false if the number is not prime.

function [outputArg1] = primeNumber(inputArg1)
if isprime(inputArg1)
    outputArg1 = true;
else
    outputArg1 = false;
end