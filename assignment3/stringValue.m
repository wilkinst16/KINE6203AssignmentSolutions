% Question 9: Write a function that takes a string value as input and returns the length of the
% string and the first and last character as outputs.
% If input = %Halloween 
% Expected Output:
% 9
% H
% n

function [lengthString,firstCharacter,lastCharacter] = stringValue(inputWord)
lengthString = strlength(inputWord);
firstCharacter = inputWord (1,1);
lastCharacter = inputWord (1,lengthString);

disp(lengthString)
disp(firstCharacter)
disp(lastCharacter) 
end