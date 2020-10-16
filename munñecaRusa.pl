esHija(irina, natasha).
esHija(natasha, olga).
eseHija(olga, katarina).


dentro(X,Y) :- esHija(X,Y). %Caso base
dentro(X,Y):- 
    esHija(X,Z),
    dentro(Z,Y).