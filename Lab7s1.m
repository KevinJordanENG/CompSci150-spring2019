%define initial velocity variables (m/s)
g=9.81;
theta=input('Input value for theta in degrees: ')
Vo=input('Input values for initial velocity: ')
tflight=(2/g).*(Vo).*(sind(theta))