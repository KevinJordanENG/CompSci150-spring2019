Hour=input('Enter the current hour: ');
Hour = floor(Hour);
if Hour>=0 && Hour<=23
    fprintf('The next hour will be %d.\n', nexthour(Hour) )
else
    fprintf('Please enter a number from 0 to 23.')
end