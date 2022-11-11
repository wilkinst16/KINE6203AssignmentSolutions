% Assignment 4 
% In this assignment this file will serve as the master script in which will run
% the analysis. 
% This is the only file that should be available to run.
% Several functions will be created for certain tasks that will be called from this file. 

% Import file named "importfile.m" by creating a function. 

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');

% Create a function (name it genderIsoCalc.m) that returns four outputs.

[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,day1,day2,day3);

% Create a function (name it dayComparer.m) that returns the increase in subjects from day1today2 and from day2today3. 
day1toDay2 = dayComparer(SubjectID,day1,day2);
day2toDay3 = dayComparer(SubjectID,day1,day2);

% The isokinetic data needs the weight normalize by grouping the means for each day. 
% The obtained values need to be stored with the following names:
% normDay1mean, normDay2mean, normDay3mean. 
% No written function is necessary for this action.
normDay1mean = weightNormalize(Weight,Day1);
normDay2mean = weightNormalize(Weight,Day2);
normDay3mean = weightNormalize(Weight,Day3);

% Export the results obtain to a csvfile using an appropriate built-in function. 
% Name the file iso_results.csv.
results = table(maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, day1toDay2, day2toDay3, normDay1mean, normDay2mean, normDay3mean);
writetable ('iso_results.csv')

% Note that additional comments can also be found on the genderIsoCalc and
% dayComparer data files! 