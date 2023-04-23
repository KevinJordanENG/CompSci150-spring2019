function [A] = coneArea(r,h)
%coneArea calculates surface area of cone for input radius and height
%   find L for entered values
L = sqrt((r.^2)+(h.^2));
% find total surface area
A = (pi.* r .* L);
end

