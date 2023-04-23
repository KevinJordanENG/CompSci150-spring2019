function [ J ] = ibubble( x )
N = length(x);
J = 1 : N;
for p = 1 : N-1 % for each pass
    for k = 1 : N-p % for each element (1 less each pass)
        if x( J(k) ) > x( J(k+1) ) % if out of order
            
            temp = J(k); % swap indices
            J(k) = J(k+1);
            J(k+1) = temp;
            
        end % end if
    end % end inner loop
end % end outer loop
end