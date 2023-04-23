%initialize values for alumina Al2O3
k = 30; %thermal conductivity W m^-1 K^-1
p = 3950; %density kg m^-3
c = 880; %heat capacity J kg^-1 K^-1
%intialize environment values
tin = 1200; %temp in (K)
tout = 300; %temp out (K)
L = 0.10; %wall thickness (meters)
%set values for use in equation
alpha = k./(p.*c);
x = linspace(0, L, 50);
for t = 0:10:200
theta = InfConduct(x, t, alpha); %call fun for theta
T = tout + theta.*(tin-tout); %solve for T
plot(x, T); %plot T as function of x
grid
pause(0.5);
axis([0 L 250 1200])
xlabel('x: wall thickness (m)');
ylabel('T: temperature (K)');
title('Temperature over time');
end