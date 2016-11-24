clc;
close all;
clear all;
A = imread('kobi.png');
A = imresize(A,0.25);
imageSize = size(A);
numRows = imageSize(1);
numCols = imageSize(2);
X = rgb2gray(A);
colormap gray;
[c,s]=wavedec2(X,2,'haar');

[H1,V1,D1] = detcoef2('all',c,s,1);
A1 = appcoef2(c,s,'haar',1);
V1img = wcodemat(V1,255,'mat',1);
H1img = wcodemat(H1,255,'mat',1);
D1img = wcodemat(D1,255,'mat',1);
A1img = wcodemat(A1,255,'mat',1);

subplot(2,2,1);
imagesc(A1img);
colormap pink(255);
title('Approximation Coef. of Level 1');

subplot(2,2,2);
imagesc(H1img);
title('Horizontal detail Coef. of Level 1');

subplot(2,2,3);
imagesc(V1img);
title('Vertical detail Coef. of Level 1');

subplot(2,2,4);
imagesc(D1img);
title('Diagonal detail Coef. of Level 1');

test = uint8(D1img);
figure;imshow(test);

figure;imagesc(D1img);





