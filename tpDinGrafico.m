function var = tpDinGrafico(s, polos, fe, potencia, VLL, R1, R2, X1, X2, Xm)

var = 0;

if (nargin < 1)
    polos = 6; %numero de polos
    fe = 60; %Hz
    potencia = 7.5; %KW
    VLL = 220; %V
    R1 = 0.294;
    R2 = 0.144;
    X1 = 0.503;
    X2 = 0.209;
    Xm = 13.25;
    s  = 2/100; %desplazamiento 
end

na1 = 0;
ns = 0;
Tflecha = 0;
Pflecha = 0;
I1=0;
fp=0;
nef=0;


ejes = [];
ejeTflecha = [];
ejePflecha = [];
ejeI1 = [];
ii = 0;

for s=0:0.01:2
    
    ii = ii + 1;
    
    [na1, ns, Tflecha, Pflecha, I1, fp, nef] = tpDin(s/100, polos, fe, potencia, VLL, R1, R2, X1, X2, Xm);
   
    %ii = length(ejes) + 1;
    ejeTflecha(ii) = Tflecha;
    ejeI1(ii) = I1;
    ejePflecha(ii) = Pflecha;
    ejes(ii) = s/100;

end

length(ejeTflecha)
length(ejes)


subplot(2,3,4)
plot(ejes, ejeTflecha, 'r-')
legend('Par de salida')
grid on
xlabel('s')

subplot(2,3,5)
plot(ejes, ejeI1, 'g--')
legend('Corriente del estator')
grid on
xlabel('s')

subplot(2,3,6)
plot(ejes, ejePflecha, 'b--')
legend('Potencia de salida');
grid on
xlabel('s')


%semilogy(ejes, ejeTflecha, 'r-', ejes, ejeI1, 'g*', ejes, ejePflecha, 'b--')
%legend('Par de salida - Tflecha','Corriente del estator','Potencia de salida - Pflecha');


