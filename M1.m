%***********************matrix addition program*************************
function [C] = M1(A,B)                                % fuction name
fprintf('Please enter two matricies of equal size,\n'); % user prompt
A=input('Enter matrix A  ');                            % user input A
B=input('Enter matrix B  ');                            % user input B
[m, n]=size(A);                                         % size matrix A
[k, l]=size(B);                                         % size matrix B
if m~=k || n~=l                                         % check size =
    fprintf('Error. The matricies are not the same size!');     % error
else                                                    % when equal
    for i=1:m                                           % rows elements
        for j=1:n                                       % colums elements
            C(i,j)=A(i,j)+B(i,j);                       % add of elements
        end
    end
fprintf('The sum of the matricies is,\n');              % print sum
end
end