% minboxC calculates minimum cost for box with input Volume
%prompt user for Volume
TotalV = input('Please enter a volume in cm to test: ');
Vp = TotalV ./ 3;
FunH3 = @(x1,x2) (.0005 .* (6.*x2.*x1) + (2.*(x1.^2))) + (.0003 .* (x2.*(x1.^2))-Vp)