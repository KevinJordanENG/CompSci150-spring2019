function rando = myrandi(varargin)
% myrandi prints a random integer for a various number of inputs
if nargin == 0
    rando = randi([1,10]);
elseif nargin == 1
    rando = randi([1,varargin{1}]);
elseif nargin == 2
    rando = randi([varargin{1},varargin{2}]);
else
    disp('Error: please enter nothing, max integer, or min and max')
    disp('(0,1, or 2 input values)')
end
end

