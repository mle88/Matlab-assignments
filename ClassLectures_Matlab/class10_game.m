%-- our first Matlab game 

clear all
tic  %start timer
figure; hold on
axis([0 10 0 10])
%figure;ginput

for i = 1:6 % loop to display one target at the time
    x_cir = rand*10; %- location of target
    y_cir = rand*10;
    plot(x_cir, y_cir,'o'); 
    [x y] = ginput(1);  %- location of mouse click
    plot(x,y,'x');
    dist_cir = sqrt((x_cir - x)^2 + (y_cir - y)^2); % distance between target and click
end

t = toc % total elapsed time

