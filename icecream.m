%icecream gives cost analysis on custom ice cream dimensions
%define variables
r = input('Please enter a Radius in cm: ');
h = input('Please enter Height of cone in cm: ');
%call cone area f(x)
SA = coneArea(r,h);
%call volume f(x)
V = volicecream(r,h);
%calculate price of cone
coneprice = SA .* (.01);
%calculate price of ice cream
iceprice = V .* (.03);
%add overhead cost
totalprice = coneprice + iceprice + (.75);
%output pretty
fprintf('For a cone with radius %2.1f cm and height %2.1f cm, the price of the icecream is $%3.2f \n',r,h,totalprice)