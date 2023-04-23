function y = MyQuicksort(x)
% MyQuicksort uses recursion and splitting of arrays
% to sort progressively smaller array bits
tic
n = length(x);      % every element in x
if n < 2            % base condition
    y = x;          % assign sorted
    return;         % kick out of recursion
end                 % end base conditional
x1 = [];            % initialize empty array
x2 = [];            % initialize empty array
for i = 1:n-1       % define pivot and iterations
    if x(i) < x(n)  % less than
        x1 = [x1 x(i)];     % add values to less than pivot array
    else            % greater than
        x2 = [x2 x(i)];     % add values to greater than pivot array
    end             % end if
end                 % end for
y = [quickSorT(x1) x(n) quickSorT(x2)]; % concatenate sorted < = > arrays
t = toc
end                 % end f(x)