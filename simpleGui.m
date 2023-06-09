function simpleGui
% Simple GUI example w/ static text box from Attaway 2e, p448
f = figure; %
set(f,'Visible', 'off',... %
    'Color', 'white',... %
    'Position',[360,500,400,250],... %
    'Name','Simple GUI'); %
htext = uicontrol; %
set(htext,'Style','text',... %
    'Position',[100,150,200,25],... %
    'String','My first GUI string'); %
movegui(f,'center'); %
set(f,'Visible','on'); %
end