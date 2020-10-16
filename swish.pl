%Hechos
party.				%aridad 0 en cristiano no tiene parámetros
woman(mia).			%aridad 1 .... 1
woman(yolanda).
woman(maria).

%	 (madre,hijo)
madre(julia,luis). 	% aridad 2
madre(elena, luis).
madre(julia, hugo).

happy(yolanda).
listens2music(mia).
listens2music(yolanda):- happy(yolanda).
playsAirGuitar(mia):- listens2music(mia).
playsAirGuitar(yolanda):-listens2music(yolanda).