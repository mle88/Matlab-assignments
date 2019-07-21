%%
%Question 1

i=12
while i+5 < 50
    
     i=i+5
end

%%
%Question 2
i=4
while i+3 <=50
    if i+5 <= 30
        i=i+5
    elseif i+3>=30 && i <=50
        i=i+3
    end
end

%%
%Question 3
i=4;
v=[i]; % or jist do v(i)
while i+3 <=50
    
    if i+5 <= 30
        i=i+5
    elseif i+3>=30 && i <=50
        i=i+3
    end
    v=[v;[i]];
end

figure; subplot(1,2,1);subplot(1,2,2);bar(v)
close all;

%% 
%Question 4
%v(4)=NaN; use this to test
for j=1 : length (v)
    if isnan(v(j)) == 1
        fprintf('Element in position %i of array v is not a number.\n', j)
    end
end

%%
%Question 5
mean(v)

%% 
%Question 6
clear all

i = input('Enter an integer for the value of i');

if i >= 50
    disp('i is greater than or equal to 50')
end

while i+3 <=50
    if i+5 <= 30
        i=i+5
    elseif i+3>=30 && i <=50
        i=i+3
    end
end

%%
%Question 7
close all;
figure;
x=0,y=0;

    [x,y] = ginput(4)
    plot(x,y)

%%
%Question 8 
m=0,n=0;
i=[-5:20];
j=[-13:9];
for m=1:length(i)
    for n = 1:length(j)
        Arr(m,n)=i(m)+j(n)*i(m);
    end
end

%%
%Question 9
figure; mesh(Arr)

%%
%Question 10
close all;
if sum(Arr(2,:)) > sum (Arr(4,:))
    disp('Row 2 of Arr is greater than row 4 of Arr')
elseif sum(Arr(2,:)) < sum (Arr(4,:))
     disp('Row 4 of Arr is greater than or equal to row 2 of Arr')
else
    disp('The sum of Row 2 is equal to row 4 of Arr')
end

    