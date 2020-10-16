% EJERCICIO 1:
%====================
%Sobre líquidos venenosos

%El Sr. Ido, el químico, tiene seis frascos llenos de líquidos coloreados. Hay uno de cada color: rojo, anaranjado, amarillo, verde, azul y violeta. El señor Ido sabe que algunos de esos líquidos son tóxicos, pero no recuerda cuales...

%Sin embargo, sí recuerda algunos datos. En cada uno de los siguientes pares de frascos hay uno con veneno y otro no:

% a) los frascos violeta y azul
% b) los frascos rojo y amarillo
% c) los frascos azul y anaranjado

% El Sr. Ido recuerda también que en estos otros pares de frascos hay uno sin veneno:

% d) el violeta y el amarillo
% e) el rojo y el anaranjado
% f) el verde y el azul

% ¡Ah! Casi lo olvido, añade el Sr. Ido, el líquido del frasco rojo no es venenoso. 

% ¿Qué frascos tienen veneno?

% Venenoso: azul, amarillo,
% No venenoso: violeta, rojo, naranja

unoSiUnoNo(violeta, azul).
unoSiUnoNo(rojo, amarillo).
unoSiUnoNo(azul,anaranjado).

venenoso(X):-
    (unoSiUnoNo(X,Y); unoSiUnoNo(Y,X)),
    noVeneno(Y).

%interpretacion 1: hay un par en el eque ninguno de los dos elementos tiene veneno
%interpretacion usada: para cada par hay un frasco que sí tiene veneno y el otro no tiene
unoSin(violeta, amarillo).
unoSin(rojo, anaranjado).
unoSin(verde, azul).

noVeneno(rojo).
noVeneno(X) :- (unoSin(X,Y); unoSin(Y,X)), venenoso(Y).
