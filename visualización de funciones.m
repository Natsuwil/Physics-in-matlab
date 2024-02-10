
teta=0:pi/360:pi/4;
f1=(2*teta-cos(2*teta))/2;
f2=0.4*ones(size(f1));
figure
plot(teta,f1,'g--',teta,f2,'r')
axis square
xlabel('angulo(radianes)')
gtext('2x-cos(2x)/2')
text(0.2,0.43,'y=0.4')
[teta0,y0]=ginput(1)
title(['Raiz aproximada=',num2str(teta0)])