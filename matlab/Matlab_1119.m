sr = 44000; % sampling rate
d=1; %duration of sound in sec

noise = randn( 1, d*sr);
figure; plot (noise)
sound(noise)


f = 2000; %tone freq
t = linspace(0,d,sr*d)
tone = sin(2*pi*f*t);
figure; plot(tone)
sound(tone,sr)

close all;
%%
f1 = 3000; %tone freq
f2 = 5000; %tone freq
tone1 = sin(2*pi*f1*t);
tone2 = sin(2*pi*f2*t);

noise1 = [tone1 tone 2]
%noise1 = [randn( 1, d*f1) randn( 1, d*f2)]

figure; plot (noise1)
sound(noise1, sr)

%% 
f= [ 3000 3000 3000]
t = linspace(0,d,sr*d);
for i=1:length(f)
    tone = sin (2*pi*f(i)*t)/i;
    sound(tone,sr)
    pause(1)
end

audiowrite('tone_comb.wav',noise1, sr);

[y,Fs] = audioread('tomb_comb.wav');
figure;
plot (y)

close all;
%%
[y,Fs] = audioread('\\ulhome\m.le\data\Desktop\Track12cwierk.wav');
sound(y,Fs)
figure; plot(y)

%%spectrogrammmm

figure; spectrogram (tone , [], [],[],sr)

% y has two channels so it is an array. choose one end
figure; 
test=spectrogram (y(:,1), [], [],[],Fs)


%%------500m of fencing avaiable---->what is the optimal lengths to maximize
%area

clear all;
f=500;
a=[];
for x = 1:1:f
    y=(500-2*x) / 2;
    a(x) = x*y;
end

figure; plot(a)

[max_a best_x] = max(a)