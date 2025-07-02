clc;
close all;
clear all;
r=imread('CT Brain.jpg');
b=im2double(r);
I=log(1+b);
[m,n]=size(I);
for i=1:m
    for j=1:n
        p(i,j)=((-1)^(i+j))*I(i,j);
    end
end
bf=fft2(p);
for u=1:m
    for v=1:n
        d=((u-m/2)^2+(v-n/2)^2)^(1/2);
H(u,v)=1-exp(-d^2/100);
    end
end
G=bf.*H;
g=real(ifft2(G));
for i=1:m
    for j=1:n
        g1(i,j)=((-1)^(i+j))*g(i,j);
    end
end
g2=(exp(g1)-1);
subplot(211);
imshow(b);
subplot(212);
imshow(g2,[]);
