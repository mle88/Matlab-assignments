%%
%this is the players state, when player==1, they have won
player1 = 0;
player2 = 0;
winner = 0;
figure; 
axis([0 3 0 3]);
xticks(0:1:3);
yticks(0:1:3);
grid on;
% if its an even turn or zero then it is player one's turn
% if its an odd turn then it is players two's turn
turn=0;
gameBoard = [0 0 0; 0 0 0; 0 0 0];
while (winner ~= 1)

    

    %This is setting the game board. The values will change to 1 when they
    %have been filled in
    
    
        [x y] = ginput(1)
        %This will plot a marker for each players input
        if x <= 1 && y <= 1
            hold on;
            plot(0.5,0.5,'x')
            gameBoard(3,1) = 1
        elseif x <= 2 && y <= 2 && x > 1 && y > 1
            hold on;
            plot(1.5,1.5,'x')
            gameBoard(2,2) = 1
        elseif x <= 3 && y <= 3 && x > 2 && y > 2
            hold on;
            plot(2.5,2.5,'x')
            gameBoard(1,3) = 1
        elseif x <= 3 && y <= 1 && x >2
            hold on;
            plot(2.5,0.5,'x')
            gameBoard(3,3) = 1
        elseif x <= 3 && y <= 2 && x >2 && y >1
            hold on;
            plot(2.5,1.5,'x')
            gameBoard(2,3) = 1
        elseif x <= 2 && y <= 3 && y > 2 && x>1
            hold on;
            plot(1.5,2.5,'x')
            gameBoard(1,2) = 1
        elseif x <= 2 && y <= 1 && x>1 
            hold on;
            plot(1.5,0.5,'x') 
            gameBoard(3,2) = 1
        elseif x <= 1 && y <= 2 && y >1
            hold on;
            plot(0.5,1.5,'x')
            gameBoard(2,1) = 1
        else x <= 1 && y <= 3 && y > 2
            hold on;
            plot(0.5,2.5,'x')
            gameBoard(1,1) = 1
        end
        if gameBoard (1,1) ==1 && gameBoard (1,2) ==1 && gameBoard (1,3) ==1 
            winner = 1;
        elseif gameBoard (2,1) ==1 && gameBoard (2,2) ==1 && gameBoard (2,3) == 1
            winner = 1;
        elseif gameBoard (3,1) ==1 && gameBoard (3,2) ==1 && gameBoard (3,3) == 1
            winner = 1;
        elseif gameBoard (1,1) ==1 && gameBoard (2,1) ==1 && gameBoard (3,1) == 1
            winner = 1;
        elseif gameBoard (1,2) ==1 && gameBoard (2,2) ==1 && gameBoard (3,2) == 1
            winner = 1;
        elseif gameBoard (1,3) ==1 && gameBoard (2,3) ==1 && gameBoard (3,3) == 1
            winner = 1;
        elseif gameBoard (1,1) ==1 && gameBoard (2,2) ==1 && gameBoard (3,3) == 1
            winner = 1;
        else gameBoard (1,3) ==1 && gameBoard (2,2) ==1 && gameBoard (3,1) == 1
            winner = 1;
        end
end
    %close all;

%% Winning placements

    