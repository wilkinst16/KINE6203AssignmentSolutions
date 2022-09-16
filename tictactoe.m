
%ask user if they want to play
doYouWantToPlay = input("Do you want to play? Please type yes or no","s")


%process user input
if(doYouWantToPlay == "yes")
    %play tic tac toe
    board = zeros(3,3);
    disp(board)

%ask user move
userMove=input("Where do you want to move","s")
if userMove == 9
else
    %exit game
    x = 10;
end   
end