%% Problema 1
%Compra de helados 
clc
clear
disp('¡Bienvenido!, ¿de qué va a querer su helado?');
topping = input(' ','s');

switch topping
    case 'oreo'
        precio = 1.00;
    case 'KitKat'
        precio = 1.50;
    case 'brownie'
        precio = 0.75;
    case 'lacasitos'
        precio = 0.95;
    case 'sin topping'
        precio = 1.90;
    otherwise
        disp('No contamos con ese topping, lo sentimos');
        topping = 'sin topping';
        precio = 1.90;
end
fprintf('Helado con topping tipo: %s\n',topping);
fprintf('Precio: %4.2f\n\n',precio);
fprintf('¡Gracias por su compra!\n');

%% Problema 2
%Determinar si el número es capicua 
clc
clear
num = input('Ingrese un número de tres cifras: ');
centR = mod(num,100);
decR = mod(num,10);
cent = num - centR;
valorCent = cent/100;
dec = num - cent - decR;
uni = num - cent - dec;
if(valorCent == uni)
    disp('Si es un número capicua');
else
    disp('No es un número capicua');
end

%% Problema 3
%$300,000        0 -   300 km
%$ 15,000      300 - 1,000 km Este monto es por cada km extra
%$ 10,000    1,000 - ....  km Este monto es por cada km extra
    
%El IVA es el 20% del precio Total
%Determinar el monto a pagar y el monto del IVA
clc
clear
km = input('Total de Kilometros recorridos: ');
if(km > 0 && km <= 300)
    costo = 300000;
elseif(km > 300 && km <= 1000)
    costo = 300000 + (km - 300)*15000;
elseif(km > 1000)
    costo = 300000 + 15000*700 + (km - 1000)*10000;
end
IVA = costo*0.20;
fprintf('El costo total es de: %4.2f y el IVA incluido es de %4.2f.\n',costo,IVA);

%% Problema 4
clc
clear
num = input('¿Cuántos números desea introducir? ');
for k = 1:num
    fprintf('Ingrese el número en la pos %d: ',k);
    v(k) = input(' ');
    if(k ~= 1)
        if(v(k) < v(1))
            fprintf('Este número no es mayor que el primero\n\n');
        else 
            fprintf('\n');
        end
    else
        fprintf('\n');
    end
end

%% Problema 5
clc
clear
num = input('¿Cuántos números desea introducir? ');
cont = 0;
for k = 1:num
    fprintf('Número %d:',k);
    a = input(' ');
    if(a < 0)
        cont = cont + 1;
    end
end
fprintf('Hay %d números negativos\n',cont);

%% Problema 6
clc
clear
num = input('¿Cuántos números desea introducir? ');
contP = 0;
contI = 0;
for k = 1:num
    fprintf('Número %d:',k);
    a = input(' ');
    if(mod(a,2) == 0)
        contP = contP + 1;
    else
        contI = contI + 1;
    end
end

fprintf('Pares  : %d\n',contP);
fprintf('Impares: %d\n',contI);

%% Problema 7
%Imprimir serie Fibonacci para números menores a 1,000
clc
clear
disp('Serie Fibonacci');
cont = 3;
valor = 0;
n(1) = 1;
n(2) = 1;
fprintf('%d %d ',n(1),n(2));
valor = 0;
while(valor < 1000)
    n(cont) = n(cont-1)+n(cont-2);
    valor = n(cont);
    if(valor < 1000)
        fprintf('%d ',valor);
    end
    cont = cont + 1;
end
fprintf('\n');

%% Problema 8
clc
clear
a = input('Escriba el primer número: ');
while(1)
    b = input('Escriba el segundo número: ');
    if(b > a)
        break;
    end
end
fprintf('\nPrimer número: %d\n',a);
fprintf('Segundo número: %d\n',b);

%% Problema 9
clc
clear
disp('Ingrese el primer número (decimal): ');
num1 = input(' ');
num = 1000000000000000000;
while(num1 < num)
    num = input('Ingrese un número decimal ');
end
disp('Fin del programa');

%% Problema 10
clc
clear
cont = 1;
suma = 0;
while(1)
    y = input('Ingrese un número: ');
    if(y >= 0)
        z(cont) = y; 
    else
        suma = sum(z);
        break;
    end
    cont = cont + 1;
end
disp('Suma: ');
disp(suma);

%% Problema 11
clc
clear
while(1)
    np = input('Ingrese un número par: ');
    if(mod(np,2) ~= 0)
        disp('Introduzca sólo números PARES');
    end
    answ = input('¿Desea ingresar más números? (S/N)','s');
    if(answ == 'N' || answ == 'n')
        break;
    end
end