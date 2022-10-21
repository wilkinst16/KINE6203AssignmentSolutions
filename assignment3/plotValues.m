% Question 7: Write a function that takes two vectors and plots their values on a figure. This
%function should set up the figure with titles for the chart and each axis (can be
%generic names).

function [figure] = plotValues(inputVector1,inputVector2)
figure= plot(inputVector1,inputVector2);
title ('Riders HW Plot Vectors')
xlabel ('Las Vegas Raiders Victories')
ylabel ('KINE 6203 Extra Points')
end