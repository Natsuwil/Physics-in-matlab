Variaci�n de la altura de un
%vaciado de un dep�sito abierto

s1=input("Area superior del deposito (m^2):")
s2=input("Area de salida del deposito (m^2):")
areas=s1/s2
H=input("Altura inicial del deposito (m):")
tf=input("Tiempo final de vaciado completo (seg):")
t=0
f=@(t,x) (((sqrt(9.8/(2*((areas.^2)-1))))*t)-H)/-(2*H+1)
tspan=[0 tf]
x0=H
[t,x]=ode45(f,tspan,x0)
plot(t,x,"b-o")
fig = gcf;
grid on
xlabel("Tiempo")
ylabel("Altura")
title("VARIACION DE ALTURA")