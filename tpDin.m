function [na1, ns, Tflecha, Pflecha, I1, fp, nef] = tpDin(s, polos, fe, potencia, VLL, R1, R2, X1, X2, Xm)

if (nargin < 1)
    polos = 6; %numero de polos
    fe = 60; %Hz
    potencia = 7500; %KW
    VLL = 220; %V
    R1 = 0.294;
    R2 = 0.144;
    X1 = 0.503;
    X2 = 0.209;
    Xm = 13.25;
    s  = 2/100; %desplazamiento 
end

%if (nargin == 1)
%    polos = 6; %numero de polos
%    fe = 60; %Hz
%    potencia = 7.5; %KW
%    VLL = 220; %V
%    R1 = 0.294;
%    R2 = 0.144;
%    X1 = 0.503;
%    X2 = 0.209;
%    Xm = 13.25;
%end

na1 = 0;


%eps es para salvar la indeterminacion de division por cero
Z2 = (R2/(s+eps)) + j*X2;

%Impedancia por fase presentada al estator  (ohm)
%por la reactancia magnetizadora y el rotor
Zf = (Z2) * (j*Xm) / (Z2 + j*Xm);

%impedancia de entrada al estator (ohm)
Zent = R1 + j*X1 + Zf;

%voltaje al neutro (V)
V1 = VLL/sqrt(3);

%corriente en el estator (A)
I1 = V1/Zent;

%factor de potencia
fp = cos( angle(I1 )  ) ;

%velocidad sincronica  (r/min)
ns = (120/polos) * fe;

%velocidad angular mecanica  sincrona (rad/seg)
ws = 4*pi*fe/polos;

%velocidad del rotor (r/min)
n = (1-s)*ns;

wm = (1-s)*ws;

nph = polos/2;
Rf = real(Zf);
%potencia entrehierro (W)
Pentrehierro = nph* abs(I1^2) * Rf;

Prot = s * Pentrehierro; %403;
%potencia de salida de la flecha (W)
Pflecha = (1-s)*Pentrehierro - Prot;

%par de salida de la flecha (N*m)
Tflecha = Pflecha/wm;

%Potencia de entrada
Pent = nph * real( V1 * conj(I1) );

%eficiencia
nef = Pflecha/Pent;
nefporc = nef*100;   % en porcentaje



%auxiliar 

I1 = abs(I1);