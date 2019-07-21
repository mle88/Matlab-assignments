sr = 44000;  % sampling rate
d = 1; %duration of sound in sec
noise = randn(1, d*sr );
figure;plot( noise )
sound( noise, sr )

f = 3000; % tone freq
t = linspace(0, d, sr*d);
tone = sin(2*pi*f*t);
figure;plot( tone )
sound( tone , sr)

% excercise
% generate 1 sec tone at 3kHz followed by 1 sec tone of 5kHz

g = 5000;
tone2= sin(2*pi*g*t);
sound(tone2, sr)
combined = [tone tone2];
pause(1)
sound(combined, sr)

%-- other solution with using loop 
f = [3000 5000 ]; % tone freq
t = linspace(0, d, sr*d);
for i=1:length(f)
    tone3 = sin(2*pi*f(i)*t) / i; 
    sound( tone3 , sr)
    pause(1)
end

%-- 3 tones with different laudness
f = [3000 3000 3000 ]; % tone freq
t = linspace(0, d, sr*d);
for i=1:length(f)
    tone3 = sin(2*pi*f(i)*t) / i;  %- modify loudnes 
    sound( tone3 , sr)
    pause(1)
end

audiowrite('tone_comb.wav',  combined, sr ) %save audio file 

[y , Fs ] = audioread('tone_comb.wav');%load  audio file 
figure;plot( y )

5 read wave file
[y , Fs ] = audioread('\\ulhome\luczak\data\Desktop\Matlab2017\Track12cwierk.wav');
sound( y , Fs )
figure;plot( y ) %here y has 2 rows coresponding to 2 chanels for stero sound


% Plot spectogram
figure; spectrogram( tone, [],[],[], sr ) %- single band coresponding to single tone
figure; spectrogram( y(:,1), [],[],[], Fs )

%-- using Matlab for optimization problems
%-- we have 500m of fence. Task: design rectangular enclousure with bigest area (x * y)
clear all
f  = 500;
a=[];
for x = 1:1:f %- try every x
    y = (500 - 2*x) / 2; % find length of y for given x 
    a(x) = x*y; % area
end

figure;plot( a )
[max_a best_x]  = max( a )


















