function [side3] = thirdside(s1,s2,theta)
%Uses law of cosines to calculate third side
side3 = sqrt((s1.^2) + (s2.^2) - (2*s1*s2*cosd(theta)))
end

