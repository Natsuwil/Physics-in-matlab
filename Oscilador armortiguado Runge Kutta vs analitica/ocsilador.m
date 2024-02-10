w0=input('frecuencia angular w0: ');
g=input('rozamiento, gamma: ');
x0=input('posición inicial, x0: ');
v0=input('velocidad inicial,v0: ');
tf=input('tiempo final, tf: ');
n=input('número de pasos, n: ');
f=@(t,x,v) -2*g*v-w0*w0*x; 
%condiciones iniciales
t0=0;
hold on
%solución numérica
[t,x,v]=rk_2(f,t0,tf,x0,v0,n);
plot(t,x,'b')
%solución analítica
w=sqrt(w0*w0-g*g);
x=((v0+g*x0)*sin(w*t)/w+x0*cos(w*t)).*exp(-g*t);
plot(t,x,'r')
grid on
xlabel('t')
ylabel('x');
legend('aproximado','exacto')
title('oscilador amortiguado')
hold off