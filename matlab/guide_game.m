function varargout = guide_game(varargin)
% GUIDE_GAME MATLAB code for guide_game.fig
%      GUIDE_GAME, by itself, creates a new GUIDE_GAME or raises the existing
%      singleton*.
%
%      H = GUIDE_GAME returns the handle to a new GUIDE_GAME or the handle to
%      the existing singleton*.
%
%      GUIDE_GAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIDE_GAME.M with the given input arguments.
%
%      GUIDE_GAME('Property','Value',...) creates a new GUIDE_GAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guide_game_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guide_game_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guide_game

% Last Modified by GUIDE v2.5 22-Oct-2018 16:51:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guide_game_OpeningFcn, ...
                   'gui_OutputFcn',  @guide_game_OutputFcn, ...
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


% --- Executes just before guide_game is made visible.
function guide_game_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guide_game (see VARARGIN)

% Choose default command line output for guide_game
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guide_game wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guide_game_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

tic  %start timer
figure; hold on
axis([0 10 0 10])
%figure;ginput
for i = 1:6 % loop to display one target at the time
    x_cir = rand*10; %- location of target
    y_cir = rand*10;
    plot(x_cir, y_cir,'o'); 
    [x y] = ginput(1);  %- location of mouse click
    plot(x,y,'x');
    dist_cir = sqrt((x_cir - x)^2 + (y_cir - y)^2); % distance between target and click  
    while dist_cir > 0.2
%         x_cir = rand*10;
%         y_cir = rand*10;
%         plot(x_cir, y_cir,'o');
        [x, y] = ginput(1);
        plot(x,y,'x');
        dist_cir = sqrt((x_cir - x)^2 + (y_cir - y)^2); % distance between target and click  
    end    
end
t = toc % total elapsed time
if t <20 
    text (5,5,'Good job!') 
end
