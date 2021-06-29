%Ejemplos de gráficas en 2D - Usando la función plot
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
%legend('Desplazamiento','Amplitud');
%<legend(arg1,...,argN)> Nos sirve para describir qué representa cada
%gráfica: Muestra un pequeño rectángulo en la grpafica en el que muestra 
%de qué es cada gráfica y para diferenciar las gráficas, se ve un pequeño
%segmento del tipo de linea de cada una de las gráficas
%NOTA: Es importante seguir el orden: El primero que se mostró con plot
%debe corresponder al primer argumento de <legend> y así sucesivamente :)
%NOTA 2: La ubicación por defecto es la esquina superior derecha
legend('Desplazamiento','Amplitud','location','southwest');
%Los dos parámetros extra de legend nos sirven para modifcar la ubicación
%por defecto
xlabel('t');
ylabel('X,A');

%% Ejemplo 4
clc
clear
t = [0:pi/40:2*pi];
plot(2*sin(t),cos(t));
xlabel('2sen(t)');
ylabel('cos(t)');
grid on
title('Gráfica 2sen(t) vs cos(t)');
%Ejemplos de configuración de los ejes:
axis equal      %Los ejes tendrán la misma escala 
%axis square     %Redimensiona los ejes para que ambos 
                %tengan la misma longitud (la escala 
                %no es la misma)              
%axis([-20,20,0,10]);   
%axis([xInicio,xFinal,yInicio,yFinal]);
    %Las siguientes dos líneas son equivalentes a la anterior
%xlin([xInicio,xFinal]);
%ylin([yInicio,yFinal]);

text(1,1,'Cord: (1,1)');
%<text(...)> Nos sirve para escribir en algún punto específico de la
%gráfica. El punto está definido por los primeros dos parámetros.
%Nota: Se puede personalizar el texto que aparece, todos los detalles se
%encuentran en la documentación de la función. 

disp('Hola');


