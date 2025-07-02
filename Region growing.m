clc; clear all; close all;
pkg load image
%function(g,NR,SI,TI)=regiongrow(f,S,T)
%NR-no of regions
%SI-final seed
%TI-threshold image

f=imread('C:\Users\admin\Desktop\Medical Image\CT Brain.jpg');
f=double(f);
S=input('input value of S: ');
T=input('input value of T: ');

%if S is scalar, obtain seed image
if numel(S)==1
SI=f==S;
S1=S;
else
SI=bwmorph(S,'shrink',Inf);
J=find(SI);
S1=f(J); %array of seed value
end

TI=false(size(f));
for K=1:length(S1)
seedvalue=S1(K);
S=abs(f-seedvalue)<=T;
TI=TI|S;
end

figure;
subplot(2,2,1);
imshow(SI);
subplot(2,2,2);
imshow(TI);

[g,NR]=bwlabel(imreconstruct(SI,TI));
subplot(2,2,3);
imshow(g)
