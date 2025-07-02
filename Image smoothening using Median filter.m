clc; clear all; close all;
pkg load image
b=imread('C:\Users\admin\Desktop\Medical Image\MRI T2 Brain.jpeg');
a1=imnoise(b,'gaussian');
a2=imnoise(b,'salt & pepper');
a3=imnoise(b,'gaussian',0.2,0.8);
m1=fspecial('average',[3,3]);
m2=fspecial('average',[5,5]);
o1=medfilt2(a1,[3,3]);
o2=medfilt2(a2,[3,3]);
o3=medfilt2(a3,[3,3]);
o4=medfilt2(a1,[5,5]);
o5=medfilt2(a2,[5,5]);
o6=medfilt2(a3,[5,5]);

figure(1)
subplot(2,3,1), imshow(o1); title("Gaussian with 3x3 median");
subplot(2,3,2), imshow(o2); title("Salt and pepper with 3x3 median");
subplot(2,3,3), imshow(o3); title("Gaussian with mean and variance  with 3x3 median");
subplot(2,3,4), imshow(o4); title("Gaussian with 5x5 median");
subplot(2,3,5), imshow(o5); title("salt and pepper with 5x5 median ");
subplot(2,3,6), imshow(o6); title("Gaussian with Mean & Variance with 5x5 median");
