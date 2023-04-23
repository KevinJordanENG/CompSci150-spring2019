function [x] = bubble( x )
% BUBBLE sorts a list contained in an array variable x
% using the bubble (sinking) sort algorithm
tic
N = length(x); % number of elements N
n=0;  %initialize n
for p = 1 : N-1         % N-1 passes needed
    for k = 1 : N-p    % 1 less comparison needed each pass
        if x(k+1) < x(k)        % true --> needs to be sorted  
            n = n+1;            % count swap
            temp = x(k);        % swap the two elements
            x(k) = x(k+1);      
            x(k+1) = temp;
        end                     % end if
    end                 % end inner for
    
end                     % end outer for
%C = (N.*(N-1)/2);
%S = n;
%fprintf('Number of Comparisons %4.0f       Number of Swaps %4.0f \n',C,S)
t = toc
end  % end function