% Question 8: Write a function that takes 2 numbers as input and displays a counter from the
% lower number to the higher number.
% If Inputs = (a, b)
% Expected output:
% a
% a+1
% a+2
% …
% b

function lowhighNumCounter(a,b)
for input=a:b
if a<b
    a= a+1;
    disp(a)
else
    b= b+1;
    disp(b)
end
end
