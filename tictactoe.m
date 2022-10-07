% Summary: Thanks to the software known as MatLab, a game of Tic Tac Toe was created
% by yours truly. This will consist of where the user is playing against
% the computer. The outcome should result in this game will be won by the user,
% computer, and or in a tie. A 3x3 matrix with numbers 1-9 helps make up
% the gameboard. Initially the user will be asked if they would like to
% play. This will require the user to enter yes or no. Furthermore, if yes
% is select than the game will begin and if no is selected the game will
% end.For users that select yes they can move first and than the computer
% will select next. This process will continue back and forth until three
% x's are in a row for either the user or computer. If all spots are filled
% without three x's being in a row than it will result in a tie. Once the
% any of these results happen the player will then be asked if they would
% like to play again. Therefore, everything just stated will occurred again
% in the same order. 

disp('Welcome to a game of Tic Tak Toe presented to you by yours truly via MatLab R2022a')
%ask user if they want to play
doYouWantToPlay = input("Do you want to play? Please type yes or no","s");
%if yes is typed game will begin
%if no is typed game will end resulting in "see you next time"
if strcmpi(doYouWantToPlay,'yes') 
    %Gameboard will pop if yes is selected
    gameboard = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
    disp(gameboard)
elseif strcmpi(doYouWantToPlay,'no')
    disp('See you next time!')
end
    i=1;
'1' ==gameboard(1,1);
'2' ==gameboard(1,2);
'3' ==gameboard(1,3);
'4' ==gameboard(2,1);
'5' ==gameboard(2,2);
'6' ==gameboard(2,3);
'7' ==gameboard(3,1);
'8' ==gameboard(3,2);
'9' ==gameboard(3,3);

%User now can move 
movesAvailable = 1:9;
userMove=input("Please select where you would like to move","s");
gameboard(userMove) = 'T';
% The letter T will occur in the spot selected
disp(gameboard)
movesAvailable = setdiff(movesAvailable,userMove);
%Computer will have opportunity to move
disp("Computer it is now your turn to move")
computerMove=randi(9);
verifyMove = ismember(verifyMove,movesAvailable);
if verifyMove == true
gameboard(computerMove) = 'O';

else 
     verifyMove= false            
        computerMove= randi (9); 
        verifyMove= ismember(verifyMove, movesAvailable);
    end 
    gameboard(computerMove) = 'O';

disp(gameboard)
movesAvailable = setdiff(movesAvailable,move);
%It is back to being the users turn 
userMove= input("Please select where you would like to move"); 
verifyMove= ismember (userMove,movesAvailable); 
if verifyMove== true 
gameboard(userMove) = 'T';
else 
     verifyMove=false; 
        userMove= input ('Please select a move that is available.');  
        verifyMove= ismember (userMove,movesAvailable); 
    end
    gameboard(userMove) = 'T';  

disp(gameboard)
movesAvailable = setdiff(movesAvailable,userMove);
%Computer will have another opportunity to move
disp("Computer's turn") 
computerMove=randi(9);
verifyMove= ismember(move,movesAvailable);   
if verifyMove== true 
gameboard(move) = 'O';

else 
     verifyMove= false;           
        move= randi (9);
        verifyMove= ismember(move, movesAvailable);
    end 
    gameboard(move) = 'O';
 
disp(gameboard)
    movesAvailable = setdiff(movesAvailable,move);
%It is back to being the users turn 
userMove= input ("Please select where you would like to move"); 
verifyMove= ismember (userMove,movesAvailable);
if verifyMove== true 
gameboard(userMove) = 'T';
else 
     verifyMove=false;
        userMove= input ('Select a move that is availble on the gameboard');
        verifyMove= ismember (userMove,movesAvailable);
    end
    gameboard(userMove) = 'T';

disp(gameboard)
%Verify if user won the game 
if (gameboard (1,1)=='T'&& gameboard(1,2)=='T' && gameboard(1,3)=='T') 
    disp('Game Won By User!')
     
elseif (gameboard (1,1)=='T'&& gameboard(2,1)=='T' && gameboard(3,1)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (1,1)=='T'&& gameboard(2,2)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (1,3)=='T'&& gameboard(2,3)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (3,1)=='T'&& gameboard(3,2)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (3,1)=='T'&& gameboard(2,2)=='T' && gameboard(1,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (2,1)=='T'&& gameboard(2,2)=='T' && gameboard(2,3)=='T')
    disp('Game Won By User!')
    
elseif  (gameboard (1,2)=='T'&& gameboard(2,2)=='T' && gameboard(3,2)=='T')
    disp('Game Won By User!')
    
end
%Verify if computer won game
if (gameboard (1,1)=='O'&& gameboard(1,2)=='O' && gameboard(1,3)=='O')
    disp('Game Won By Computer!')
     
elseif (gameboard (1,1)=='O'&& gameboard(2,1)=='O' && gameboard(3,1)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,1)=='O'&& gameboard(2,2)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,3)=='O'&& gameboard(2,3)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (3,1)=='O'&& gameboard(3,2)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (3,1)=='O'&& gameboard(2,2)=='O' && gameboard(1,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (2,1)=='O'&& gameboard(2,2)=='O' && gameboard(2,3)=='O')
    disp('Game Won By Computer!')
    
