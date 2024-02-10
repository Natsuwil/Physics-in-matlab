%programa de decaimiento radiactivo
clc
N0=input('ingrese un numero inicial de nucleos activos');
Landa=input('ingresar constante de decaimiento Landa');
sim('Decaimiento');
plot(N0)
title('decaimiento radiactivo');
xlabel('tiempo');
ylabel('nucleo');