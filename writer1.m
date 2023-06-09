function writer1 ( fid, structvar )
% Writes data in struct array structvar to file w id number stored in fid.
% write header row that contains names of data fields
fprintf( fid, 'bldgcode,rnumber,area,capacity,smart,type,comment \n'); % write header to file
% write data to file
for k = 1 : length ( structvar ) % for each record in structvar
fprintf ( fid, '%s,%s,%5.0f,%3.0f,%1.0f,%1.0f,%s \n',... % use these formats with commas
structvar(k).bldgcode,... % print each data field to file
structvar(k).rnumber,...
structvar(k).area,...
structvar(k).capacity,...
structvar(k).smart,...
structvar(k).type,...
structvar(k).comment);
end