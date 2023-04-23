function varargout = GUIDE2(varargin)
% GUIDE2 MATLAB code for GUIDE2.fig
%      GUIDE2, by itself, creates a new GUIDE2 or raises the existing
%      singleton*.
%
%      H = GUIDE2 returns the handle to a new GUIDE2 or the handle to
%      the existing singleton*.
%
%      GUIDE2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIDE2.M with the given input arguments.
%
%      GUIDE2('Property','Value',...) creates a new GUIDE2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIDE2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIDE2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIDE2

% Last Modified by GUIDE v2.5 06-May-2019 20:57:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIDE2_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIDE2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUIDE2 is made visible.
function GUIDE2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIDE2 (see VARARGIN)

% Choose default command line output for GUIDE2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIDE2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIDE2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printstr = get(handles.edit1,'String'); %assign string data from entered
        %huitext to variable printstr
        inch = str2num(printstr); %turn input string value of huitext to number
        cm = 2.54 .* inch; % do the inch to cm calculation
        cms = num2str(cm); % convert the result back to string for display
        cmt = ' cm'; % create cm unit string
        converted = strcat(cms, cmt); % concatenate numeric string w/ unit string
        hstr = uicontrol; %generate new object hstr
        set(handles.text3,'String',converted);
