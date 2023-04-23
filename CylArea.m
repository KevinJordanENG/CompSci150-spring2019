function [SurfaceArea] = CylArea(Radius,Height)
%CylArea takes user inputs of Radius and Height to generate Surface Area of
%a Cylinder
SurfaceArea = (2.*pi.*(Radius.^2))+(2.*pi.*Radius.*Height);
end