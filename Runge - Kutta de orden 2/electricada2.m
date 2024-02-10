a=input('parámetro a: ');
b=input('parámetro b: ');
x0=input('valor inicial de x: ');
y0=input('valor inicial de y: ');
tf=input('tiempo final, tf: ');
n=input('número de pasos, n: ');
f=@(t,x,y) -a*x; 
g=@(t,x,y) a*x-b*y;
%condiciones iniciales
t0=0; 

[t,x,y]=rk_2_1(f,g,t0,tf,x0,y0,n);
hold on
plot(t,x,'b')
plot(t,y,'r')
xlabel('t')
ylabel('x,y')
grid on
legend('x(t)','y(t)')
title('dx/dt=-ax, dy/dt=ax-by')
hold off