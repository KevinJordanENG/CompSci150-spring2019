function [a2npower] = mypower(a,n)
%mypower takes inputs of base (a) and puts it to power (n) (recursive)
a = floor(a);   % ensure a is integer
n = floor(n);   % ensure n is integer
if n == 0       % base case
    a2npower = 1;   % output any (a) to 0 power (1)
elseif n > 0    % general case
    a2npower = a * mypower(a,n-1); % recursivity call mypower f(x)
else n < 0;      % if negative n
    disp('Please enter a positive value for n') %erro msg
end
end