% Definición de todos los  caminos en el laberinto.
camino(p11, p12).
camino(p12, p13).
camino(p13, p14).
camino(p14, p15).
camino(p15, p25).
camino(p25, m). 

camino(p11, p21).
camino(p21, p31).

camino(p13, p23).
camino(p23, p33).
camino(p33, p34).
camino(p34, m).

%Caso en que el nodo de inicio sea m
alcanzable(m, m, _) :- !.


alcanzable(Origen, Destino, Visitados) :-
    camino(Origen, Siguiente),
    \+ member(Siguiente, Visitados), % Verifica que no se haya visitado.
    alcanzable(Siguiente, Destino, [Siguiente|Visitados]). % Continúa la búsqueda.

%caso en que inico sea vacio escribir no hay nodo de inicio
verificar() :-
    write('No hay nodo de inicio').



% Predicado principal para verificar si se puede llegar a la meta desde un nodo dado.
verificar(Inicio) :-
    alcanzable(Inicio, m, [Inicio]).
