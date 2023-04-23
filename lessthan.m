function out = lessthan(a,b)
% Compares a and b, returning logical true if a is less than b. works for
%numerical or string a and b (compares as string if either is string).
if ischar(a) || ischar(b)       % check if either input is string
    i = 1;                      % initialize character index
    a = lower(a);               % convert a to lowercase
    b = lower(b);               % convert b to lowercase
    
    % Loop through corresponding characters until different or end of
    % string
    while a(i) == b(i) && i < length(a) && i < length(b)
        i = i+1;
    end
    
    if a(i) == b(i) % indicates match up to end of one string
        out = length(a) < length(b); % shorter string is "less than"
    else        % indicates a mismatch in corresponding characters
        out = a(i) < b(i);      % check if a(i) less than b(i)
    end
else                % indicates a and b are numerical
    out = a < b;    % compare to see if a less than b
end