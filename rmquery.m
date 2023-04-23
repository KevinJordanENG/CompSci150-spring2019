function rmquery(room)
 
name = input('Please enter a field name: ', 's');
relation = input('Please enter a relational (<, >, ==, etc.): ', 's');
value = input('Please enter a value: ', 's');
for k = 1:length(room)
str = sprintf('room(k).%s %s %s',name, relation, value);
if eval(str) 
   fprintf('%s meets the condition \n', name)
end
end
end