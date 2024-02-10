% programa de desarrollo del decaimiento radiactivo con el metodo
% montecarlo
lambda=input('Valor de la constante de desintegracion');
n=input('Vakir de nucleos iniciales');
dt=0.0001/lambda;
nt=zeros(10000,1); %nt que sostiene el resultado de MC
nta=zeros(10000,1);%MC del resultado analitico
tmax=10000*dt;
t=(0:dt:tmax)';
nta=n*exp(-lambda*t); % solucion analitica
nt(1)=n;
for i=2:10001
    random=rand(n,1);
    count=length(random(random<=0.0001));
    n=n-count;
    if (n<=0)
break;
    end
    nt(i)=n;
end
plot (t,nt,'og',t,nta,'.r');
title =('Decamiento radiactivo montecarlo')
xlabel=('Tiempo')
ylabel=('Numero de nucleos finales ')