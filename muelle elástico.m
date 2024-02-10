% Simular el movimiento de un bloque en un muelle elástico
% mu = mus = muk
clear all

% Solicitar al usuario que ingrese los parámetros del sistema
m = input('Ingrese la masa del bloque (kg): ');
k = input('Ingrese la constante elástica (k): ');
mu = input('Ingrese el coeficiente estático/cinético: ');
tf = input('Ingrese el tiempo final del movimiento (seg): ');
v = input('Ingrese la velocidad del punto a evaluar (m/s): ');

x0 = 0;

% Determinar el sentido del movimiento basado en la velocidad inicial
if v < 0
    % Caso cuando la velocidad es negativa (hacia la izquierda)
    f = @(t, x) [x(2); (mu * 9.8) - ((k / m) * x(1))];
    tspan = [0 tf];
    [t, x] = ode45(f, tspan, [0 10]);
    plot(t, x, 'm'); % Graficar en color magenta
    fig = gcf;
    fig.Color = [0.7 0.5 0.6]; % Cambiar color de fondo de la figura
    grid on
    xlabel('Tiempo (s)');
    ylabel('Posición (m)');
    title('Movimiento de un bloque en un muelle elástico (Velocidad inicial negativa)');
elseif v > 0
    % Caso cuando la velocidad es positiva (hacia la derecha)
    f = @(t, x) [x(2); -(mu * 9.8) - ((k / m) * x(1))];
    tspan = [0 tf];
    [t, x] = ode45(f, tspan, [0 10]);
    plot(t, x, 'b'); % Graficar en color azul
    fig = gcf;
    grid on
    xlabel('Tiempo (s)');
    ylabel('Posición (m)');
    title('Movimiento de un bloque en un muelle elástico (Velocidad inicial positiva)');
end
