function structvar = reader2(fid)
% Reads data from file with id number stored in fid.
% Returns data in structure array.
linestr = fgetl ( fid ); % reads first line with headers
k = 1;
while ~feof ( fid ) % feof(fid) returns true if end of file encountered
linestr = fgetl ( fid ); % read one row of data from file as string
% break linestr into separate variables at commas
[structvar(k).lastname, linestr] = strtok(linestr, ','); % lastname, rest
[structvar(k).firstname, linestr] = strtok(linestr, ','); % firstname, rest
[Temptest1, linestr] = strtok(linestr, ',');
structvar(k).test1 = str2double(Temptest1);
[Temptest2, linestr] = strtok(linestr, ',');
structvar(k).test2 = str2double(Temptest2);
[Temptest3, linestr] = strtok(linestr, ',');
structvar(k).test3 = str2double(Temptest3);
k = k + 1; % next row in data file
end