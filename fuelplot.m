% fuelplot uses data from fuelinfo.txt file to plot info
fuel = fileread('fuelinfo.txt',',');    %call reader function
MPGy= [fuel.mpg];           % extract mpg
PRICEx = [fuel.price];      % extraxt price
VMTy = [fuel.vmt];          % extract vmt
avmpg = (sum(MPGy))/(length(MPGy)); % calc average mpg
avvmt = (sum(VMTy))/(length(VMTy)); % calc average vmt
subplot(1,2,1)              % subplot
plot(PRICEx,MPGy,'bo')      % plot
title('Average of 27.5 mpg for 11 countries') %label
xlabel('Dolars per Gallon')
ylabel('MPG')
subplot(1,2,2)              % subplot
plot(PRICEx,VMTy,'r^')      % plot
title('Average of 4.4 vmt for 11 countries')  %label
xlabel('Dolars per Gallon')
ylabel('Vehicle Miles Traveled')