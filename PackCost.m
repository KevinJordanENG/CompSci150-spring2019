function [TotalC] = PackCost(TotalV, W, CostC, CostF)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Vp = TotalV ./ 3;
L = TotalV ./ (W.^2);
TotalC = (CostC .* ((6.*L.*W) + (2.*(W.^2)))) + (CostF .* ((L.*(W.^2)) - Vp));
end