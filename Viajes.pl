enCarro(newYork,hamilton).

enCarro(hamilton,francia).

enCarro(valmont,roma).

enCarro(valmont,metz).



enTren(metz,frankfurt).

enTren(roma,frankfurt).

enTren(metz,paris).

enTren(roma,paris).



enAvion(frankfurt,bangkok).

enAvion(frankfurt,singapore).

enAvion(paris,losAngeles).

enAvion(bangkok,newYork).

enAvion(singapore,newYork).

enAvion(losAngeles,newYork).

ir(X,Y) :- 
    (    
    	enCarro(X,Y); 
        enTren(X,Y); 
        enAvion(X,Y)      
    ).

viaje(X,Y) :- ir(X,Y).

viaje(X,Y) :-
    ir(X,Z),
    viaje(Z,Y).