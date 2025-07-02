clc;
clear all;
close all;
pkg load image;
I1=double(imread('C:\Users\admin\Desktop\resized img\CT1.jpg'));
if size(I1,3)==3
  I1=rgb2gray(I1);
end
I2=double(imread('C:\Users\admin\Desktop\resized img\mri1.png'));
if size(I2,3)==3
  I2=rgb2gray(I2);
end
for i=1:size(I1,1);
    for j=1:size(I1,2);
         I(i,j)=max(I1(i,j),I2(i,j));
     end
end
figure(1)
subplot(1,3,1);
imshow(I1,[]);
title('Image 1');
subplot(1,3,2);
imshow(I2,[]);
title('Image 2');
subplot(1,3,3);
imshow(I,[]);
title('Fused Image maximum fusion rule');
if size(I2,3)==3
  I2=rgb2gray(I2);
end
for i=1:size(I1,1);
    for j=1:size(I1,2);
         I(i,j)=min(I1(i,j),I2(i,j));
     end
end
figure(2)
subplot(1,3,1);
imshow(I1,[]);
title('Image 1');
subplot(1,3,2);
imshow(I2,[]);
title('Image 2');
subplot(1,3,3);
imshow(I,[]);
title('Fused Image minimum fusion rule');

