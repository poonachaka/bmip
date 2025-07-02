clc;
clear all;
close all;
pkg load image
b=imread('C:\Users\admin\Desktop\image BIPL\CT Brain.jpg');
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
[p1,s1]=psnr(o1,a1);
[p2,s2]=psnr(o2,a1);
[p3,s3]=psnr(o3,a2);
[p4,s4]=psnr(o4,a2);

