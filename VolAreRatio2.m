%VolAreRatio2 takes a given Radius and Height(for Cyl) and generates the Volume, Surface Area,
%and the Surface Area to Volume Ratio of a Sphere and a Cylinder
%Define function SphereVol
%Define function SphereArea
%Define function CylVol
%Define function CylArea
%Prompt user input of Radius min/max and Cylinder Height
rmin= input('Enter Minimum Radius Value: ');
rmax= input('Enter Maximum Radius Value: ');
Height= input('Enter Height of Cylinder: ');
Radius= linspace(rmin,rmax,20);
%Call function SphereVol
SVol = SphereVol(Radius);
%Call function SphereArea
SArea = SphereArea(Radius);
%Input results to SSA / SV
SVRsphere = SArea ./ SVol;
%Call function CylVol
CVol = CylVol(Radius,Height);
%Call function CylArea
CArea = CylArea(Radius,Height);
%Input results to CSA / CV
SVRcylinder = CVol ./ CArea;
%plot radius vs svr of both sphere and cylinder
plot(Radius,SVRsphere,'c-',Radius,SVRcylinder,'m-')
legend('Sphere','Cylinder')
title('Expansion and Relations of Spheres and Cylinders')
xlabel('Radius')
ylabel('Surface Area to Volume Ratio')
