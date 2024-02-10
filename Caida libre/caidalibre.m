m = input('Masa del paracaidista (kg): ');
A = input('Área del paracaídas (m^2): ');
x0_altura = input('Altura inicial del paracaidista (m): ');
x0_velocidad = input('Velocidad inicial del paracaidista (m/s): ');

k = 1.29 * A * 0.8 / 2;
lambda = 7482.2;

f = @(t, x) [x(2); -9.8 + (k * x(2)^2 / m) * exp(-x(1) / lambda)]; 
tspan = [0 inf]; % Infinito positivo
opts = odeset('events', @detener);

[t, x, te, xe] = ode45(f, tspan, [x0_altura, x0_velocidad], opts);

plot(x(:, 1), -x(:, 2))
text(0, -xe(2), num2str(-xe(2)))
grid on
xlabel('Altura (m)')
ylabel('Velocidad (m/s)')
title('Caída de un paracaidista')
