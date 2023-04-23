function [V] = volicecream(r,h)
%volicecream gives total volume of ice cream by adding volume of cone and
%volume of hemisphere
VC = ((1/3).*pi.*(r.^2).*h); VH = ((2/3).*pi.*(r.^3));
V = (VC + VH);
end

