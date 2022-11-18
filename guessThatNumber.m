function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME:
%
%         DUE: November 17
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced       
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
%Bug found: The logical operator needed to be switched from || to && to
%ensure the loop runs correctly for inputting an entry. Therefore this was
%corrected on line 48! 
end

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; %Bug found: Changed advancedhighest to advancedHighestso it reflects line 29 where it was initially recorded!     
end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(rand() + 1 * highest); 
secretNumber = randi(highest); 
%Bug Found: Line 73 needed to be added to allow the highest number for the
%level of play to occur. 

% initialize number of guesses and User_guess

numOfTries = 0;
userGuess = 0;
%Bug found: Previously numofTries was equal to 1. However, it needed to be
%and was set equal to 0 to ensure the number of tries wasn't greater than
%the quantity present. 

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
% Bug found: one End is missing. Therefore, an end needs to be added for
% the loop to run properly. This was added on line 130! 

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest
%Bug found: On line 95 it was changed to "userGuess > highest" since it
%previously had userGuess >= highest. Therefore, this correction will allow
%the highest number to appear as well as if the number is below 1.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber 
%Bug Found: The sign previously present was "userGuess > secretNumber".
%This is also what was presented in line 116. Therefore the sign was
%changed so everything would run correctly to avoid duplicating the conditions. 
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber,numOfTries);
%Bug found: On line 123, the numOfTries variable was added to ensure the
%number of tries guessed appeared in the game. 

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop
end 

% end of game