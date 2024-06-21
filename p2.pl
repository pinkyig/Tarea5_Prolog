
distancia(punto(X1, Y1), punto(X2, Y2), Dist) :-
    Dist is abs(X1 - X2) + abs(Y1 - Y2).

%minDistManhattan: Caso Lista de puntos vacia

minDistManhattan(_,[],'inf').

minDistManhattan(Punto, [Punto2|Puntos], Min) :-
    distancia(Punto, Punto2, Dist),
    minDistManhattan(Punto, Puntos, Min2),
    min_dist(Dist, Min2, Min).



% Predicado auxiliar para calcular el mínimo, manejando el caso de infinito.
min_dist(Dist, inf, Dist).
min_dist(inf, Dist, Dist).
min_dist(Dist1, Dist2, Min) :-
    Dist1 \= inf,
    Dist2 \= inf,
    Min is min(Dist1, Dist2).
