%% character strings
char1 = 'A' %character string
char2 = '3'
char2 + 10 %output 61 (ascii value of 3 + 10)
ascii1 = int32 (char1) %returns the value of the string
diffr = char1 - char2
ascii2 = int32(' ') % value of 32

%%
str1 = 'String'
str2 = ['S', 't','r','i','n','g']

str1 = 'Today '
str2 = 'is '
str3 = 'Monday'
str4 = [str1 str2 str3]

%show characters at specified index
str1(1)
str1(2:4)
str4(5:7)

length(str3)
a = [1 '2' 3]
str0 = ' This is a sample string'
%converts to lowercase and uppercase
lower(str0)
upper(str0)
delete

isspace(str0) %shows where there are spaces
isletter (str0) %checks if they are from the 26 letter alphabet
ischar(str0) %checks for characters
ischar([ 2 3 4])

str1 = ['Tis is number:' num2str(4)]
vec =rand(1,10) * 50
vecMean= mean(vec)
str1 = ['Tis is number: ' vecMean] % will result in a square representing the mean

str1 = ['Tis is number: ' num2str(vecMean)] %converts the number into a string

%comparing strings
'abcd'== 'qw' %make sure the are the same size
'abcd'== 'qwer'
'abcd'== 'AbcD'

%compare string
strcmp('abc', 'ABC')
strcmp('abc', 'abc')

str0= ' This is sample string 3'
str1 = 'is'

%finds matches of subset strings
ind = strfind(str0, str1)


str0(4:5) %check to see if the above is coorrect-->yes it is

%returns what is at the specified index
str0(ind(1): ind(1)+1)
str0(ind(2) :ind(2)+1)

%find letter s in string
ind1 = strfind(str0, 's')
str0(ind1) = 'S'

%%reading in text from a url
str_url = urlread('http://www.uleth.ca/artsci/neuroscience');
ind_url = strfind(str_url, 'Canada') %find where it says 'Canada'

%find 50 character before and after the specified index
str10 = str_url (ind_url(1) -50 :ind_url(1) +50)

%%
%find word count
indspace = strfind(str10,' ') % find all spaces
length(indspace) %find the count for all spaces found
%or
sum(isspace(str10)
%or
count (str1-, [' ']

%----------------This one is more correct -----------------
nr_words = sum(isspace(str10))+1

%now in a loop
v=[]
for i=1:length(str10)
    if str10(i) == ' '
        v = [v str10(i)]
    end
    length(v)
end 
         

%%
