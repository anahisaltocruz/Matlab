%Ejemplo de cómo graficar en coordenadas polares
%% Ejemplo 1
clc
clear
r0 = 0.4;
angulo = [0:pi/18:12*pi/2];
r = r0*exp(0.05*angulo);
polar(angulo,r,'r');

%% Ejemplo 2
clc
clear
r0 = 0.4;
angulo = [0:pi/180:12*pi/2];
r = r0*cos(4*angulo);
polar(angulo,r,'r');