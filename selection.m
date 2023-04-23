function [x] = selection( x )
% SELECTION sorts a list contained in an array variable x
% using the selection sort algorithm
tic
N = length(x);     % number of elements N
n=0;  %initialize n
for p = 1 : N-1         % N-1 passes needed
    low = p;                % initialize low to element p
   
    for k = p+1 : N         % 1 less comparison needed each pass
        if x(k) < x(low)        % if true,...
            low = k;             % ...new low
        end                     % end if
    end                     % end inner for
    n = n+1;            % count swap
    temp = x(low);          % swap elements p and low
    x(low) = x(p);
    x(p) = temp;
end                     % end outer for
%C = (N.*(N-1)/2);
%S = n;
%fprintf('Number of Comparisons %4.0f       Number of Swaps %4.0f \n',C,S)
t = toc
end  % end function