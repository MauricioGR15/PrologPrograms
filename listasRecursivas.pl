% 1. Predicado que me diga si todos los elementos de una lista son iguales

iguales([X,X]):- !.

iguales([Header,Header|Tail]):- 
    iguales([Header|Tail]).

% 2. Predicado que regrese la longitud de una lista
    
longitud([],0).
longitud([_|Tail],Long):- 
    longitud(Tail,Long1) , 
    Long is Long1+1.

% 3. Predicado que elimine  el primer elemento de una lista

eliminar([],_).
eliminar([_|Tail],Tail).