function writer2 ( fid, structvar )
% Writes data in struct array structvar to file w id number stored in fid.
% write header row that contains names of data fields
fprintf( fid, '   firstname     lastname      average\n'); % write header to file
% write data to file
for k = 1 : length ( structvar ) % for each record in structvar
fprintf ( fid, '%12s %12s %12.1f \n',... % use these formats with spaces
structvar(k).firstname,... % print each data field to file
structvar(k).lastname,...
structvar(k).average);
end