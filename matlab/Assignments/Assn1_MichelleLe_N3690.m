a =4;
b=[1 2 4]
clear all % Question 1: this will clear all variables previously created
Array=rand(1,15) % Question 2 
Array2 = [1:4:15*4] %Question 3
Arr = rand(2,4) %Question 4
Arr(2,3)=Arr(2,3)+5 %Question 5
Arr2=Arr' % Question 6
Arr2'+Arr % Question 8
Arr3=ones(size(Arr))*3 %Question 9
Q10=Arr.*Arr3 %Question 10
Arr2+Arr  % Question 7: Arr2 has dimensions of 2 columns and 4 rows whereas Arr has 4 columns and 2 rows. Since the dimensions are different, when adding the two variables this results in an error of "Matrix dimensions must agree".
