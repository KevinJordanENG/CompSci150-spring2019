function [theta] = InfConduct(x, t, alpha)
%Semi-infinite heat conduction model
theta = erfc(x./sqrt(4.*alpha.*t)); %implement equation
end