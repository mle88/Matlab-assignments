%%Question 1
Arr1 = rand(8,9)-1
Arr1 =Arr1-0.5
figure;
surf(Arr1);
close all

%%Question 2
Arr2 = zeros(3,2)
for i=1:numel(Arr2)
      temp = input(['Give value for Arr2: '])
      if temp > 0 && temp <10
          Arr2(i)=temp
      else
        while temp >10 || temp < 0
            temp = input(['Give another value for Arr2: '])
        end
      Arr2(i)=temp
      end
end


%%Question 3
str_url = urlread( 'https://en.wikipedia.org/wiki/Brain' );
ind_url = strfind(str_url, 'cell') %find where in the website is word Canada
cellCount=count(str_url, 'cell')
brainArray=[]
for i = 1 : cellCount
strCell = str_url( ind_url(i)-500:ind_url(i)+500 )
%count of brain within 500 characters found for each cell
brainArray=[brainArray;[count(strCell, 'brain')]]
end
%total count of cell within brain
sum(brainArray)


%Question 5
figure;
axis([ -5 15 -3 16])
hold on;
rectangle('Position',[2 3 2 7])


