%%
%Question 1
str = 'I am an International student at the University of Lethbridge'
strCount = count (str, ['a']) %this counts the 'a'
str= erase(str, 'a') %this eliminates the 'a'

%%
%Question 2
str = 'I am an International student at the University of Lethbridge'
str1 = (str(1:5)) %saves the first 5 elements in a new string
str2 = (str(6:length(str))) %saves elements 6 to the end 
newStr = [str2 str1] %recombine to make a new string

%%
%Question 3!
str = 'I am an International student at the University of Lethbridge'
%the number of elements that are uppercase is found then the number of true
%occurences that were uppercase is counted
strUpper = length(strfind(isstrprop(str, 'upper'), 1))  
%changes the string into lowercases
lower(str)


%%
%Question 4
str = 'I am an International student at the University of Lethbridge'
reverse (str) %reverse the string

%%
%Question 5
str = 'I am an International student at the University of Lethbridge'
strCount=length(str) %string count before is 61
str= replace(str, 'nation','province')
strCount=length(str)%string count after is 63

%%
%Question 6
str = 'I am an International student at the University of Lethbridge'
countStr = 0;
%counting the number of 'a'
for i=1:length(str)
    if str(i)=='a'
        countStr=countStr+1
    end 
end
%eliminating all 'a'
for i=1:length(str)-countStr
    if str(i)=='a'
        str(i)=''
    end
end

%%
%Question 7
str = 'I am an International student at the University of Lethbridge'
str1= []
str2 = []
for i=1:1
    for j=1:5
        str1=[str1, str(j)]
    end
    for k=6:length(str)
        str2 = [str2, str(k)]
    end
    strNew = [str2 str1]
end

%%
%Question 8
str = 'I am an International student at the University of Lethbridge'
indices = []
strNew = []
for i=1:length(str)
    if isstrprop(str(i), 'upper') == 1
        indices = [indices i]
    end
    strNew=[strNew lower(str(i))]
    countCap=length(indices)
end

%%
%Question 9
str = 'I am an International student at the University of Lethbridge'
strR=[]
for i=1:length(str)
    str2=str((length(str))-i+1);
    strR=[strR, str2]
end

%%
%Question 10
str = 'I am an International student at the University of Lethbridge'
for i=1:1
    str2= strfind(str, 'nation')
    strNew =[]
    strCount=length(str) %count before is 61
    for j=1:length(str2)
        str=insertAfter(str,str2(j)+length('nation')-1,'province')
        for k=1:length('nation')
            str(str2(j)) = ''
        end
    end
end
strCount=length(str) %count before is 63