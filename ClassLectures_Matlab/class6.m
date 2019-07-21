%% Introduction to Statistics and Programming in MATLAB
% by Artur Luczak
% Guest lecturer: Edgar Bermudez
% 24 September 2018 
%
%% From class 5:
% Control structures: determine the flow of execution in a program 
% IF ELSE statement
r = rand * 10

if r > 5
    disp('r is bigger than 5')
else
    disp('r is smaller than 5')
end
%% User input
% To make a program interactive, we can get information from the user with
% the function input:

r = input('Enter the value of r =???');
if r > 5 && r <10
    disp('r is bigger than 5 and less than 10')
elseif r >= 10
    disp('r is bigger than 10')
else
    disp('r is smaller than 5')
end

%% 

% Exercise: generate 100 random numbers between 0 and 10
% and count how many 0s, 1s, 2s ... are there
% show the results using bar 

clear; % clears the workspace
data=[];
rand_nums = round(rand(1, 100) * 10); % 100 random numbers 

% look for and count the times 0s, 1s, etc are in the vector we created
for i = 1:11  
    f = find( rand_nums == i-1 ); % find the indeces of the numbers we are looking for
    nr_times(i) = length( f ); % counts the occurrences
    data=[data; [(i-1) nr_times(i)]];
end

figure;
bar(data(:,1), data(:,2));

%
%% Class 6
% user input and more loops
% Recap: 
% - loops are control structures to repeat a block of code multiple
% times.
% - if then end is a control structure to divide the execution of a program
% based on a condition statemment (true or false).


% Exercise: in vector v =[0 0 0...] change every second value to 1: v = [ 1 0 1 0 1 0 ...

v = [ 0 0 0 0 0 0 0 0 ];

% Solution: go through all the positions in the vector and change only the
% ones in even positions into 1s
for i = 1:length(v)
    if mod(i,2) == 0 %-- if rest from division by 2 is 0
        v(i) = 1
    end
end

% another solution: go through the positions in the vectors but in steps of
% 2, then change only those elements of the vector into 1s
for i = 2:2:length(v)
    v(i) = 1;
end

% another solution: using the indexing structure in matlab. We select the
% even elements of the vector starting in position 2 until the end of the
% vector in increments of 2 and replace them with 1s

v(2:2:end) = 1; % solution without loop

clear;

% Exercise: in array with 2 rows and 3 columns, make value at j row and i column equal to i+j
% for example Arr(2,3) should be equal to 2+3 = 5 

arr = ones(2,3)

for i = 1:size(arr,2) % length(arr)  
    for j = 1:size(arr,1)
        arr(j,i) = j + i
    end
end


return

%% user input: ginput
% returns the position (coordinates) when the mouse is clicked. 
% This is useful when we want to get information from the user in a
% graphical form.

figure;
hold on
xlim([0 1])
ylim([0 1])


x=[.4 .6 .6 .4 .4] - 0.4; %-- defining corners of rectangle
y=[.4 .4 .6 .6 .4] - 0.4;
plot(x,y, '+')

% plot 3 rectangles next to the coordinates specified by the user
for i = 1:3
    [ x1 y1 ] = ginput(1) %-- get coordinates of click 
    
    plot( x+x1, y+y1) %-- plot rectangle next to click
%    plot( x, y, 'sqr', 'markersize', 30) % rgbcmyk
%    plot( x, y, 'o', 'color', [ 0.1 0.5 0.61 ])
%   plot( x, y, 'o', 'color', [ i/3 i/3 i/3 ])
end

clear
%%
% Getting input from user from keyboard  
a = input('give value for a ')
% by default, the user input is interpreted as a number


% ask the user to input a number multiple times
a=[];
for i = 1:3
  a(i) = input(['give value for a' num2str( i ) ': '])
end

return
%%
% Exercise: investment calculator
% According to the anual interest rate (fixed) and original investment
% provided by the user, calculate the total amount of money earned at the
% end of 30 years. Plot the progression of the investment over the 30
% years.

interest_rate = input('Enter the interest rate (%): >' )
investment = input('Enter the original investment> ')

yearly_period = 1:30;
figure('name', 'Investment progression'); hold on;

for year = yearly_period
	investment = investment + (investment*interest_rate/100);	
	plot(year, investment, 'bo');
end

xlabel('Year')
ylabel('CAN$')

% Examples of visualizing arrays

z = rand( 10, 20)

figure;imagesc( z )

figure; mesh(z)

figure; surf( z )


