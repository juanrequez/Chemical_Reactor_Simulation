function dy=nombrefuncion(t,y)
%Plantilla creada por Dr. Juan Pablo Requez
%UNEXPO, Barquisimeto, Venezuela
%año 2021. juanrequez@gmail.com

%Descripción del proceso

%Primera parte: separacion de variables
y1=y(1);
y2=y(2);
%segunda parte: Parámetros
a=1;

%tercera parte: variables de entrada
u=1;
%cuarta parte: calculos previos

%quinta parte: ecuaciones diferenciales
dy1=y1+u/a;
dy2=y2+u/a;

%quinta parte: agrupar el vector de estados
%recordar que debe ser vector columna
dy=[dy1 dy2]';
