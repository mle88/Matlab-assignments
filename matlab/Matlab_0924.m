%%
r = rand * 10
%if r>5 && 10>r || false
if r>5 && 10>r || false
    disp ('r is bigger than 5')
else
    dis ('r is smaller than 5')
end
%%
r = input('Enter the value of r');
if r>5 && r<10
    disp ('r is bigger than 5 and less than 10')
elseif r>=10
    disp ('r is greater or equal to 5')
else 
    disp ('r is smaller than 5')
end


%%
data = [];
Arr = round(rand(1,100)*100)

for i=1:11
   f = find(Arr == i-1); % find the index
   n_times(i) = length(f) %count the occurences
   data = [data; [(i-1) n_times(i)]]
end

figure;
bar(data(:,1), data(:,2));

%%

v= [0 0 0 0 0 0 0 0]; %method 1
x=0
for j=1:(length(v)/2)
    x=x+2
    v(x)= 1
end

v= [0 0 0 0 0 0 0 0]; %method 2
for i=1:length(v)
    if mod(i,2)==0
        v(i)=1
    end
end
    
v= [0 0 0 0 0 0 0 0]; %method 3
for i=2:2:length(v)
    v(i)=1;
end

v= [0 0 0 0 0 0 0 0]; %method 4
v(2:2:end)=1

%%
Arr2 = ones(2,3)
for i = 1:size(Arr2,1)
    for j=1:size(Arr2, 2)
        Arr2(j,i) = j+1
    end
end

%figure;plot(ginput(3)) % g prefix -> guided for GUI
