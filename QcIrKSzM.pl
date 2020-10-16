% Base de conocimiento

esta_a_der(hermione,ron).
esta_a_der(harry, hermione).
esta_a_der(colin, harry).
esta_a_der(seamus,colin).
esta_a_der(angelina, seamus).
esta_a_der(ginny, angelina).
esta_a_der(dean, ginny).
esta_a_der(dennis, dean).
esta_a_der(lee, dennis).
esta_a_der(george,lee).
esta_a_der(fred, george).
esta_a_der(alicia, fred).
esta_a_der(neville, alicia).
esta_a_der(lavender, neville).
esta_a_der(parvati, lavender).
esta_a_der(katie, parvati).
esta_a_der(natalie, katie).
esta_a_der(ron, natalie).



esta_a_izq(X,Y) :-
    esta_a_der(Y,X).

en_medio_de(X,Izquierda,Derecha):-
    esta_a_der(Derecha,X).

en_medio_de(X,Y,Z) :-
   en_medio_de(X,Y,Z),
    esta_a_der(.

sentado(X):- esta_a_der(ron,natalie).
sentado(X): - esta_a_der(



/*
 * Consultas
 * 
 * ¿está Harry a la derecha de Alicia?
 * esta_a_der(harry, alicia). False
 * 
 * ¿Quién está a la izquierda del Natalie?
 * esta_a_izq(X,natalie). X = katie
 * 
 * ¿Quiénes se sientan a la mesa?
*/


