
%Vibraci�n de una part�cula diat�mica

x=input ('INGRESE LA POCISION INICIAL, x0: ');
tf=input ('INGRESE LA POCISION FINAL , tf: ');
t=0;
v0=0;
x0=[x v0];
f=@(t,x)[x(2); (12/(x(1)^13))-(12/(x(1)^7))];
tspan=[0 tf];
[t,x]=ode45(f,tspan,x0);
plot(t,x,'b');
fig = gcf;

grid on
xlabel('Tiempo');
title('VIBRACION DE UNA PARTICULA ');