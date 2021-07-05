%% Ejemplo 1
%Ejemplo de cómo generar gráficas de funciones discretas
%Usamos la función <stem>
clc
clear
n = 1:11;
bn = (-1).^n*2./(n*pi);
stem(bn);
xlabel('x');
ylabel('y');
grid on
title('Gráfica discreta');

%% Ejemplo 2
clc
clear
x = linspace(0,2*pi,50)';
y = [cos(x),0.5*sin(x)];
stem(y);
legend('cos(x)','0.5sen(x)');

%% Ejemplo 3: Histograma
clc
clear
z = [1 2 3 4 5 1 1 2 2 2 2 2 2 2 8 9 7 4 4 4 5 5 5 5 5 5 1 1 1 3 3 3 4];
hist(z);