% Simulation of heat transfer random walk for a number of particles
tic
p = 0.5;                    %initialize percent likelyhood                   
Tin = 1200; Tout = 300;     %set Temperature values (K)
Lsteps = 500;               % number of steps for particle
Nparticles = 1000;          % number of particles starting at x = 0
x = zeros(1,Nparticles);    % initialize positions of particles to 0
for k = 1:Lsteps            % for each position in the wall
    for n = 1:length(x)     % and for each particle in x
        r = rand;           % 'toss coin'
        if r < p            % 50/50 chance of
            x(n) = x(n) + 1; % moving right
        else                 % or
            x(n) = x(n) - 1; % moving left
        end
   
    end
    Ndist = hist(x, 0:100); % count particles at each position
    %plot(0:100, Ndist)      % plot distribution of particles
    %pause(.01)              % pause briefly for viewing
    L = 100;                    % set max particle position
    x2 = x(x >= 0 & x < L); %extract particles with in wall values
    lgth = length(x2);      %identify length and assign
    zlngth = zeros(1, 1000);    %create add on for constant temp
    x = [x2 zlngth];            %reasign x for total particles
    Theta = Ndist./Ndist(1);    %calc of dimensionless temp Theta
end
%utilize Lab 18 code for continuum
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
b = linspace(0, L, 50);
for t = 0:5:30
theta = InfConduct(b, t, alpha); %call fun for theta
T = tout + theta.*(tin-tout); %solve for T(L18)
end
Temp = (Theta .* (Tin-Tout)) + Tout; %solve for Theta (Stochastic)
plot(0:.001:.1,Temp, 'bo',b,T,'r')      %Plot
title('Comparison of Modeling')
legend('Stochastic','Deterministic Continuum')  %legend
xlabel('Position in Wall x (m)'),ylabel('Temperature (K)') %Label
t = toc %time stop