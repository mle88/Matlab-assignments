% -------------------------------------------------------------------
%  Generated by MATLAB on 21-Sep-2018 11:37:44
%  MATLAB version: 9.4.0.813654 (R2018a)
% -------------------------------------------------------------------
clear all
%Question 2
Arr=ones(5,4)*5

%Question 3
Arr(1:5,3)=3 % Arr(:,2) = 3 ---> : means all the rows

%Question 4
Arr(1:5,4) = [4 8 12 16 20] % [4:4:20] or use a for loop i*4

%Question 5
q5=find(Arr>5)

%Question 6
x=0:0.01:10*pi;
figure;
plot(x,cos(x))

%Question 7
text(-pi,0, 'it is cosine', 'Color', 'blue', 'FontSize', 11)

%Question 8
figure;
histogram(cos(x),50)

%Questions 9
figure;
histogram(Arr);

%close all

%Question 10
for i=1:1 
q10=(find(Arr>5)); %finds the indices for elements in Arr that are greater than 5
len_q10=length(q10); %gets the total number of elements stored
    for j=1:len_q10 %for loop for each element found 
        Arr(q10(j)) %outputs all the elements found
    end
end

%Q10 version 2
%for r=1:5
%for c=1:4
%if Arr(r,c)>5
%disp(Arr,(r,c))
%end
%end
%end

