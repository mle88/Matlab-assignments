%%
%Goal load and manipulate image files
%Note (x,y,z) -->rows, columns, z value

%loads in excel file vales to variable
excel_data = xlsread('excel_temp_data.xlsx') %press tab to autofill names

%shows the data types used, byte size, class, attributes, array dimensions
whos

%overwrites value in variable
excel_data(1,1) = 10

%Saves the variable out to a new excel file
xlswrite('new_excel_dat',excel_data)

%Loads in example excel file #2
excel_data2 = xlsread('excel_temp_data2.xlsx') % converts character string 'x' to 'NaN'

%%
%-----------------------useful---------------------------------%
[num, txt, raw] = xlsread('excel_temp_data2.xlsx')

%%
%read in image file  *3( one for each colour channel)
img1 = imread('Banff_960_640.jpg'); % semicolon or matlab will output all pixel values

%open a new window then load image in screen
figure; imagesc(img1)

%does not use the correct colour scale: recommended to use imagesc
%figure; image(img1)

%maintain original aspect ratio
figure;imagesc(img1); axis image

%%
%images are typically unsigned integer 8 bit in MATLAB (uint8)
%manipulate image

%this sets the array to unisgned integers or else it will automatically be double
img = uint8(zeros(10,15,3))

%Ouput the values in the first layer (red)
img(:,:,1)

%open up the image that was created
figure; imagesc(img)

%create red image
img2=img;
%important to put value in unit8() so it remains that data type
img2(:,:,1)=uint8(255);
%open up red figure
figure; imagesc(img2)

img3=img;
%important to put value in unit8() so it remains that data type
img3(:,:,2)=uint8(255);
%open up green figure
figure; imagesc(img3)

img4=img;
%important to put value in unit8() so it remains that data type
img4(:,:,3)=uint8(255);
%open up blue figure
figure; imagesc(img4)

%adding all layers together
imgRGB = img2 + img3 + img4
%open up the white image
figure; imagesc (imgRGB)