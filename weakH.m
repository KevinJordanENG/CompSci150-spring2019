function [H] = weakH(HA,Ka)
%weakH calculates H+ of a weak acid
%    done with [HA] concentraton and Ka constant
H = ((-Ka + sqrt((Ka.^2)-(4.*(-Ka.*HA))))/2);
end

