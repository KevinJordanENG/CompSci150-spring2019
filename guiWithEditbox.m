function guiWithEditbox
% GUI example w/ editable text box and callback from Attaway 2e, p449
f = figure; % create blank figure and assign handle to f
set(f,'Visible','off','Color','white','Position',[360,500,400,250],...
    'Name','GUI with edit box'); % make invisible and set properties
movegui(f,'center'); % move to center of screen
hsttext = uicontrol; % create object and assign handle to hsttext
% make object a static text box and set properties
set(hsttext,'Style','text','BackgroundColor','white',...
    'Position',[100,150,200,25],'String','Enter your string below');
huitext = uicontrol; % create object and assign handle to huitext
set(huitext,'Style','edit',... % make object an edit box
    'Position',[100,80,200,40],... % set pos [L,B,W,H] rel to figure
    'Callback',@callbackfn); % at event, call callbackfn
set(f,'Visible','on'); % make GUI visible
% Nested callback function called by 'Callback' property of edit box
    function callbackfn(source,eventdata)
        % input arg source passes handle of object that called callbackfn
        % input arg eventdata passes other info related to event
        set([hsttext, huitext], ... %turns visibility of static and edit
            'Visible','off'); %box off
        printstr = get(huitext,'String'); %assign string data from entered
        %huitext to variable printstr
        hstr = uicontrol; %generate new object hstr
        set(hstr,'Style','text',... %define object hstr as static text box
            'Backgroundcolor','white',... %set background color to white
            'Position',[50,80,300,60],... %position text object by pixles
            'String',printstr,... %use text entered to huitext by way of variable
            'ForegroundColor','Red',... %change text object color to red
            'Fontsize',30,... %set font size to 30
            'Visible','on'); %turn visibility back on for final viewing
    end
end