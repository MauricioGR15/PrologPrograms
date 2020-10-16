/*

Se encontraron por la calle Einstein [al pobre hombre lo metemos 
en todos los acertijos ;-)] y un amigo. Hacía bastante tiempo 
que no se veían y Einstein le preguntó:

- ¿Tienes hijos?.
- Tengo tres hijas -respondió el amigo.
- ¿Y de qué edades? -volvió a preguntar el físico.
- Te voy a contestar con un acertijo -dijo el amigo-: 
  La multiplicación de sus edades es igual a 36, y la 
  suma de ellas es igual al número de tu portal.

Einstein se quedó pensando un momento y le contestó:
- Sí, pero me falta un dato.
- Tienes razón -replicó el amigo-. La mayor toca el piano.

Einstein lo acertó en 1 minuto. ¿Cuál es la solución?.
*/

solucion(Hija1, Hija2, Hija3, NumeroPortal) :-
    between(1, 10, Hija1),
    between(1, 10, Hija2),
    between(1, 10, Hija3),
    Hija1 * Hija2 * Hija3 =:= 36,
    NumeroPortal is Hija1 + Hija2 + Hija3,
	Hija3 > Hija1,		% Hay un mayor
    Hija3 > Hija2.	

/*
Problema: Dos cabreros se encuentran en un cruce y se produce
el siguiente diálogo:
- Dame una cabra, para que tengamos las mismas
- Mejor dame tú una a mí, para que tenga yo el doble que tú
¿Cuántas cabras tiene cada cabrero?...
Solución: existe A y B pertenece N+ tales que:
B-1 = A+1 ∧
2*(A-1) = B+1
*/

cabras(A, B) :-
    between(1, 10, A),	
    between(1, 10, B),	
    B-1 =:= A+1,
    2*(A-1) =:= B+1.



/*
Crear un sistema de alertas que cuando se consume un insumo, 
chequea en la base de datos cuánta reserva queda de ese insumo 
y, si la reserva está por debajo de un mínimo, devuelve un 
mensaje diciendo que hay que comprar más de ese insumo.
*/


insumo(hamburguesa).
insumoMinimo(hamburguesa, 100).
insumoStock(hamburguesa, 115).


consumir(Comida, Consumido) :-
	insumo(Comida),
	insumoMinimo(Comida, InsumoMinimo),
    insumoStock(Comida, InsumoStock),
    mandarAlerta(InsumoStock, Consumido, InsumoMinimo).

mandarAlerta(InsumoStock, Consumido, InsumoMinimo) :-  
    InsumoStock - Consumido =< InsumoMinimo, 
    writeln('Favor de comprar más insumos de ').



   
/* Elaborar un predicado que al Proporcionar mes y día de nacimiento,
nos diga nuestro signo zodiacal
*/


horoscopo(acuario,20,enero,18,febrero).
horoscopo(piscis,19,febrero,20,marzo).
horoscopo(aries,21,marzo,19,abril).
horoscopo(tauro,20,abril,20,mayo).
horoscopo(geminis,21,mayo,20,junio).
horoscopo(cancer,21,junio,22,julio).
horoscopo(leo,23,julio,22,agosto).
horoscopo(virgo,23,agosto,22,septiembre).
horoscopo(libra,23,septiembre,22,octubre).
horoscopo(escorpio,23,octubre,21,noviembre).
horoscopo(sagitario,22,noviembre,21,diciembre).
horoscopo(capricornio,22,diciembre,19,enero).

mi_signo_es(Dia,Mes,Signo) :- 
    horoscopo(Signo,D1,M1,D2,M2),
    ((Mes=M1,Dia>=D1) ; (Mes=M2,Dia=<D2)).
