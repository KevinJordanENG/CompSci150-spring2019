% this program provides 3 f(a,b,c) for user defined inputs of Vo and theta
% (a) to provide outputs of tflight, xmax, and ymax
% (b) to provide output graph representing (x,y)
% (c) to provide output graph representing V(t)
% declare g=9.81m/s^2
g= 9.81;
% prompt user for Vo(initial velocity in m/s) and theta(launch angle in
% degrees)
Vo= input('Enter Initial Velocity in Meters per Second: ');
theta= input('Enter Launch angle in Degrees: ');
% input values into tflight=2*(Vo/g)*sind(theta) to find tflight(total flight
% time)
tflight= 2*(Vo/g)*(sind(theta));
% input Vo, theta, and tflight into xmax=Vo*tflight*cosd(theta) to find
% xmax(max x distance)
xmax= Vo*tflight*(cosd(theta));
% input Vo, theta, and tflight into ymax=(Vo/4)*tflight*sind(theta) to find
% ymax(max y height)
ymax= (Vo/4)*tflight*(sind(theta));
% input tflight into Tflight=linspace(0,tflight,100) to generate vector
% array Tflight(100 values for given tflight)
Tflight= linspace(0,tflight,100);
% input Tflight, Vo, and theta into x=Vo*Tflight*cosd(theta) and
% y=(Vo*Tflight*sind(theta))-((1/2)*g*(Tflight.^2) 
x= Vo.*Tflight.*(cosd(theta));
y= (Vo.*Tflight.*(sind(theta)))-((1/2).*g.*(Tflight.^2));
% input Tflight, Vo, and theta into Vx=Vo*cosd(theta) and
% Vy=(Vo*sind(theta))-(g*Tflight) to generate Vx, Vy
Vx= Vo*(cosd(theta));
Vy= (Vo*(sind(theta)))-(g.*Tflight);
% input Vx, Vy into V=sqrt(Vx.^2+Vy.^2)
V= sqrt((Vx.^2)+(Vy.^2));
% output (a) in values and (b) and (c) in graphs
fprintf('(a) %7.4f Seconds of Flight \n' , tflight)
fprintf('    %7.4f Maximum Horizontal Distance in Meters \n' , xmax)
fprintf('    %7.4f Maximum Vertical Height in Meters \n' , ymax)
plot(x,y)
title('(b): Cartesian Projectile Location (x,y)')
xlabel('Distance in Meters'); ylabel('Height in Meters')
figure(2); plot(Tflight,V)
title('(c): Velocity as a Function of Time V(t)')
xlabel('Time (Seconds)'); ylabel('Velocity (Meters/Second)')