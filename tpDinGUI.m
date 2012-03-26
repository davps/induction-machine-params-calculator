function varargout = tpDinGUI(varargin)
% TPDINGUI M-file for tpDinGUI.fig
%      TPDINGUI, by itself, creates a new TPDINGUI or raises the existing
%      singleton*.
%
%      H = TPDINGUI returns the handle to a new TPDINGUI or the handle to
%      the existing singleton*.
%
%      TPDINGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TPDINGUI.M with the given input arguments.
%
%      TPDINGUI('Property','Value',...) creates a new TPDINGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tpDinGUI_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tpDinGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help tpDinGUI

% Last Modified by GUIDE v2.5 10-May-2010 20:19:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tpDinGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @tpDinGUI_OutputFcn, ...
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


% --- Executes just before tpDinGUI is made visible.
function tpDinGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tpDinGUI (see VARARGIN)

% Choose default command line output for tpDinGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tpDinGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tpDinGUI_OutputFcn(hObject, eventdata, handles) 
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
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function inputR2_Callback(hObject, eventdata, handles)
% hObject    handle to inputR2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputR2 as text
%        str2double(get(hObject,'String')) returns contents of inputR2 as a double


% --- Executes during object creation, after setting all properties.
function inputR2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputR2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function inputX1_Callback(hObject, eventdata, handles)
% hObject    handle to inputX1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputX1 as text
%        str2double(get(hObject,'String')) returns contents of inputX1 as a double


% --- Executes during object creation, after setting all properties.
function inputX1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputX1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function inputX2_Callback(hObject, eventdata, handles)
% hObject    handle to inputX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputX2 as text
%        str2double(get(hObject,'String')) returns contents of inputX2 as a double


% --- Executes during object creation, after setting all properties.
function inputX2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function inputXm_Callback(hObject, eventdata, handles)
% hObject    handle to inputXm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputXm as text
%        str2double(get(hObject,'String')) returns contents of inputXm as a double


% --- Executes during object creation, after setting all properties.
function inputXm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputXm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function inputpolos_Callback(hObject, eventdata, handles)
% hObject    handle to inputpolos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputpolos as text
%        str2double(get(hObject,'String')) returns contents of inputpolos as a double


% --- Executes during object creation, after setting all properties.
function inputpolos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputpolos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function inputpotencia_Callback(hObject, eventdata, handles)
% hObject    handle to inputpotencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputpotencia as text
%        str2double(get(hObject,'String')) returns contents of inputpotencia as a double


% --- Executes during object creation, after setting all properties.
function inputpotencia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputpotencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function inputVLL_Callback(hObject, eventdata, handles)
% hObject    handle to inputVLL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputVLL as text
%        str2double(get(hObject,'String')) returns contents of inputVLL as a double


% --- Executes during object creation, after setting all properties.
function inputVLL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputVLL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function inputs_Callback(hObject, eventdata, handles)
% hObject    handle to inputs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputs as text
%        str2double(get(hObject,'String')) returns contents of inputs as a double


% --- Executes during object creation, after setting all properties.
function inputs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in pushbuttonCalcular.
function pushbuttonCalcular_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonCalcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

s           = str2num(get(handles.inputs, 'String')) / 100 %dividido 100 para que no este en porcentaje
polos       = str2num(get(handles.inputpolos, 'String'))
fe1         = str2num(get(handles.inputfe1, 'String'))
potencia    = str2num(get(handles.inputpotencia, 'String')) * 1000 %se multiplica por 1000 por ser KW en el dato
VLL         = str2num(get(handles.inputVLL, 'String'))
R1          = str2num(get(handles.inputR1, 'String'))
R2          = str2num(get(handles.inputR2, 'String'))
X1          = str2num(get(handles.inputX1, 'String'))
X2          = str2num(get(handles.inputX2, 'String'))
Xm          = str2num(get(handles.inputXm, 'String'))


[na1, ns, Tflecha, Pflecha, I1, fp, nef] = tpDin(s, polos, fe1, potencia, VLL, R1, R2, X1, X2, Xm)

a1 = strcat('=  ', num2str(na1));
a2 = strcat('=  ', num2str(ns));
b1 = strcat('=  ', num2str(Tflecha));
b2 = strcat('=  ', num2str(Pflecha));
c1 = strcat('=  ', num2str(I1));
c2 = strcat('=  ', num2str(fp));
d1 = strcat('=  ', num2str(nef)); 


set( handles.text_a1, 'String',  a1);
set( handles.text_a2, 'String',  a2 );
set( handles.text_b1, 'String',  b1 );
set( handles.text_b2, 'String',  b2 );
set( handles.text_c1, 'String',  c1 );
set( handles.text_c2, 'String',  c2 );
set( handles.text_d1, 'String',  d1 );


if length(get(handles.text_a1, 'String')) == 0
    axes(handles.axes2);
end

cla;
%tpDinGrafico(s, polos, fe1, potencia, VLL, R1, R2, X1, X2, Xm);
%tpDinGrafico;
ejes = []; ejeTflecha = []; ejePflecha = []; ejeI1 = []; ii = 0;

%for s=0:0.01:2
for sit=0:s/100:s*20
    
    ii = ii + 1;
    
    [na1, ns, Tflecha, Pflecha, I1, fp, nef] = tpDin(sit, polos, fe1, potencia, VLL, R1, R2, X1, X2, Xm);
   
    %ii = length(ejes) + 1;
    ejeTflecha(ii) = Tflecha;
    ejeI1(ii) = I1;
    ejePflecha(ii) = Pflecha;
    %ejes(ii) = s/100;
    ejes(ii) = sit;

end

%length(ejeTflecha)
%length(ejes)


subplot(2,3,4)
plot(ejes, ejeTflecha, 'r-')
legend('Par de salida')
grid on
xlabel('s')
ylabel('Tsalida')

subplot(2,3,5)
plot(ejes, ejeI1, 'g--')
legend('Corriente del estator')
grid on
xlabel('s')
ylabel('I1')

subplot(2,3,6)
plot(ejes, ejePflecha, 'b--')
legend('Potencia de salida');
grid on
xlabel('s')
ylabel('Psalida')



guidata(hObject, handles);






function inputR1_Callback(hObject, eventdata, handles)
% hObject    handle to inputR1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputR1 as text
%        str2double(get(hObject,'String')) returns contents of inputR1 as a double


% --- Executes during object creation, after setting all properties.
function inputR1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputR1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function inputfe1_Callback(hObject, eventdata, handles)
% hObject    handle to inputfe1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputfe1 as text
%        str2double(get(hObject,'String')) returns contents of inputfe1 as a double


% --- Executes during object creation, after setting all properties.
function inputfe1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputfe1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


