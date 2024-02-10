% calculo de el movimeinto  Rectilineo uniforme por medio del metodo
% montecarlo 

N=input('INGRESE EL NUMERO DE PRUEBAS :');
v0=0
tf=input('INGRESE EL TIEMPO FINAL :');
x0=input('DESLPLAZAMIENTO INICIAL :');

funcion_velocidad=@(x)(x0+(v0*tf));

C=0;
for i=1:N
    x=rand*tf;
    y=rand*tf;
    z=x0+(v0*tf)
    
    %graficar
    hold on
    plot(x,y,'m')
    if y<=z;
        C=C+1
        plot(x,y,'b+')
    end
xlabel('x'); 
ylabel('f(x)');
title('INTEGRAL DE f(x)')
hold off
end
    