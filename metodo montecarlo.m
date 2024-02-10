% calculo metodo montecarlo
%calculo de pi

N=input('Ingrese nuestro numero de puntos de N2= ')
Nc=0;
for i=1:N
    x=rand;
    y=rand;
    z=x^2+y^2
    %grafica
     hold on
    plot (x,y,'m')
    if z<=1;
        Nc=Nc+1
    plot (x,y,'b+')
    end
    xlabel('Cordenada (x)');
    ylabel('Cordenada (y)');
title('determinar valor de pi usando el metodo montecarlo')
hold off
end
Pi=4*Nc/N