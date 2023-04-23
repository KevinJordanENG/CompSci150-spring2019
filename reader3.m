function structvar = reader3(fid)
% Reads data from file with id number stored in fid.
% Returns data in structure array.
linestr = fgetl ( fid ); % reads first line with headers
k = 1;
while ~feof ( fid ) % feof(fid) returns true if end of file encountered
linestr = fgetl ( fid ); % read one row of data from file as string
% break linestr into separate variables at commas
[structvar(k).firstname, linestr] = strtok(linestr, ','); % lastname, rest
[structvar(k).lastname, linestr] = strtok(linestr, ','); % firstname, rest
[Tempaverage, linestr] = strtok(linestr, ',');
structvar(k).average = str2double(Tempaverage);
k = k + 1; % next row in data file
end