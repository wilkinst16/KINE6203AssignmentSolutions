function [totalAmount] = changeCalc(quarter,dime,nickel,penny)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
 totalAmount = (quarter * .25)+(dime * .10)+(nickel * .05)+(penny * .01);
 
end