function varargout = CtoF(varargin)
% CTOF MATLAB code for CtoF.fig
%      CTOF, by itself, creates a new CTOF or raises the existing
%      singleton*.
%
%      H = CTOF returns the handle to a new CTOF or the handle to
%      the existing singleton*.
%
%      CTOF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CTOF.M with the given input arguments.
%
%      CTOF('Property','Value',...) creates a new CTOF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CtoF_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CtoF_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CtoF

% Last Modified by GUIDE v2.5 22-May-2019 20:23:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CtoF_OpeningFcn, ...
                   'gui_OutputFcn',  @CtoF_OutputFcn, ...
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


% --- Executes just before CtoF is made visible.
function CtoF_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CtoF (see VARARGIN)

% Choose default command line output for CtoF
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CtoF wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CtoF_OutputFcn(hObject, eventdata, handles) 
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
temp = get(handles.edit1,'String');
Tempnum = str2num(temp);
Tf = (1.8*Tempnum) + 32;
%newtemp = num2str(Tf);
st = sprintf('%s C = %3.1f F',temp,Tf);
set(handles.text4,'String',st);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp = get(handles.edit1,'String');
Tempnum = str2num(temp);
Tc =(Tempnum - 32)/1.8;
st = sprintf('%s F = %3.1f C',temp,Tc);
set(handles.text4,'String',st);
