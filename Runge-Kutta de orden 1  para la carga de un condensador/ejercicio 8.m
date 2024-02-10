V0=10;
R=input('Resistencia R: ');
C=input('Capacidad C: ');
tf=input('tiempo final, tf: ');
n=input('número de pasos, n: ');

f=@(t,x) V0/R-x/(R*C); 
%condiciones iniciales
t0=0; x0=0; 
[t,x]=rk_1(f,t0,tf,x0,n); 

hold on
plot(t,x,'b')
y=C*V0*(1-exp(-t/(R*C)));
plot(t,y,'r')
xlabel('t')
ylabel('q')
grid on
legend('aproximada','exacta','Location','Southeast')
title('Carga del condensador')
hold off