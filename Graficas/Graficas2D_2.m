%Ejemplos de gráficas en 2D - Usando la función fplot
%% Ejemplo 1
clc
clear
f = @(x) x-5*(-exp(-x));
fplot(f,[0 6]);
%El primer argumento de fplot es la función a graficar y el segundo es el
%intervalo de la gráfica.
xlabel('x');
ylabel('y');
title('Gráfica usando fplot');
grid on
disp('ABC');

%% Ejemplo 2
fplot(@(x) sin(1./x),[0.01 0.1]);
xlabel('x');
ylabel('y');
title('Gráfica usando fplot');
grid on

%% Ejemplo 3
%Graficamos varias en una misma figura
clc
clear
fplot(@(x) [sin(x), cos(x), tan(x)],[0, 6*pi]);
%Dentro de los primeros corchetes se escriben todas las funciones que van a
%aparecer dentro de la misma gráfica 
xlabel('x');
ylabel('f');
legend('sen(x)','cos(x)','tan(x)');
title('Seno, Coseno y Tangente');
grid on

%% Ejemplo 4
% Gráfica de un cicloide
clc
clear
r = 1;
x = @(t) r*(t-sin(t));
y = @(t) r*(cos(t)-1);
fplot(x,y,[0,4*pi]);
axis equal
grid on
xlabel('x');
ylabel('y');
title('Cicloide');
