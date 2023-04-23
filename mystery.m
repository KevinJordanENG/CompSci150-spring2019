function outvar = mystery(x,y)
% MYSTERY computes ______?
if y == 1
outvar = x;
else
outvar = x + mystery(x,y-1);
end
end