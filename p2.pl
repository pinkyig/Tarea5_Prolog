

%Predicado auxiliar para calcular la distancia entre dos puntos
distancia(punto(X1, Y1), punto(X2, Y2), Dist) :-
    % X1, Y1: coordenadas x e y  del primer punto respectivamente
    % X2, Y2: coordenadas x e y  del segundo punto respectivamente
    % Dist: variable que almacena la distancia entre los dos puntos

    %el predicado distancia recibe dos puntos y calcula la distancia entre ellos,
    %la distancia se calcula sumando el valor absoluto de la resta de las coordenadas x e y de los dos puntos
    %para luego ser almacenada en la variable Dist

    Dist is abs(X1 - X2) + abs(Y1 - Y2).

%Caso Lista de puntos vacia -> la distancia es infinita 
minDistManhattan(_,[],'inf').

%Predicado principal para calcular la distancia minima entre un punto y una lista de puntos
minDistManhattan(Punto, [Punto2|Puntos], Min) :-
    % Punto: punto de referencia
    % Punto2: punto de la lista
    % Puntos: lista de puntos
    % Min: variable que almacena la distancia minima entre el punto de referencia y la lista de puntos

    %el predicado minDistManhattan recibe un punto y una lista de puntos y calcula la distancia minima entre el punto de referencia y la lista de puntos,
    %la distancia minima se calcula comparando la distancia entre el punto de referencia y el primer punto de la lista con la distancia minima entre el punto de referencia y el resto de la lista
    %para luego ser almacenada en la variable Min
    
    distancia(Punto, Punto2, Dist),
    minDistManhattan(Punto, Puntos, Min2),
    min_dist(Dist, Min2, Min).



%Predicado auxiliar para calcular la distancia minima entre dos distancias, considerando el caso que una distancia sea infinita

min_dist(Dist, inf, Dist).
min_dist(inf, Dist, Dist).
min_dist(Dist1, Dist2, Min) :-
    % Dist1: primera distancia
    % Dist2: segunda distancia
    % Min: variable que almacena la distancia minima entre las dos distancias

    %el predicado min_dist recibe dos distancias y calcula la distancia minima entre ellas,
    %la distancia minima se calcula comparando las dos distancias y se almacena en la variable Min
    %si alguna de las distancias es infinita, la distancia minima es la otra distancia
    %si ambas distancias son infinitas, la distancia minima es infinita
    Dist1 \= inf,
    Dist2 \= inf,
    Min is min(Dist1, Dist2).
