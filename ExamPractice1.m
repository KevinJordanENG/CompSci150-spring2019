%Load data from RLdata.txt
data=load('RLdata.txt');
%extract variables
sec=data(:,1);
amp=data(:,2);
%plot data
plot(sec,amp,'ro')
%title and label plot
title('Current')
xlabel('Time (s)');ylabel('Amps')
%perform linear interpolation
lin=interp1(sec,amp,40);
%output in nice readable fasion
fprintf('Estimated current is %3.2f A at a time of 40 sec.\n',lin)