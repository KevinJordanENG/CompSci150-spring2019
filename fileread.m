function carinfo = fileread(INfile,delim)
% FILEREAD reads delim-separated data from INfile
fid = fopen(INfile,'r');
if fid == -1
    disp('Error: problem opening file.')
else
    disp('File opened successfully.')
    % Read data from file
    fgetl(fid);         % read header line
    k = 1;              % initialize counter
    carinfo = struct;   % initialize structure variable
    clear Cdata;        % clear cell variable for data elements 
    while ~feof(fid)
        linestr = fgetl(fid);   % get one row of data
        m = 1;                  % initialize element counter m
        while ~isempty(linestr)
            [Cdata{m},linestr] = strtok(linestr,delim);  % parse string
            m = m + 1;                                   % increment m
        end
        carinfo(k).country = Cdata{1};          % 1st element is country
        carinfo(k).price = str2num(Cdata{2});   % 2nd element is price ($/gal)
        carinfo(k).mpg = str2num(Cdata{3});     % 3rd element is fuel eff. (mpg) 
        carinfo(k).vmt = str2num(Cdata{4});     % 4th element is vehicle mi travelled
        k = k + 1;                               % increment counter k
    end
end
closeresult = fclose(fid);
if closeresult == -1
    disp('Error: problem closing file.')
else
    disp('File closed successfully.')
end
