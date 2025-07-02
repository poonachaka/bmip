clc;
close all;
clear all;
pkg load image;
a2=imread('C:\Users\admin\OneDrive\Desktop\Medical Image\CT Brain.jpg');
a=imnoise(a2,'salt and pepper',0.03);
b=im2double(a)
[m,n]=size(b);
for i=2:m-1
  for j=2:n-1
    c=[b(i-1,j-1),b(i-1,j),b(i-1,j+1);
    b(i,j-1),b(i,j),b(i,j+1);
    b(i+1,j-1),b(i+1,j),b(i+1,j+1)];
    o1=sum(sum(c));
    o=1/9*o1;
    output(i,j)=o;
  end
end
subplot(1,2,1);
imshow(a);
subplot(1,2,2);
imshow(output);