elseif  (gameboard (1,2)=='O'&& gameboard(2,2)=='O' && gameboard(3,2)=='O')
    disp('Game Won By Computer!')
    
end

movesAvailable = setdiff(movesAvailable,userMove);
disp("Computer's turn") %computermove3
computerMove=randi(9);
verifyMove= ismember(move,movesAvailable);   
if verifyMove== true 
gameboard(move) = 'O';

else 
     verifyMove= false;            
        move= randi (9);
        verifyMove= ismember(move, movesAvailable);
    end 
    gameboard(move) = 'O';
   
disp(gameboard)
    movesAvailable = setdiff(movesAvailable,move);
%Verify if user won game 
if (gameboard (1,1)=='T'&& gameboard(1,2)=='T' && gameboard(1,3)=='T') 
    disp('Game Won By User!')
     
elseif (gameboard (1,1)=='T'&& gameboard(2,1)=='T' && gameboard(3,1)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (1,1)=='T'&& gameboard(2,2)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (1,3)=='T'&& gameboard(2,3)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (3,1)=='T'&& gameboard(3,2)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (3,1)=='T'&& gameboard(2,2)=='T' && gameboard(1,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (2,1)=='T'&& gameboard(2,2)=='T' && gameboard(2,3)=='T')
    disp('Game Won By User!')
    
elseif  (gameboard (1,2)=='T'&& gameboard(2,2)=='T' && gameboard(3,2)=='T')
    disp('Game Won By User!')
    
end
%Verify if the computer won the game
if (gameboard (1,1)=='O'&& gameboard(1,2)=='O' && gameboard(1,3)=='O')
    disp('Game Won By Computer!')
     
elseif (gameboard (1,1)=='O'&& gameboard(2,1)=='O' && gameboard(3,1)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,1)=='O'&& gameboard(2,2)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,3)=='O'&& gameboard(2,3)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (3,1)=='O'&& gameboard(3,2)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (3,1)=='O'&& gameboard(2,2)=='O' && gameboard(1,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (2,1)=='O'&& gameboard(2,2)=='O' && gameboard(2,3)=='O')
    disp('Game Won By Computer!')
    
elseif  (gameboard (1,2)=='O'&& gameboard(2,2)=='O' && gameboard(3,2)=='O')
    disp('Game Won By Computer!')
    
end
%%It is back to being the users turn 
userMove= input ("Please select where you would like to move"); 
verifyMove= ismember (userMove,movesAvailable);
if verifyMove== true 
gameboard(userMove) = 'T';
else 
     verifyMove=false;
        userMove= input('Select a move that is availble on the gameboard');
        verifyMove= ismember (userMove,movesAvailable);
    end
    gameboard(userMove) = 'T';

disp(gameboard)
%Verify if user won game 
if (gameboard (1,1)=='T'&& gameboard(1,2)=='T' && gameboard(1,3)=='T') 
    disp('Game Won By User!')
     
elseif (gameboard (1,1)=='T'&& gameboard(2,1)=='T' && gameboard(3,1)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (1,1)=='T'&& gameboard(2,2)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (1,3)=='T'&& gameboard(2,3)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (3,1)=='T'&& gameboard(3,2)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (3,1)=='T'&& gameboard(2,2)=='T' && gameboard(1,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (2,1)=='T'&& gameboard(2,2)=='T' && gameboard(2,3)=='T')
    disp('Game Won By User!')
    
elseif  (gameboard (1,2)=='T'&& gameboard(2,2)=='T' && gameboard(3,2)=='T')
    disp('Game Won By User!')
    
end
%Verify if the computer won the game
if (gameboard (1,1)=='O'&& gameboard(1,2)=='O' && gameboard(1,3)=='O')
    disp('Game Won By Computer!')
     
elseif (gameboard (1,1)=='O'&& gameboard(2,1)=='O' && gameboard(3,1)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,1)=='O'&& gameboard(2,2)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,3)=='O'&& gameboard(2,3)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (3,1)=='O'&& gameboard(3,2)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (3,1)=='O'&& gameboard(2,2)=='O' && gameboard(1,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (2,1)=='O'&& gameboard(2,2)=='O' && gameboard(2,3)=='O')
    disp('Game Won By Computer!')
    
elseif  (gameboard (1,2)=='O'&& gameboard(2,2)=='O' && gameboard(3,2)=='O')
    disp('Game Won By Computer!')
    
