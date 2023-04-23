function [Volume] = CylVol(Radius,Height)
%CylVol takes user inputs of Radius and Height and generates Volume of a
%Cylinder
Volume = (pi.*(Radius.^2).*Height);
end