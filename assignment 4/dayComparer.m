function [increaseSubject] = dayComparer(SubjectID,day1,day2)
% Question 5
% Create a function that takes the subject IDs along with the two days to return a matrix.
% The matrix should return the subject IDs of the subjects who had an increase from the first day to the second day.
% The same should occur with the subjects who had an increase from the second day to the third day.
% Be sure to run this function twice in the main scrpit 
% During the second time update your inputs when you call the function in the main scrpit. 
for i = 1:length(SubjectID)
    if (day2(i)-day1(i)) > 0
        increaseSubject = SubjectID(i);
    end
end