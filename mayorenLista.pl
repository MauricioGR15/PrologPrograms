
Decir cual es el mayor elemento de una lista
=================================================================

Recursivo clásica: (lista, Respuesta)

[]  0		Caso base

[1]  1		Caso base

[8,4 | 3,2,3,3,3,3,3,3,33,7]   
[A,B | Resto]
	recuperar 2 elementos y comparar
	elegir elmayor y ponerlo en varAux
	llamar mayor & resto predicadoNombre([varAux|Resto], Respuesta)
	

---------------------------------------------------------
Tail Recursive: (lista, RespuestaActual, Respuesta)
	
[]  X , X		Caso base

[1,4,5,3,8]      
	Predicado aux para tomar el primer elemento como referencia

	Tail Recursive:
	comparo cabeza d lista con RespuestaActual
	dejar el mayor en varAux
	llamada recursiva (lista, varAux, Respuesta)

[1,7,3,2]

