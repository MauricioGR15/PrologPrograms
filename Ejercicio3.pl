/*
 EJERCICIO 3:
 ==============================
 ALUMNO DESPISTADO:

 ”Un alumno de ISC del ITC, debido al nerviosismo del primer día de clase, 
 ha anotado el nombre de sus profesores (Elisa, Fernando y Carlos), las 
 asignaturas que se imparten (Lógica, Programación y Matemáticas) y el día
 de la semana de las distintas clases (lunes, miércoles y viernes), pero 
 sólo recuerda que:

 - La clase de Programación, impartida por Elisa, es posterior a la de Lógica
 - A Carlos no le gusta trabajar los lunes, día en el que no se imparte Lógica

 Ayúdale a relacionar cada profesor con su asignatura, así como el día de la 
 semana que se imparte

 (Sabemos que cada profesor imparte una única asignatura y que las clases se dan 
 en días diferentes)”

	Analicemos el problema mentalmente: 
    */
diferentes(A,B,C):- A\=B, A\=C, B\=C.

profesor(elisa).
profesor(fernando).
profesor(carlos).

asignatura(logica).
asignatura(programacion).
asignatura(matematicas).

dia(lunes).
dia(miercoles).
dia(viernes).

% imparte(Maestro, Materia).
imparte(elisa, programacion). %Hecho
imparte(Maestro, Materia):- 
    profesor(Maestro), asignatura(Materia),
    Maestro \= elisa, Materia \= programacion.

% seDa(Materia, Dia).
seDa(programacion, viernes).
seDa(logica, Dia) :- dia(Dia), Dia\=lunes.
seDa(Materia, Dia):- dia(Dia), asignatura(Materia), Materia\=logica, Materia\=programacion.

% trabaja(Maestro, Dia).
trabaja(carlos, Dia) :- dia(Dia), Dia\=lunes.
trabaja(Maestro,Dia):- profesor(Maestro), dia(Dia), Maestro\=carlos.


respuesta([ [M1,A1,D1], [M2,A2,D2], [M3,A3,D3] ]):-
    profesor(M1), profesor(M2), profesor(M3),
    diferentes(M1,M2,M3),
    asignatura(A1), asignatura(A2), asignatura(A3),
    diferentes(A1,A2,A3),
    dia(D1), dia(D2), dia(D3), 
    diferentes(D1,D2,D3),
    imparte(M1,D1), imparte(M2,D2), imparte(M3,D3),
    seDa(A1,D1), seDa(A2,D2), seDa(A3,D3),
    trabaja(M1,D1), trabaja(M2,D2), trabaja(M3,D3).

% dias
% Programacion va despues de Logica, los lunes no hay Logica ..... Matematicas - Logica - Programacion