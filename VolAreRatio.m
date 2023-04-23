%VolAreRatio takes a given Radius and generates the Volume, Surface Area,
%and the Surface Area to Volume Ratio of a Sphere
%Define function SphereVol
%Define function SphereArea
%Prompt user input of Radius min/max
rmin= input('Enter Minimum Radius Value: ');
rmax= input('Enter Maximum Radius Value: ');
Radius= linspace(rmin,rmax,20);
%Call function SphereVol
SVol = SphereVol(Radius);
%Call function SphereArea
SArea = SphereArea(Radius);
%Input results to SA / V
SVRsphere = SArea ./ SVol;
%Create table of outputs
table=[Radius',SArea',SVol',SVRsphere'];
%Write Output results to 2 decimal places in sphere.dat
save ('sphere.dat','table','-ascii');