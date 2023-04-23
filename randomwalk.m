% this program simulates a random walk
p = 0.5;			% the probability of each is 0.5		
Nsteps = 10;        %iterate
x = 0;              %initialize
for particlePos = 1:Nsteps     %repeat simulation
    r = rand;       % generate a random number from 0 to 1
    if r < p			% this should happen about 50% of the time
        x = x + 1;
    else			% if it?s not + must be -
        x = x - 1;
    end
    plot ( x, 0, 'o' ), axis([-20 20 -1 1]), grid;      %animated graph
pause ( 0.1 )           %animated graph
end
fprintf('Position of x %d \n', x)		% display position
