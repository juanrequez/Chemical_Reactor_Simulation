%Plantilla creada por Dr. Juan Pablo Requez
%UNEXPO, Barquisimeto, Venezuela
%año 2021. juanrequez@gmail.com

%script
%este programa ejecuta las instruccionespara resolver el modelo no lineal, 
%el modelo lineal y luego se comparan los valores

%parte 1: rango de tiempo de integración
tspan=[0 300];

%parte 2: Parámetros y estados iniciales
%se escriben todos los estados iniciales y los parámetros requeridos
Caini=0.495;
Cbini=0.505;
Tini=429.5;
 
%parte 3 (no lineal): condiciones iniciales (de los estados no lineales)
y0NL=[0.495 0.505 429.5]';

%parte 4 (no lineal): resolver la ecuación diferencial no lineal
[tNL,yNL]=ode45(@reactorNL,tspan,y0NL);

%parte 5 (no lineal): separar los resultados
CaNL=yNL(:,1);
CbNL=yNL(:,2);
TNL=yNL(:,3);

%parte 6 (lineal): condiciones iniciales de los estados lineales
y0L=[0.495-Caini 0.505-Cbini 429.5-Tini]';

%parte 7 (lineal): resolver la ecuación diferencial lineal
[tL,yL]=ode45(@reactorL,tspan,y0L);

%parte 8 (lineal) separar los resultados
CaL=yL(:,1)+Caini;
CbL=yL(:,2)+Cbini;
TL=yL(:,3)+Tini;

%parte 9: graficar simultaneamente lineal y no lineal
figure
plot(tNL,CaNL,tL,CaL)
title('concentración de A en el reactor')
xlabel('tiempo, s')
ylabel('concentración A, mol/L')
legend('No lineal','Lineal')
figure
plot(tNL,CbNL,tL,CbL)
title('concentración de B en el reactor')
xlabel('tiempo, s')
ylabel('concentración B, mol/L')
legend('No lineal','Lineal')
figure
plot(tNL,TNL,tL,TL)
title('Temperatura en el reactor')
xlabel('tiempo, s')
ylabel('Temperatura, K')
legend('No lineal','Lineal')