end
movesAvailable = setdiff(movesAvailable,userMove);
%Computer will have opportunity to move
disp("Computer's turn") 
computerMove=randi(9);
verifyMove= ismember(move,movesAvailable);   
if verifyMove== true 
gameboard(move) = 'O';
else 
     verifyMove== false;            
        move= randi (9);
        verifyMove= ismember(move, movesAvailable);
    end 
    gameboard(move) = 'O';
 
disp(gameboard)
    movesAvailable = setdiff(movesAvailable,move);
%Verify if user won the game 
if (gameboard (1,1)=='T'&& gameboard(1,2)=='T' && gameboard(1,3)=='T') 
    disp('Game Won By User!')
     
elseif (gameboard (1,1)=='T'&& gameboard(2,1)=='T' && gameboard(3,1)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (1,1)=='T'&& gameboard(2,2)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (1,3)=='T'&& gameboard(2,3)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (3,1)=='T'&& gameboard(3,2)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (3,1)=='T'&& gameboard(2,2)=='T' && gameboard(1,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (2,1)=='T'&& gameboard(2,2)=='T' && gameboard(2,3)=='T')
    disp('Game Won By User!')
    
elseif  (gameboard (1,2)=='T'&& gameboard(2,2)=='T' && gameboard(3,2)=='T')
    disp('Game Won By User!')
    
end
%Verify if the computer won the game
if (gameboard (1,1)=='O'&& gameboard(1,2)=='O' && gameboard(1,3)=='O')
    disp('Game Won By Computer!')
     
elseif (gameboard (1,1)=='O'&& gameboard(2,1)=='O' && gameboard(3,1)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,1)=='O'&& gameboard(2,2)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,3)=='O'&& gameboard(2,3)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (3,1)=='O'&& gameboard(3,2)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (3,1)=='O'&& gameboard(2,2)=='O' && gameboard(1,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (2,1)=='O'&& gameboard(2,2)=='O' && gameboard(2,3)=='O')
    disp('Game Won By Computer!')
    
elseif  (gameboard (1,2)=='O'&& gameboard(2,2)=='O' && gameboard(3,2)=='O')
    disp('Game Won By Computer!')
    
end
%It is back to being the users turn 
userMove= input ("Please select where you would like to move"); 
verifyMove= ismember (userMove,movesAvailable);
if verifyMove== true 
gameboard(userMove) = 'T';
else 
     verifyMove=false;
        userMove= input('Select a move that is availble on the gameboard');
        verifyMove= ismember(userMove,movesAvailable);
    end
    gameboard(userMove) = 'T';

disp(gameboard)
%Verify if user won the game 
if (gameboard (1,1)=='T'&& gameboard(1,2)=='T' && gameboard(1,3)=='T') 
    disp('Game Won By User!')
     
elseif (gameboard (1,1)=='T'&& gameboard(2,1)=='T' && gameboard(3,1)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (1,1)=='T'&& gameboard(2,2)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (1,3)=='T'&& gameboard(2,3)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (3,1)=='T'&& gameboard(3,2)=='T' && gameboard(3,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (3,1)=='T'&& gameboard(2,2)=='T' && gameboard(1,3)=='T')
    disp('Game Won By User!')
    
elseif (gameboard (2,1)=='T'&& gameboard(2,2)=='T' && gameboard(2,3)=='T')
    disp('Game Won By User!')
    
elseif  (gameboard (1,2)=='T'&& gameboard(2,2)=='T' && gameboard(3,2)=='T')
    disp('Game Won By User!')
        
end
%Verify if the computer won the game
if (gameboard (1,1)=='O'&& gameboard(1,2)=='O' && gameboard(1,3)=='O')
    disp('Game Won By Computer!')
     
elseif (gameboard (1,1)=='O'&& gameboard(2,1)=='O' && gameboard(3,1)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,1)=='O'&& gameboard(2,2)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,3)=='O'&& gameboard(2,3)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (3,1)=='O'&& gameboard(3,2)=='O' && gameboard(3,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (3,1)=='O'&& gameboard(2,2)=='O' && gameboard(1,3)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (2,1)=='O'&& gameboard(2,2)=='O' && gameboard(2,3)=='O')
    disp('Game Won By Computer!')
    
elseif  (gameboard (1,2)=='O'&& gameboard(2,2)=='O' && gameboard(3,2)=='O')
    disp('Game Won By Computer!')
    
elseif (gameboard (1,1)~= gameboard(1,2)~= gameboard(1,3)~=gameboard (1,2)~= gameboard (2,2)~= gameboard (3,2) ~= gameboard (1,3)~= gameboard(2,3) ~=gameboard (3,3))
    disp('Game resulted in a tie, please play again!') 
    
end 
    
disp('Welcome to a game of Tic Tak Toe presented to you by yours truly via MatLab R2022a')
doYouWanttoPlay= input('Do you want to play again? yes or no.',"s"); 
if strcmp (doYouWanttoPlay,'yes') 
else strcmp (doYouWanttoPlay,'no')  
    disp('We appreciate you and say thank you for choosing to play Tic Tak Toe with us!.')  
end 