%ejemplo 6 
V0=10;
R=input('Resistencia R: ');
C=input('Capacidad C: ');
tf=input('tiempo final, tf: ');
f=@(t,x) V0/R-x/(R*C);
tspan=[0 tf]
%condiciones iniciales
x0=0; 
[t,x]=ode45(f,tspan,x0); 


plot(t,x,'r')
xlabel('t')
ylabel('q')
grid on
title('Carga del condensador')