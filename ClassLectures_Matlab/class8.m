

% Characters:
char1 = 'a'
char2 = 'A'
char3 = '3'
char4 = ' ' 

% Ascii code
ascii1 = int32( 'a' )
ascii1 = int32( ' ' )
ascii1 = int32( char3 )

char3 + 10 %!!! characters are different from numbers 

diffr = char1 - char2 % distance between characters in Ascii table

% A string is a sequence of characters:
str1 = 'String'
str2 = ['S', 't','r','i','n','g']


str1 = 'Today '
str2 = 'is '
str3 = 'Monday'
str4 = [str1 str2 str3] % Concatenating strings

%Indexing into strings:
str1(1)
str1(2:4)

length( str3) % gives the number of characters in the input string

% Some useful functions:
str0 = '  This is a sample string 3'
upper(str0)    % Converts str to uppercase 
lower(str0)    % Converts str to lowercase
isspace(str0)  % Returns elements that are space characters
strtrim(str0)  % Removes leading and trailing white space from string
isletter(str0) % Returns elements that are alphabetic letters
ischar(str0)   % Determines whether str is a character array
ischar([2 3 4]) 


num1 = str2num('123.67')  % Converts string to number
num1 = str2double('123.67')
str1 = num2str(67.98)     % Converts number to string

str1 = [ 1 '2' 3] %-- this is wrong way to combine numbser and characters 

str1 = ['This is number: ' num2str( 4 )]%-- this is good way to combine numbser and characters 

vec = rand(1,10)*50
vecMean = mean( vec )
str1 = ['The mean is: ' num2str( vecMean )]

str1 = ['The mean is: ' vecMean ] %-- this is wrong way to combine numbser and characters 


% Comparing strings:
'abcd' == 'gbwd'  % Checks character by character equality
'abcd' == 'gbw'   % Gives an error if the lengths of string are not equal

strcmp('abcd', 'gbw')  % Returns 1 if the two strings are equal, otherwise returns 0
strcmp('abcd', 'abcd')
strcmp('abcd', 'aBcd') % strcmp is case sensitive


% Searching for one string in another one:
str0 = '  This is a sample string 3'
str1 = 'is'
ind = strfind( str0 , str1 ) 
str0( ind(1):ind(1)+1 ) % display 2 characters of str0 at position of first occurence of str1 
str0( 5:6) % equivalent to the above line but it woudl give wrong result if sentence woudl change. 

%% Excercise: find in str0 all letters 's' and replace it with 'S'
str0 = 'This is a sample string 3 '
str2 = 's'
ind = strfind(str0, str2)
str0(ind) = 'S'

%% -- reading website from internet
str_url = urlread( 'http://www.uleth.ca/artsci/neuroscience' );
ind_url = strfind(str_url, 'Canada') %find where in the website is word Canada

%dispaly 50 characters before first occurence of word Canada and 50 characters after
str10 = str_url( ind_url(1)-50:ind_url(1)+50 ) 

sum(isspace(str10)) %-- count number of spaces in string str10 (aproximation of counting number of words)
count(str10,[' ']) %- other way to do the same as above
nr_words = sum(isspace(str10)) + 1 %here number of words is larger by 1 than number of spaces

%% Excercise: count number of spaces in str10 by using loop
count=0
for i=1:length(str10)
    if str10(i)==' '
        count=count+1
    end
end




