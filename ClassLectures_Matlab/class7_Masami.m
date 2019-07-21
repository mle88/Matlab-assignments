% Class 7

%% 1 -- read data from excel and write data to excel

excel_dat = xlsread('excel_temp_data.xlsx')
excel_dat(1,1) = 10;

% Read a specific range of data
% This was not covered in a class
excel_fname = 'excel_temp_data.xlsx';
sub_excel_dat = xlsread(excel_fname,'A3:B5')

filename = 'new_excel_dat'; 
xlswrite(filename, excel_dat); %-- save to new excel file modyfied array

% Read numeric and text data from excel
excel_dat2 = xlsread('excel_temp_data2.xlsx')
[num,txt,raw] = xlsread('excel_temp_data2.xlsx')

% Read data as a table, a new data format introduced in 2013
% This was not covered in a class
T = readtable('excel_temp_data2.xlsx')
T.Properties
T.Properties.VariableNames
T(:,1) % -- Returns a table
T{:,1} % -- Returns a numeric array 

%% 2 -- read image from internet and local drive

clear 

% read data from internet
% this is not covered in a class
img1 = imread('http://people.uleth.ca/~luczak/Matlab2018/brain_im.jpg');
figure;imagesc( img1 )

img2 = imread('banff_960_640.jpg');
figure;imagesc( img2 )
figure;imagesc( img2 ); axis image

%% 3 -- Excercise: switch 1st and 2nd value in vector
% This section was not covered in a class

clear
close all

v = [ 14 25 36] % - original vector; 
% v = [ 25 14 36] % - desired vector 

v1 = v(1);% solution with using 2 temporary variables
v2 = v(2);
v(1:2) = [ v2 v1 ]

a=v(1) % solution with using 1 temporary variable
v(1)=v(2)
v(2)=a

v([1 2])=v([2 1]) % solution without temporary variable

v2=[v(2) v(1) v(3)] % solution without temporary variable

%-- wrong solution
v(2) = v(1)
v(1) = v(2)

%% 4 -- Excercise: switch 1st and 2nd color channels in the image
% This section was not covered in a class

clear

% -- img1
img1 = imread('http://people.uleth.ca/~luczak/Matlab2018/brain_im.jpg');
figure; imagesc( img1 )

img11 = img1; % make a copy of img1
img11(:,:,[1 2]) = img11(:,:,[2 1]); %-- switch 1 and 2 color channel 
figure; imagesc( img11 )

%-- other way to switch 1 and 2 color channel using temporary variables 
img01 = img1(:,:,1);
img02 = img1(:,:,2);
img11(:,:,2) = img01;
img11(:,:,1) = img02;
figure;imagesc( img11 )

% switch colors in img2
img2 = imread('banff_960_640.jpg');
img22 = img2; % make a copy of img2
img22(:,:,[1 3]) = img22(:,:,[3 1]);
figure;imagesc( img22 ); axis image

%% 5 -- understand how color is represented --
% uint8 stores 1-byte (8-bit) unsigned intergers, from 0 to 255.

clear
close all

img = uint8(zeros(10,15,3)); % black
figure; imagesc(img)

imgR = img;
imgR(:,:,1) = uint8(255); % red
figure; imagesc(imgR)

imgG = img;
imgG(:,:,2) = uint8(255); % green
figure; imagesc(imgG)

imgB = img;
imgB(:,:,3) = uint8(255); % blue
figure; imagesc(imgB)

imgRGB = imgR + imgG + imgB; % white
figure; imagesc(imgRGB)

%% 6 -- Extract a single color channel of img1 --
% This section was not covered in a class

clear
close all

% img1
img1 = imread('http://people.uleth.ca/~luczak/Matlab2018/brain_im.jpg');
figure; imagesc( img1 )

% red channel
img1R = img1;
img1R(:,:,[2 3]) = 0;
img1R(:,:,2:3) = 0; % another way
figure; imagesc(img1R); axis image

% green channel
img1G = img1;
img1G(:,:,[1 3]) = 0; % another way
figure; imagesc(img1G); axis image

% blue channel
img1B = img1;
img1B(:,:,[1 2]) = 0; % another way
figure; imagesc(img1B); axis image

%% 7 -- Extract a single color channel and combine color channels of img2 --
% This section was not covered in a class

clear
close all

% img2
img2 = imread('banff_960_640.jpg');
figure; imagesc( img2 ); axis image

% red channel
img2R = img2;
img2R(:,:,[2 3]) = 0;
img2R(:,:,2:3) = 0; % another way
figure; imagesc(img2R); axis image

% green channel
img2G = img2;
img2G(:,:,[1 3]) = 0; % another way
figure; imagesc(img2G); axis image

% blue channel
img2B = img2;
img2B(:,:,[1 2]) = 0; % another way
figure; imagesc(img2B); axis image

% -- Add colors ---

% red and green
img2RG = img2R + img2G;
figure; imagesc(img2RG); axis image

% green and blue
img2GB = img2G + img2B;
figure; imagesc(img2GB); axis image

% red and blue
img2RB = img2R + img2B;
figure; imagesc(img2RB); axis image

% put three colors back. is this same with the original image?
img2RGB = img2R + img2G + img2B;
figure; imagesc(img2RGB); axis image

return
