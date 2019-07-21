figure;    
axis([0 10 0 10]) %creating the window screen's dimensions
    hold on;
    plot(2,4,'y.', 'MarkerSize',20)
    text(2.3,4,'Congratulations! You get a gold medal')
    pause(1)
    goldMedal=imread('https://purepng.com/public/uploads/large/purepng.com-balloonsballoonrubber-balloonlatex-balloonmulti-colors-1421526450597rnpk4.png');
    goldMedal=image(xlim,ylim,imrotate(goldMedal, 180));