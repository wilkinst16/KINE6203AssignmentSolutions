function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,day1,day2,day3)
% Question 4
% First set of outputs = One for male and one for female
% This should return a matrix with individual mean isometric strength 
% This should so reflect the value of 3 days for each group lifting 
% Second set of outputs = mean of subject means 
% Once completed call function into the main scrpit and store values with
% the following variable names:
% maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, and femaleGroupIsoMean.

for i = 1:length(Gender) 
    if Gender(i) == 'M'
        maleIsoIndMeans(i) = mean(day1(i)+day2(i)+day3(i))/3;
    elseif Gender (i) == 'F'
        femaleIsoIndMeans(i) = mean(day1(i)+day2(i)+day3(i))/3;
   end
end

maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);
end 