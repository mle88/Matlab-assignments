
%-- animation 
clear all
figure;
axis([0 10 0 10])
hold on;

%-- ascending path of airplane 
x = 0:0.2:5;
y = 0:0.2:5;

for i = 1:length(x)
%    circle = plot( x( i ), y( i ), 'or')
    line1 = plot( [x( i ) x(i)+1], [y( i ) y( i )], 'r')
    line2 = plot([x(i) x(i)],[y(i)+0.5 y(i)],'r')
    circle = plot( [ x(i)+1], [y( i ) ], 'or')

    F(i) = getframe( gcf );  %-- save current figure as movie frame variable
    
    pause(0.05)    
    
    delete( line1 )
    delete( circle )
    delete(line2)
end

%-- descending path of airplane 
x = 5:0.2:10;
y = 5:-0.2:0;

for i = 1:length(x)
%    circle = plot( x( i ), y( i ), 'or')
    line1 = plot( [x( i ) x(i)+1], [y( i ) y( i )], 'r')
    line2 = plot([x(i) x(i)],[y(i)+0.5 y(i)],'r')
    circle = plot( [ x(i)+1], [y( i ) ], 'or')
%    F(i) = getframe( gcf );
    pause(0.05)    
    delete( line1 )
    delete( circle )
    delete(line2)
end

%-- play movie and save it to file 
% movie( F )
% v = VideoWriter('\\ulhome\luczak\data\My Documents\MATLAB\line_movie.avi');
% open(v);
% writeVideo(v,F)
% close(v)



