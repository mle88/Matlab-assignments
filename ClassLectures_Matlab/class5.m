
% Exercise: plot horizontal  and vertical lines
    x = [ 1 1 ];
    y = [ 1 2 ];
    figure;plot( x,y); hold on
    x = [ 1 2 ];
    y = [ 1 1 ];
    plot( x,y);
    axis([ 0 3 0 6])
    %% 

v = [ 3 3 3 4 4 5 5 5 5 6];
figure; hist( v ) %-- plot histogram
%% 

r = round( rand(1,1000)*10 )
figure;hist( r, 20 )
%% 
figure; bar([ 2 3 6]) %-- plot bar plot
%% 
figure; stem([2 3 6]);
%% 
%Exercise: Given a=[3 4 5 6]
%display plot() and bar() of vector "a" on same figure.

%%
a=[3 2];b=[6 4];
c=[a b];
d=[a;b];

%% 
data=[];
%-- FOR loop
for j = 1:10 
i = j*2
data= [data; [j i]];
end
figure;stem(data,'g');hold on; plot(data);
%% 
% Exercise: 6 subplots using loop 
figure
for i=1:6
  subplot( 3,2,i )
  plot(rand(1,10));legend(num2str(i));
end
%% 
% loops can be combined
data=[];
for d = 5:7
    
    for z = 1:3
        data=[data;[d z]];   
    end
end
bar(data)
%% 

% WHILE loop
i = 1;
while i < 5   % -- execute loop as long as i<5
    i = i + 2   %- without changing 'i' this loop would be infinite     
end
% NOTE: You can stop Matlab program by Ctrl+C


% Exercise: generate 100 random numbers between 0 and 10
% and count how many 0s, 1s, 2s ... are there
%show result via. bar plot

clear all
data=[];
loc = round(rand(1,100)*10); %-- ramdom numbers
for i = 1:11
    
    f = find( loc == i-1 );
    nr_times(i) = length( f );
    data=[data; [(i-1) nr_times(i)]];
end

figure;bar(data(:,1),data(:,2));

%%









