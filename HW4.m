%linear regression and plotting
%P = (nRT)*(1/V) + 0
%create 1/V vector
V=[1/10 1/20 1/30 1/40 1/50 1/60];
%regular V for x data
V1=[10 20 30 40 50 60];
P=[2490 1250 820 620 510 410];
%find parameters of m and b
params = polyfit(V,P,1);
%evaluate for n
n=(params(1,1))/(8.314*300);
%display n
fprintf(' %7.4f Moles of Gas \n' , n)
%plot 2 graphs of linear and exponential models
subplot(1,2,1)
plot(V,P,'bx')
ymodel=polyval(params,V);
hold on
plot(V,ymodel,'r')
title('Linearized Form');
xlabel('Volume'); ylabel('Pressure');
subplot(1,2,2)
plot(V1,P,'bx',V1,P,'y')
title('Measured Form');
xlabel('Volume');ylabel('Pressure');