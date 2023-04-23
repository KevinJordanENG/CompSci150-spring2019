choice = 0;
while choice ~= 8
    
    choice = menu('Please choice an option', 'Load Room Data', 'Sort Data',...
        'Display Table','Total Area','Average Capacity','Query','Export Room Data', 'Quit');
    
    switch choice
        
        case 1 %load data
            % 1. open data file, get data, and close file
            filename = input('Enter name of file.extension that contains data: ', 's');
            fid = fopen ( filename, 'r' );
            if fid == -1
                disp('Error: file did not open successfully')
            else
                room = reader1(fid); % call exreader fn; store data in room
            end
            closeresult = fclose(fid);
            if closeresult == -1
                disp('Error: file did not close successfully')
            end
            
        case 2 % sort data
            Fields = fieldnames(room);  % get field names from room structure
            choose = menu('Please choose a field to sort', Fields);  % menu of fields
            fnm = Fields{choose};   % assign the chosen field name to a variable fnm
            eval( sprintf('[cvar{1:length(room)}] = deal(room.%s);',fnm) ); % create cell array
            [cvar2, J] = sortrows(cvar'); %extract sorted list/indicies
            room = room(J); % apply indexed sort to room
            
        case 3 %display table
            prntable(room)
            
        case 4 %area
            sum( [room.area] )
            
        case 5 %average capacity calc
            sum( [room.capacity] ) ./ length([room.capacity])
            
        case 6 %query
            rmquery(room)
            
        case 7 % write/export
            % 3. Open output file, write data, and close file
            filename = input('Enter name of file.extension for writing: ', 's');
            fid = fopen ( filename, 'w' );
            if fid == -1
                disp('Error: file did not open successfully')
            else
                writer1(fid, room); % call exwriter function with room
            end
            closeresult = fclose(fid);
            if closeresult == -1
                disp('Error: file did not close successfully')
            end
            
        otherwise
            disp('Yo choose something!')
    end
end