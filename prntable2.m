function prntable2(scores)
fprintf('lastname  firstname  test1  test2  test3 \n');
 
for k = 1:length(scores)
    
fprintf('%12s %12s %3.1f %3.1f %3.1f \n', ...
scores(k).lastname, scores(k).firstname, scores(k).test1, scores(k).test2, scores(k).test3);
end