% 1. open data file, get data, and close file
fid = fopen ( 'scores.txt', 'r' );
if fid == -1
    disp('Error: file did not open successfully')
else
    disp('File opened successfully!')
    scores = reader2(fid); % call exreader fn; store data in scores
end
closeresult = fclose(fid);
if closeresult == -1
    disp('Error: file did not close successfully')
end
% 2. print to verify load
prntable2(scores)
% 3. Calculations and assignments
A = [scores.test1]; % extract test 1 values
B = [scores.test2]; % extract test 2 values
C = [scores.test3]; % extract test 3 values
Z = (A+B+C)/3;      % compute average
avcell = num2cell(Z);   % assign to cell array
[scores.average] = avcell{:};    % add feild to scores structure
[cvar2, J] = sortrows(avcell'); %extract sorted list/indicies
scores = scores(J); % apply indexed sort to scores
% 4. print to verify sort
disp('Sorted by Average')
prntable3(scores)
% 5. Open output file, write data, and close file
fid = fopen ( 'averages.txt', 'w' );
if fid == -1
    disp('Error: file did not open successfully')
else
    writer2(fid, scores); % call exwriter function with scores
end
closeresult = fclose(fid);
if closeresult == -1
    disp('Error: file did not close successfully')
end
disp('Successfully Exported Data to File')