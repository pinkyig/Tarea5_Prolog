% Definición de todos los  caminos en el laberinto.
% Formato -> camino(Origen, Destino).
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

%Predicado auxiliar para verificar si se puede llegar a la meta desde un nodo dado.
alcanzable(Origen, Destino, Visitados) :-
    % Origen: nodo de inicio
    % Destino: nodo de destino
    % Visitados: lista de nodos visitados

    %el predicado alcanzable recibe un nodo de inicio, un nodo de destino y una lista de nodos visitados 
    %y verifica si se puede llegar al nodo de destino desde el nodo de inicio sin pasar por nodos ya visitados,
    %si se puede llegar al nodo de destino desde el nodo de inicio sin pasar por nodos ya visitados, el predicado es verdadero
    %si no se puede llegar al nodo de destino desde el nodo de inicio sin pasar por nodos ya visitados, el predicado es falso
    
    
    camino(Origen, Siguiente),
    \+ member(Siguiente, Visitados), % Verifica que no se haya visitado.
    alcanzable(Siguiente, Destino, [Siguiente|Visitados]). % Continúa la búsqueda.


%caso en que inico sea vacio, por lo que devuelve un mensaje de error
verificar() :-
    write('No hay nodo de inicio').



% Predicado principal para verificar si se puede llegar a la meta desde un nodo dado.
verificar(Inicio) :-
    % Inicio: nodo de inicio

    %el predicado verificar recibe un nodo de inicio y llama al predicado auxiliar alcanzable 
    %para verificar si se puede llegar a la meta desde el nodo dado como inicio

    alcanzable(Inicio, m, [Inicio]).
