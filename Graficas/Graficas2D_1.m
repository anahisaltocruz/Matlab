%Ejemplos de gráficas en 2D
%% Ejemplo 1
clc 
clear
x = [0:10:80];
y = [0,0.38,0.71,0.92,1,0.92,0.71,0.38,0];
%****************************************************************
%plot(x,y);
%Forma más simple de generar una gráfica en 2D
%****************************************************************


%****************************************************************
plot(x,y,'-.bs','linewidth',2,'markersize',10,'markeredgecolor','g','markerfacecolor','r');
%<-.> representa el tipo de linea que tendrá la gráfica
%<b> representa el color de la gráfica (blue)
%<s> representa el simbolo o figurilla (marker) que tendrá cada punto de la gráfica
%<linewidth,2> representa el anchor de la línea (en este caso es 2)
%<markersize,10> representa el tamaño del marker
%<markeredgecolor,'g'> representa el color del marker (green)
%<markerfacecolor,'r'> representa el color de relleno del marker (red)
xlabel('t[s]');
ylabel('h[m]');
%Nombre de los ejes
title('Posición vs tiempo');
%Título de la gráfica
%****************************************************************

%% Ejemplo 2
clc 
clear
x = [0:10:360];
y = cosd(x);
plot(x,y,'r');  %El tercer parámetro cambia el color de la gráfica
grid on         %Activa la "rejilla" de la gráfica 
title('Gráfica del Coseno');
xlabel('x');
ylabel('y = cos(x)');

%% Ejemplo 3
% En este ejemplo se mostrará como gráficar 2 o más en una misma figura
clc
clear
t = linspace(0,0.7,100);
A = 5*exp(-7*t);
x = A.*sin(100*t+1.5);

hold on     %Las gráficas que se encuentren entre estos dos bloques (hold on y hold off)
    plot(t,x,'r');  %se van a mostrar en la misma figura 
    plot(t,A,'b');
    plot(t,-A,'b');
hold off
grid on
title('Oscilaciones Amortiguadas');
legend('Desplazamiento','Amplitud');
%<legend(arg1,...,argN)> Nos sirve para describir qué representa cada
%gráfica: Muestra un pequeño rectángulo en la grpafica en el que muestra 
%de qué es cada gráfica y para diferenciar las gráficas, se ve un pequeño
%segmento del tipo de linea de cada una de las gráficas
%NOTA: Es importante seguir el orden: El primero que se mostró con plot
%debe corresponder al primer argumento de <legend> y así sucesivamente :) 
xlabel('t');
ylabel('X,A');

disp('Hola');


