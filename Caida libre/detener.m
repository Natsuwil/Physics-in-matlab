function [detect,stopint,direction]=detener(t,x)
% Determina el instante cuando pasa por la altura cero y detiene la integración
    detect=x(1); % Detecta cuando llega al suelo
    stopint=1; % Detiene la integración
    direction=0; % No tiene interés
end