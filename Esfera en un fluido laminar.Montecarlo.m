
%Esfera en un fluido laminar.Montecarlo
clear all
n=input('Ingrese el n�mero de pruebas, n: ');
m=input('Ingrese la masa de la esfera, m: ');
fu=input('Ingrese la fuerza de la esfera, f: ');
k=input('Ingrese el valor de la constante, k: ');
t=input('Ingrese hasta que tiempo desea, t: ');
v=input('Ingrese el valor de velocidad, v: ');
f=@(x) ((1/(fu/m))-(k*x/m));
M=f(v);
t0=0;
Nc=0;
for i=1:n
    x=rand*(v); y=rand*M; z=((1/(fu/m))-(k*x/m));
    hold on
    plot(x,z,'m+');
    if y<=z
        Nc=Nc+1;
        plot(x,y,'b.')
    end
    
    xlabel('t');
    ylabel('v');
    title('Esfera en fluido laminar');
hold off

end
