function prntable(room)
fprintf('Building  Room#  Area(ft^2) Capacity  Smart Type  Comment \n');
 
for k = 1:length(room)
    
fprintf('%8s %8s %14.0f %14.0f %d %d %s \n', ...
room(k).bldgcode, room(k).rnumber, room(k).area, room(k).capacity, room(k).smart, room(k).type, room(k).comment);
end