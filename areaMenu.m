%areaMenu calculates area for user input shape and dimentions
%GUI
choice = menu('Choose a Shape','Circle','Rectangle','Triangle'); %press button
switch choice
    case 1 %if 1 chosen
    r = input('Please Enter Radius: '); %prompt for radius
    CA = pi .* (r.^2); %area formula
    fprintf('Area of Your Circle is %6.3f \n',CA) %display results
    case 2 %if 2 chosen
    b = input('Please Enter Base Length: '); %prompt for base
    h = input('Please Enter Height: '); %prompt for height
    RA = b.*h; %area formula
    fprintf('Area of Your Rectangle is %6.3f \n',RA) %display results
    case 3 %if 3 chosen
    b = input('Please Enter Base Length: '); %prompt for base
    h = input('Please Enter Height: '); %prompt for height
    TA = (.5).*b.*h; %area formula
    fprintf('Area of Your Triangle is %6.3f \n',TA) %display results
    otherwise %if no button pressed
    fprintf('Please?') %display error
end