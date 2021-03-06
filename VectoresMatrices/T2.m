clear
clc
%Ejercicio 1
disp('EJERCICIO 1');
V1 = [6:3:36]

%Ejercicio 2 
disp('EJERCICIO 2');
u = [2:3:18];
disp('Primeros tres elementos del vector u');
u(1:3)
disp('Segundo, cuarto y sexto elemento de u');
u([2 4 6])
disp('Sexto, cuarto y sexto elemento de u');
u([6 4 6])
disp('Tres últimos elementos del vector u');
u(4:6)
disp('Primer, tercer y cuarto elemento del vector u');
u([1 3 4])

%Ejercicio 3
disp('EJERCICIO 3');
V3 = linspace(-1,1,30)
SenV3 = sin(V3)

%Ejercicio 4
disp('EJERCICIO 4');
POL = [12 -1 12 64]
sols = roots(POL)
x1 = sols(1)
x2 = sols(2)
x3 = sols(3)

%Ejercicio 5
disp('EJERCICIO 5');
A = [1:1:5;zeros(1,5);-6:2:2]'
B = [1:2:11;0:5:25;10:10:60;-6:2:4]
%Eliminar la última fila de la primera matriz y la tercera columna
%de la segunda matriz
A(end,:) = [ ]
B(:,3) = [ ]

%Ejercicio 6
disp('EJERCICIO 6');
V6 = [1:30]
M6 = reshape(V6,5,6)

%Ejercicio 7
disp('EJERCICIO 7');
A7 = [1,0,-1;4,-2,-3]
B7 = [1,-2,3;1,-1,2]
A7*B7'
A7'*B7
A7.*B7
A7./B7


