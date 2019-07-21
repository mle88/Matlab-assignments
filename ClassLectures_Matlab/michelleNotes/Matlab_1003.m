%%-----------------------------------------------------------
%Objective: Game where user clicks on randomly appearing targets. Output will
%be the time taken to finish the game
%
%
%--------------------------------------------------------

%%
%Create a clock to time the function run time
tic % start timer

for i = 1:1000000
    r(i)=rand;
end

t= toc %total elasped time

figure (1) % (n) gives a unique identifier, n, for figure
counter = 0
points = 0
while points<6
    
x= round(rand*10)
y= round(rand*10)
axis([0 10 0 10])
hold on;
plot(x,y,'O')
userInput=ginput(1)
userInput=round(userInput)
hold on;
plot(userInput(1),userInput(2), 'X')

if userInput(1) == x & userInput(2) == y
    points=points+1        
end

t
end





%%
clear all;
data_circle = []
%data_click = []

tic
figure; hold on
axis([0 10 0 10])
points =0;
for i=1:6
    x_cir =rand*10
    y_cir = rand*10
    data_circle = [data_circle; [x_cir,y_cir]]%data_circle = [data circle, x_cir,y_cir]
    plot (x_cir, y_cir, 'o')
    [x y] = ginput(1)
    hold on; plot (x, y, 'x')
    %data_click = [data_click; [x(i), y(i)]] %<--puts each input as a row data_click = [data_click, x(i), y(i)]<--this puts them all in one row
    dist = sqrt((x_cir - x)^2 + (y_cir -y)^2)
    while dist > 0.5
        plot (x_cir,y_cir, " ")
        x_cir =rand*10
        y_cir = rand*10
        plot (x_cir, y_cir, 'o')
        [x y] = ginput(1)
        hold on; plot (x, y, 'x')
        dist = sqrt((x_cir - x)^2 + (y_cir -y)^2)
    end

end
    if toc<30
        text(5,5,"Good Job")
    end
t=toc

%%








    