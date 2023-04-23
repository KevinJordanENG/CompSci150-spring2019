% fuelexpense reads data makes a calc and sorts
fuel = fileread('fuelinfo.txt',',');    %call reader function
mpg= [fuel.mpg];           % extract mpg
price = [fuel.price];      % extraxt price
vmt = [fuel.vmt];          % extract vmt
[country{1:11}] = deal(fuel.country);   % extract country
expense = price .* vmt .* ((10^3)./mpg); % calc perperson $/yr
[fuel.expense] = deal(expense);     % add expense to fuel
[Y, J] = sort(country);