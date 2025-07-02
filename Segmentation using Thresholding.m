clc;
clear all;
close all;
pkg load image;
I1=double(imread('C:\Users\admin\Desktop\Medical Image\MRI Brain T1(image2).png'));
if size(I1,3)==3
  I1=rgb2gray(I1);
end
figure(1)
imshow(I1,[]);
figure(2)
hist(I1);
[m n]=size(I1);
for i=1:m
  for j=1:n
   if I1(i,j)>150
    I2(i,j)=I1(i,j);
   else
    I2(m,n)=0;
  end
end
end
figure(3);
imshow(I2,[]);
