%this program evaluates character in ASCII form to see if its uppercase,
%lowercase, or not in the alphabet
str = input('Enter a character: ', 's'); %prompt for character input
cod = double(str); %convert string to ASCII code value
if length(cod) > 1 %evaluate if more than one character element
    fprintf('Please enter a SINGLE character.') %display error
elseif cod >=0 && cod <=64 %check first non alphabet bracket
    fprintf('%c is not a letter of the alphabet.\n',str) %display no alpha
elseif cod >=91 && cod <=96 %check second non alphabet bracket
    fprintf('%c is not a letter of the alphabet.\n',str) %display no alpha
elseif cod >=123 && cod <=127 %check third non alphabet bracket
    fprintf('%c is not a letter of the alphabet.\n',str) %display no alpha
elseif cod >=65 && cod <=90 %check uppercase bracket
    fprintf('%c is an uppercase letter.\n',str) %display uppercase
elseif cod >=97 && cod <=122 %check lowercase bracket
    fprintf('%c is a lowercase letter.\n',str) %display lowercase
end