function structvar = reader1(fid)
% Reads data from file with id number stored in fid.
% Returns data in structure array.
linestr = fgetl ( fid ); % reads first line with headers
k = 1;
while ~feof ( fid ) % feof(fid) returns true if end of file encountered
linestr = fgetl ( fid ); % read one row of data from file as string
% break linestr into separate variables at commas
[structvar(k).bldgcode, linestr] = strtok(linestr, ','); % bldgcode, rest
[structvar(k).rnumber, linestr] = strtok(linestr, ','); % rnumber, rest
[TempArea, linestr] = strtok(linestr, ',');
structvar(k).area = str2double(TempArea);
[TempCapacity, linestr] = strtok(linestr, ',');
structvar(k).capacity = str2double(TempCapacity);
[TempSmart, linestr] = strtok(linestr, ',');
structvar(k).smart = str2double(TempSmart);
[TempType, linestr] = strtok(linestr, ',');
structvar(k).type = str2double(TempType);
structvar(k).comment = strtok(linestr, ','); % comment rest
k = k + 1; % next row in data file
end