% Facts
mujer(clara).	
mujer(luisa).	
mujer(maria).	
mujer(nelida).
trabajo(diseñadoraModas). 
trabajo(florista). 
trabajo(jardinera). 
trabajo(directoraOrquesta).

% (a) Clara es violentamente alérgica a las plantas.
alergica(clara).
% (b) Luisa y la florista comparten el departamento
noEs(luisa, florista).
% (c) A María y Luisa les gusta solamente la música rock
noEs(maria, directoraOrquesta).
noEs(luisa, directoraOrquesta).
% (d) La jardinera, la diseñadora de modas y Nélida no se conocen entre sí.
noEs(nelida, jardinera).
noEs(nelida, florista).
% e) una mujer no puede tener una ocupación que esté relacionada con algo a lo que es alérgica:
noEs(clara, florista).
noEs(clara, jardinera).
% f) cada mujer tiene un solo trabajo, y  cada trabajo es ocupado por una sola mujer las cuatro 
% mujeres elegidas y las cuatro ocupaciones  deben ser diferentes entre sí.
% Diferentes a \= a.   Igualdad a == a.
diferentes(A,B,C,D):- 
    A\=B, A\=C, A\=D, B\=C, B\=D, C\=D.

respuesta([M1, OC1],[M2,OC2],[M3,OC3],[M4,OC4]):- 
    mujer(M1), mujer(M2), mujer(M3), mujer(M4),
    diferentes(M1,M2,M3,M4),
    trabajo(OC1), trabajo(OC2), trabajo(OC3), trabajo(OC4),
    diferentes(OC1, OC2, OC3, OC4),
    not(noEs(M1,OC1)), not(noEs(M2,OC2)), 
    not(noEs(M3,OC3)), not(noEs(M4,OC4)).

/*  	?- respuesta(X).
	X=[[clara,diseñadora],[luisa,jardinera],
	   [maria,florista],[nelida,directora_de_orquesta]]
	Yes
*/
