Clc; close all; clear all;
a=imread(“cameraman.tiff”);
b1=[1 0: 0 -1];
b2=[0 1: -1 0];
a1=imfilter(a,b1);
a2=imfilter(a,b2);
subplot(2,2,1);
imshow(a);
title(‘original image’);
figure(2)
subplot(2,2,2);
imshow(a1);
title(‘Gx’);
subplot(2,2,3);
imshow(a2);
title(‘Gy’);
