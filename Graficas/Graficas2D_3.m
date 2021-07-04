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
% A diferencia de las gráficas de arriba, en donde sólo se puede visualizar
% una gráfica a la vez, en esta sección, se podrán abrir varias ventanas de
% "figuras", esto mediante el comando <figure>

%Oscilaciones
plot(t1,x,'r');
grid on
title('Oscilaciones Amortiguadas');
xlabel('t');
ylabel('A');

%Círculo
figure
plot(2*sin(t2),cos(t2));
xlabel('2sen(t)');
ylabel('cos(t)');
axis square

%Escalón
figure
plot(t3,xE,'r');
title('Escalón');
xlabel('\omega_0t');
ylabel('x(t)');
text(4.5,0.5,'Gráfica de un escalón Unitario \sigma','fontsize',14,'color','b');

%Carga de un Condensador
figure
plot(t4,v,'--ro','linewidth',1,'markersize',5,'markeredgecolor','g','markerfacecolor','r');
title('Carga de un condensador');
xlabel('t');
ylabel('V(t)');

%El comando <figure> nos permite abrir otra figura aunque ya esté una o más
%abierta :) 
