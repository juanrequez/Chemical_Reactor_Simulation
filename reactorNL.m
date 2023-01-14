function dy=reactorNL(t,y)
%Plantilla creada por Dr. Juan Pablo Requez
%UNEXPO, Barquisimeto, Venezuela
%año 2021. juanrequez@gmail.com

%Descripción del proceso

%Primera parte: separacion de variables
Ca=y(1);
Cb=y(2);
T=y(3);
%segunda parte: Parámetros
F0=5;F=5;
E1=41840; E2=62760;
C1=5000; C2=1e6;
R=8.314;
V=300;
Cp=4184;
dhr=-20920;
rho=1;

%tercera parte: variables de entrada
Ca0=1;
Cb0=0;
T0=427*1;
%cuarta parte: calculos previos
vel1=C1*exp(-E1/R/T);
vel2=C2*exp(-E2/R/T);


%quinta parte: ecuaciones diferenciales
dCa=F0/V*Ca0-F/V*Ca+vel2*Cb-vel1*Ca;
dCb=F0/V*Cb0-F/V*Cb+vel1*Ca-vel2*Cb;
dT=F0/V*T0-F/V*T-dhr/rho/Cp*vel1*Ca+dhr/rho/Cp*vel2*Cb;


%quinta parte: agrupar el vector de estados
%recordar que debe ser vector columna
dy=[dCa dCb dT]';
