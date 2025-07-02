clc; clear all; close all;
pkg load image
b=imread('C:\Users\admin\Desktop\Medical Image\MRI T2 Brain.jpg');
a1=imnoise(b,'gaussian');
a2=imnoise(b,'salt & pepper');
a3=imnoise(b,'gaussian',0.2,0.8);
m1=fspecial('average',[3,3]);
m2=fspecial('average',[5,5]);
o1=imfilter(a1,m1);
o2=imfilter(a2,m1);
o3=imfilter(a3,m1);
o4=imfilter(a1,m2);
o5=imfilter(a2,m2);
o6=imfilter(a3,m2);
figure(1)
subplot(3,3,1), imshow(a1); title("Gaussian noise");
subplot(3,3,2), imshow(a2); title("Salt and pepper noise");
subplot(3,3,3), imshow(a3); title("Gaussian noise with mean and variance");
subplot(3,3,4), imshow(o1); title("Gaussian with 3x3 average");
subplot(3,3,5), imshow(o2); title("salt and pepper with 3x3average");
subplot(3,3,6), imshow(o3); title("Gaussian with Mean & Variance with 3x3average");
subplot(3,3,7), imshow(o4); title("Gaussian with 5x5average");
subplot(3,3,8), imshow(o5); title("S&P with 5x5 average");
subplot(3,3,9), imshow(o6); title("Gaussian Mean & Var with 5x5average");

