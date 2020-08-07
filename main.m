clc;
close all;
%% Ellipses detection
tic
ImageName = 'TestImage.jpg';%filepath
ellipses_parameters = PointToPoint(ImageName);%ellipses_parameters(Semi_major,Semi_minor,x0,y0,theta)
time = toc;

%% Plot detections
im = imread(ImageName);
im = rgb2gray(im);
imshow(im,'border','tight','initialmagnification','fit');
draw_Ellipses(ellipses_parameters',im,'g');