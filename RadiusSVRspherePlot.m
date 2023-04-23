%This program loads data from sphere.dat and plots the surface area to
%volume ratio vs the radius of the sphere defined in program VolAreRatio
%load sphere.dat file
load ('sphere.dat');
%define radius vector for x axis
radius= sphere(:,1);
%define svr vector for y axis
svr= sphere(:,4);
%plot and label graph
plot(radius,svr)
title('The Metrics of Expansion; Spheres')
xlabel('Radius of Sphere')
ylabel('Surface Area to Volume Ratio of Sphere')