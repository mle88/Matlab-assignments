x=1.0:0.1:30;
%xcos=cos(x);
x_cos=cos(x)+1;
figure; %open figure window
plot(x,x_cos);
x_sin=sin(x+1); %highlight and press f9-> this will run only the highlighted code
figure;
plot(x,x_sin);
hold on; plot(x,x_sin+1);
sum_cs=x_cos+x_sin;
figure;
plot(x,sum_cs)
plot(sum_cs)
figure; 
plot(x,x_cos+x_sin*2-5)
grid on %can also use grid off
xlabel('value x')
ylabel('cos')
title ('our first plot')
text(1,-2, 'text#1')
xmin =-3; xmax =10; ymin=-6; ymax=3;
axis([xmin xmax ymin ymax])

v=rand(1,10);
figure;
plot(v);

clear all;
close all;
x=3:10;
y = x+1;
figure;plot(x,y,'+g');%'*r' ->many symbols and colour variations
Arr=[0 2 4 10; 0 3 3 20; 10 5 1 13]
figure;plot(Arr);
figure;plot(Arr');

figure;subplot(1,2,1);
plot (Arr)
subplot(1,2,2); %subplot (x,y,p) x= rows y = columns p=position
plot (Arr')

figure;subplot(2,2,1);
plot (Arr)
subplot(2,2,3);
plot (Arr')
subplot(2,2,[2,4]);
plot (Arr)

