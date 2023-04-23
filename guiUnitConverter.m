function guiUnitConverter
% GUI example w/ editable text box and callback from Attaway 2e, p449
f = figure; % create blank figure and assign handle to f
set(f,'Visible','off','Color','white','Position',[360,500,400,250],...
    'Name','GUI with edit box'); % make invisible and set properties
movegui(f,'center'); % move to center of screen
hsttext = uicontrol; % create object and assign handle to hsttext
% make object a static text box and set properties
set(hsttext,'Style','text','BackgroundColor','white',...
    'Position',[80,178,100,25],'String','inches =');
huitext = uicontrol; % create object and assign handle to huitext
set(huitext,'Style','edit',... % make object an edit box
    'BackgroundColor',[.9 .9 .9],...
    'Position',[40,175,60,40]); % set pos [L,B,W,H] rel to figure
hbutton = uicontrol; % create object and assign handle to hbutton
set(hbutton,'Style','pushbutton',... % make object a pushbutton
    'String','Convert!',... % set 'Push Me!' to button string
    'BackgroundColor',[.9 .9 .9],...
    'Position',[140,30,160,55],... % set position in figure
    'Callback',@callbackfn); % call f(x) at event
set(f,'Visible','on'); % make GUI visible
% Nested callback function called by 'Callback' property of edit box
    function callbackfn(source,eventdata)
        % input arg source passes handle of object that called callbackfn
        % input arg eventdata passes other info related to event
        %set([hsttext, huitext, hbutton], ... %turns visibility of static/edit
        %'Visible','off'); %box and button off
        printstr = get(huitext,'String'); %assign string data from entered
        %huitext to variable printstr
        inch = str2num(printstr); %turn input string value of huitext to number
        cm = 2.54 .* inch; % do the inch to cm calculation
        cms = num2str(cm); % convert the result back to string for display
        cmt = ' cm'; % create cm unit string
        converted = strcat(cms, cmt); % concatenate numeric string w/ unit string
        hstr = uicontrol; %generate new object hstr
        set(hstr,'Style','text',... %define object hstr as static text box
            'Backgroundcolor','white',... %set background color to white
            'Position',[170,151,120,60],... %position text object by pixles
            'String',converted,... %display converted inch2cm result
            'ForegroundColor','Red',... %change text object color to red
            'Fontsize',24,... %set font size to 30
            'Visible','on'); %turn visibility back on for final viewing
    end
end