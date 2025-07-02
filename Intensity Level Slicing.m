Clc ;
clear all;
close all;
a=input(‘enter the value of A: ‘);
b=input(‘enter the value of B: ‘);
figure(‘Name’, ’Intensity Level Slicing’);
i1=imread(‘ultrasound fetus.jpg’);
subplot(1,3,1);
imshow(i);
title(‘input image’);
[m,n]=size(i1);
for i=1:m
      for j=1:n
            if i1(i,j)>a && i1(i,j)<=b
                i1(i,j)=255;
            end
      end
end
subplot(1,3,2);
imshow(i1);
title(‘without background’);
for i=1:m
      for j=1:n
            if i1(i,j)>a && i1(i,j)<=b
                i1(i,j)=255;
            else
                i2(i,j)=i1(i,j);
            end
      end
end
subplot(1,3,3);
imshow(i11);
title(‘with background’);


