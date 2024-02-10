%Resuelve un curcuito RCL serie con capacitor con carga qo y corriente io
%Resuelve la ecuacion L*D2Q+R*DQ+Q/C=V por diferencias finitas
% Variables q: carga, corr:corriente, Uf: energia entregada por la fuente, Ur: energia disipada por la R, UL: energia almacenada 
% en la inductancia y Uq: energia almacenada en el condensador
qo=input('Dar carga inicial del capacitor')
io=input('Dar corriente inicial')
R=input('Resistencia')
L=input('Inductancia')
C=input('Capacidad')
V=input('Tension')
N=500;  %Numero de iteraciones
delta_t=0.01; %paso temporal
M=delta_t*N;% Tiempo final
t=linspace(0,M,N+1);%variable tiempo
%Carga inicial
q(1)=qo;
t(1)=0;
%Corriente inicial
corr(1)=io;
q(2)=io*delta_t+q(1);
t(2)=delta_t;
corr(2)=io;
Ur(1)=corr(1)^2*R*delta_t;
Ur(2)=Ur(1);
UL(1)=.5*L*corr(1)^2;
UL(2)=UL(1);
UC(1)=0.5*q(1)^2/C
UC(2)=0.5*q(2)^2/C;
Uf(1)=V*corr(1)*delta_t;
Uf(2)=Uf(1);
for i=2:N
   q(i+1)= (q(i)*(2*L+R*delta_t-delta_t^2/C)-q(i-1)*L+V*delta_t^2)/(L+R*delta_t); 
   corr(i+1)=(q(i+1)-q(i))/delta_t;
   Ur(i+1)=Ur(i)+corr(i+1)^2*R*delta_t;
   Uf(i+1)=Uf(i)+corr(i+1)*V*delta_t;
   UL(i+1)=.5*L*corr(i+1)^2;
   UC(i+1)=0.5*q(i+1)^2/C;
end
figure(1)
plot(t,q)
xlabel 'tiempo'
ylabel 'Q'
figure(2)
plot(t,corr)
xlabel 'tiempo'
ylabel 'i'
figure(3)
plot(t,Ur, t,UL, t,UC, t,Uf)
legend('Energia disipada por la R','Energia almacenada en L', 'Energia almacenada en C','Energia disipada por la fuente')
xlabel 'tiempo'
ylabel 'Energias'