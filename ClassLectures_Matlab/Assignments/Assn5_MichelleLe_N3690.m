%------------------ Question 1,2,7,6,5
clear all

window=figure; hold on
axis([0 10 0 10]) %creating the window screen's dimensions
high_score = 0; %will store game's highest score
%Question 1: Loading high score
load('Assn5_MichelleLe_N3690', 'high_score')
correct = 0;

%Question 1: Displaying the current high score
high_score1 =['Current high score: ' num2str(high_score) ' seconds']
text(2,7,high_score1,'FontSize', 14)
text(3.5,4,'Click to start','FontSize', 12,'Color','red')

%clears screen of text after a click
waitforbuttonpress
cla 

tic  %start timer
while 1 % Question 7: loop to continue until the player gets 6 points with moving target

    x_cir = rand*10; %- location of target
    y_cir = rand*10;
    
    %Question: 5 This adds distractions
    distract_x = 10*rand(2,2)
    distract_y = 10*rand(2,2)
    plot(distract_x,distract_y, 'r*');
    
    plot(x_cir, y_cir,'o');
    
    [x y] = ginput(1);  %- location of mouse click
    plot(x,y,'x');
    dist_cir = sqrt((x_cir - x)^2 + (y_cir - y)^2);
    
    %Question 6: Penalizing player if they miss
    if dist_cir<0.5
        correct= correct+1;
    else
        pause(5);
    end
    
    if correct == 6
        break
    end
  
end

cla
t = toc % total elapsed time

if high_score==0 || t<high_score
    high_score=t
end

high_score1 =['Current high score: ' num2str(high_score) ' seconds'];

%Question 1: displaying high score and player's score after the game ends
text(2,7,high_score1,'FontSize', 14)
text(2.5,6,['Your time: ' num2str(t) ' seconds'],'FontSize', 14)

%Question 2: Awarding Medals
if t<10
    hold on;
    plot(2,4,'y.', 'MarkerSize',20)
    text(2.3,4,'Congratulations! You get a gold medal')
    pause(1)
    goldMedal=imread('https://banner2.kisspng.com/20180302/giq/kisspng-euclidean-vector-bronze-medal-gold-medal-5a9951e47f6153.0412828215199974125218.jpg');
    goldMedal=image(xlim,ylim,imrotate(goldMedal, 180));
    
elseif t>10 && t<15
    hold on;
    plot(2,4,'.','MarkerEdgeColor',[0.5 0.5 0.5], 'MarkerSize',20)
    text(2.3,4,'Congratulations! You get a silver medal')
elseif t<20 && t>15
    hold on;
    plot(2,4,'.','MarkerEdgeColor',[0.4 0.2 0.2], 'MarkerSize',20)
    text(2.3,4,'Congratulations! You get a bronze medal')
else 
    hold on;
    text(4,3.5,'You do not get a medal...')
    pause(1)
    noMedal=imread('https://www.meme-arsenal.com/memes/78b493372d3f8d44e84e39c0d42cabd0.jpg');
    noMedal=image(xlim,ylim,imrotate(noMedal, 180));
end


%Save the high score
save('Assn5_MichelleLe_N3690', 'high_score')


