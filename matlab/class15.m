
% - in this class we reviewed midterm exam

% Bubble sorting
% https://en.wikipedia.org/wiki/Bubble_sort

n = [ 5 4 6 7 8 3 4 ]; %-- numbers to sort 

for i = 1:100
  for j = 1:length(n)-1
    if n(j) > n(j+1) %-- if previous number if larger then exchange it with next numer 
        disp('first number is bigger')
    %    n(2) = n(1)
    %    n(1) = n(2) %-- wrong way to exchange 2 numbers 
        
        temp = n(j+1); %-- exchanging 2 numbers using temporary variable
        n(j+1) = n(j);
        n(j) = temp;
        
    %   n = n([2 1]);  %-- exchanging 2 numbers without using temporary variable
    
    end
  end
end
n

% - other solution 
n = [ 5 4 6 7 8 3 4 ]; %-- numbers to sort 

flag = false;
while flag == false
    flag = true;
    for i = 1:length( n )-1 
        if n(i) > n(i+1) %-- if previous number if larger then exchange it with next numer 
            flag = false;
            n_new = n(i);
            n(i) = n(i+1);
            n(i+1) = n_new;
        end
    end
end
n

n = [ 5 4 6 7 8 3 4 ];
n2 = sort(n) %-- matlab function to do the same sotring 