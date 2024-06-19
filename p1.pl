% Caso rango de lista vacia
obtenerRango([], 0).

% Caso rango de lista con un solo elemento
obtenerRango([_],0).


%Caso para una lista con 2 o mas elementos
obtenerRango(Lista, Rango) :-
    min_list(Lista, Min),
    max_list(Lista, Max),
    Rango is Max - Min.


%Encontrando el minimo de una lista

minList([X|Xs], Minimo) :-
    minList(Xs,Min),
    Minimo  is min(X,Min).


%Encontrando el maximo de una lista

maxList([X|Xs], Maximo) :-
    maxList(Xs,Max),
    Maximo is max(X,Max).



