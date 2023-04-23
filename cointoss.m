% this program simulates a coin toss
p = 0.5;			% the probability of heads is 0.5		
Ntoss = 50000;
H = 0;
T= 0;
for coinNum = 1:Ntoss
    r = rand;       % generate a random number from 0 to 1
    if r < p			% this should happen about 50% of the time
        H = H + 1;
    else			% if it?s not Heads, it must be Tails
        T = T + 1;
    end
end
fprintf('Number of heads %d Number of tails %d \n', H, T)		% newline after the simulation
fprintf('Percentage heads %.2f \n',H/Ntoss)