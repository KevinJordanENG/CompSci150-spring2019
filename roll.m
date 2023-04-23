function [] = roll(varargin)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
if nargin == 0
    ra = randi([1 6],1,1);
    uint8(ra)
elseif nargin == 1
    N = varargin;
    n = N{1,1};
    ra = randi([1 6],1,n);
    ura = uint8(ra);
    sort(ura)
else nargin > 1;
    disp('Too many input arguments')
end
end

