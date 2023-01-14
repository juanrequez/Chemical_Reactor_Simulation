%Plantilla creada por Dr. Juan Pablo Requez
%UNEXPO, Barquisimeto, Venezuela
%año 2021. juanrequez@gmail.com

%script
%este programa ejecuta las instruccionespara resolver el modelo no lineal, 
%el modelo lineal y luego se comparan los valores

%parte 1: rango de tiempo de integración
tspan=[0 10];

%parte 2: Parámetros y estados iniciales
%se escriben todos los estados iniciales y los parámetros requeridos
estado1_ini=1;
estado2_ini=1;
 
%parte 3 (no lineal): condiciones iniciales (de los estados no lineales)
y0NL=[1 1]';

%parte 4 (no lineal): resolver la ecuación diferencial no lineal
[tNL,yNL]=ode45(@nombrefuncion,tspan,y0NL);

%parte 5 (no lineal): separar los resultados
y1NL=yNL(:,1);
y2NL=yNL(:,2);

%parte 6 (lineal): condiciones iniciales de los estados lineales
y0L=[1-estado1_ini 1-estado2_ini]';

%parte 7 (lineal): resolver la ecuación diferencial lineal
[tL,yL]=ode45(@nombrefuncion,tspan,y0L);

%parte 8 (lineal) separar los resultados
y1L=yL(:,1)+estado1_ini;
y2L=yL(:,2)+estado2_ini;

%parte 9: graficar simultaneamente lineal y no lineal
plot(tNL,y1NL,tL,y1L)