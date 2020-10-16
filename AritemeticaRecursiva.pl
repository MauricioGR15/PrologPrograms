% Sumatoria de menores a N
sumatoria(0, 0):- !.

sumatoria(N, R):-
          N1 is N-1,
          sumatoria(N1, R1),
          R is R1+N.

%Multiplicar con sumas
multiplica(_X,0,0).

multiplica(X,Y,R):-
    Y1 is Y - 1,
    Y > 0,
    multiplica(X,Y1,R1),
    R is X + R1.


%Divison con restas
dividir(0,_Y,0).

dividir(X,Y,R):-
    X > 0,
    X1 is X - Y,
    dividir(X1, Y, R1),
    R is R1 +1.

%Potencias
potencia(_X,0,R) :- R = 0, !.
potencia(X,1,R) :- R = X, !.

potencia(X,Y,R):-
    Y > 0,
    Y1 is Y - 1,
    potencia(X,Y1,R1),
    R is X * R1.