%En este ejemplo se hará un poligono inscrito en un circulo. 
%Usamos el comando <fill> para "rellenar" un área, que en este caso será la
%del poligono
clc
clear
a = 5;
b = 2;
t = linspace(0,2*pi,200);
x = a*cos(t);
y = b*sin(t);
hold on
    plot(x,y,'b');
    t2 = linspace(0,2*pi,9);
    x = a*cos(t2);
    y = b*sin(t2);
    fill(x,y,'y');  %Rellena el área
    plot(x,y,'o','markersize',6);
hold off
fprintf('Área: %4.2f\n',polyarea(x,y));
    