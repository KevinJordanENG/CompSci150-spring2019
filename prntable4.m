function prntable4(averages)
fprintf('   firstname     lastname      average \n');
 
for k = 1:length(averages)
    
fprintf('%12s %12s %12.1f \n', ...
averages(k).firstname, averages(k).lastname, averages(k).average);
end