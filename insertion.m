function [x] = insertion( x )
% INSERTION sorts a list contained in an array variable x
% using the insertion sort algorithm
tic
N = length(x);      % number of elements N
n=0;  %initialize n
for p = 1 : N-1         % N-1 passes needed
    k = p+1;                % initialize k to next unsorted element

    % check for correct location of element k in sorted subarray
    while k>1  &&  x(k) < x(k-1)    % still needs to move "up" list
        n = n+1;
        temp = x(k);                % swap elements
        x(k) = x(k-1);
        x(k-1) = temp;
        k = k - 1;                  % decrement position k of element
    end                     % end inner while

end                     % end outer for
%C = (N.*(N-1)/2);
%S = n;
%fprintf('Number of Comparisons %4.0f       Number of Swaps %4.0f \n',C,S)
t = toc
end  % end function