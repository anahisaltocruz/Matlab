clear
clc
%Volumen de un cono
disp("Volumen del cono");
a = input("Ingrese la altuta del cono: ");
r = input("Ingrese el radio del cono: ");
disp('El volumen calculado es: ');
disp((pi*a*r^2)/3);

%Triángulo rectángulo
%Caso 1
disp("Triángulo rectángulo, caso 1");
a1 = input("Ingrese el valor del lado <a> del triángulo: ");
b1 = input("Ingrese el valor del lado <b> del triángulo: ");
c1 = input("Ingrese el valor del lado <c> del triángulo: ");
%Se pide calcular el ángulo A y B
disp('El angulo A es: ');
disp(atan(a1/b1));
disp('El angulo B es: ');
disp(atan(b1/a1));

%Caso 2
disp("Triángulo rectángulo, caso 2");
A = input("Ingrese el valor del angulo <A> del triángulo: ");
B = input("Ingrese el valor del angulo <B> del triángulo: ");
a3 = input("Ingrese el valor del lado <a> del triángulo: ");
disp("El lado b es de: ");
b3 = a3*cos(B)/cos(A);
disp(b3);
disp("El lado c es de: ");
disp(sqrt(a3^2+b3^2));

%Gases ideales  
disp("Fórmula de los gases ideales");
R = 80.05;
P = input("Ingrese el valor de P: ");
V = input("Ingrese el valor de V: ");
T = input("Ingrese el valor de T: ");
disp("La cantidad de sustancia en moles es de: ");
disp(P*V/(R*T));

