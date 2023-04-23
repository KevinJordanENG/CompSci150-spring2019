% Matrix program of addition
function c=addm(a,b)
[m, n]=size(a);
[k, l]=size(b);

if m~=k || n~=l,
    fprintf('Error. Sizes of matricies dont match');
else
    for i=1:m,
        for j=1:n,
            c(i,j)=a(i,j)+b(i,j);
        end
    end
end
end
