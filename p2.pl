%minDistManhattan: Caso Lista de puntos vacia

minDistManhattan([_,_],[],'inf').


distManhattan(punto(X1, Y1), punto(X2, Y2), Dist) :-
    Dist is abs(X1 - X2) + abs(Y1 - Y2).
