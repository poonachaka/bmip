clc;
clear all;
close all;
pkg load image
a=imread('C:\Users\admin\Desktop\Medical Image\ultrasound_liver.jpg');
b1=[-1 -1 -1 :0  0 0:1 1 1];
b2=[-1 -1 0:1 0 1: 0 1 1];
b3=[-1 0 1:-1 0 1:-1 0 1];
b4=[0 1 1:-1 0 1: -1 0 1];
b5=[1 1 1:0 0 0:-1 -1 -1];
b6=[1 1 0: 1 0 -1:0 -1 -1];
b7=[1 0 -1:1 0 -1:1 0 -1];
b8=[0 -1 -1:1 0 -1: 1 1 0];
a1=imfilter(a,b1);
a2=imfilter(a,b2);
a3=imfilter(a,b3);
a4=imfilter(a,b4);
a5=imfilter(a,b5);
a6=imfilter(a,b6);
a7=imfilter(a,b7);
a8=imfilter(a,b8);
figure(1)
imshow(a);
title("original image");
figure(2);
subplot(2,2,1); imshow(a1); title("prewitt operator(H-line) o/p");
subplot(2,2,2); imshow(a2); title("prewitt operator(45 degree) o/p");
subplot(2,2,3); imshow(a3); title("prewitt operator(v-line) o/p");
subplot(2,2,4); imshow(a4); title("prewitt operator(-45 degree) o/p");
figure(3)
subplot(2,2,1); imshow(a5); title("prewitt operator(H-line) o/p");
subplot(2,2,2); imshow(a6); title("prewitt operator(45 degree) o/p");
subplot(2,2,3); imshow(a7); title("prewitt operator(v-line) o/p");
subplot(2,2,4); imshow(a8); title("prewitt operator(-45 degree) o/p");

