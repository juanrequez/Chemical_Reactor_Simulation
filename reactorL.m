function dy=reactorL(t,y)
%Plantilla creada por Dr. Juan Pablo Requez
%UNEXPO, Barquisimeto, Venezuela
%año 2021. juanrequez@gmail.com

%Descripción del proceso

%Primera parte: separacion de variables
Da=y(1);
Db=y(2);
G=y(3);

%segunda parte: Parámetros
A=[-0.05743  0.02328  -6.93998e-5;
   0.04077  -0.03995  6.93998e-5;
   0.20384  -0.11641 -0.01632];
B=[0.01667  0       0;
   0        0.01667 0;
   0        0       0.01667];

%tercera parte: variables de entrada (equilibrio)
Ca0eq=1;
Cb0eq=0;
T0eq=427;

%cuarta parte: calculos previos (entradas de desviación)
Da0=1-Ca0eq;
Db0=0-Cb0eq;
G0=427*0.9-T0eq;


%quinta parte: ecuaciones diferenciales
dy=A*[Da Db G]'+B*[Da0 Db0 G0]';

%sexta parte: agrupar el vector de estados
%recordar que debe ser vector columna
%no es necesario debido a la forma de la quinta parte en este ejercicio