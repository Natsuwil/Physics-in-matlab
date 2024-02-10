% Ejemplo 6
% Grafica función posición, velocidad y aceleración del movimiento

% Solicitar al usuario la velocidad inicial (v0) y la aceleración (a)
v0 = input('Ingrese la velocidad inicial (m/s): ');
a = input('Ingrese la aceleración (m/s^2): ');

t = 0:0.5:50;
x = v0 * t + 0.5 * a * t.^2;
vf = v0 + a * t;
% Calculamos la aceleración, que es constante
wf = a * ones(size(t)); % aquí corregimos el cálculo de la aceleración

grid on

subplot(3, 2, 1), plot(t, x, 'b');
xlabel('Tiempo (s)')
ylabel('Posición (m)')
title ('x = v0 * t + 0.5 * a * t^2')

subplot(3, 2, 2), plot(t, vf, 'b');
xlabel('Tiempo (s)')
ylabel('Velocidad (m/s)')
title ('vf = v0 + a * t')

subplot(3, 2, 3), plot(t, wf, 'b');
xlabel('Tiempo (s)')
ylabel('Aceleración (m/s^2)')
title ('wf = a (constante)')

