%Comando <subplot>: Este comando nos sirve para visualizar varias gráficas
%de una misma figura (o ventana). Los parámetros que necesita esta función
%son los siguientes:
%(filas, columnas, pos)
%El argumento de filas y columnas deifne el tamaño que tendrá la "rejilla"
%o matriz en la que se van a mostrar las gráficas, y por otra parte, el
%tercer argumento representa en que posición de la rejilla se mostrará la
%gráfica. Ejemplo: Si la rejilla es de 2x2, los posibles valores deñ tercer
%argumento serán de 1 a 4 (pueden abarcar más de 1)
%NOTA: Los valores para el tercer argumento se toman en cuenta de izquierda a derecha 

%% Oscilaciones
t1 = linspace(0,0.7,100);
A = 5*exp(-7*t1);
x = A.*sin(100*t1+1.5);

%% Círculo
t2 = 0:pi/40:2*pi;

%% Escalón Unitario
g = 0.25;
t3 = linspace(0,15,100);
w = sqrt(1-g^2);
xE = 1 - exp(-g*t3).*(g*sin(w*t3)/w+cos(w*t3));

%% Carga de un condensador
t4 = [0:10:80];
v = [0 0.73 1.1 1.29 1.4 1.46 1.5 1.52 1.53];

%% Gráficas
%Oscilaciones
subplot(2,2,1);
plot(t1,x,'r');
grid on
title('Oscilaciones Amortiguadas');
xlabel('t');
ylabel('A');

%Círculo
subplot(2,2,2);
plot(2*sin(t2),cos(t2));
xlabel('2sen(t)');
ylabel('cos(t)');
axis square

%Escalón
subplot(2,2,3);
plot(t3,xE,'r');
title('Escalón');
xlabel('\omega_0t');
ylabel('x(t)');
text(4.5,0.5,'Gráfica de un escalón Unitario \sigma','fontsize',14,'color','b');

%Carga de un Condensador
subplot(2,2,4);
plot(t4,v,'--ro','linewidth',1,'markersize',5,'markeredgecolor','g','markerfacecolor','r');
title('Carga de un condensador');
xlabel('t');
ylabel('V(t)');


