% Caso lista vacia, rango = 0
obtenerRango([], 0).

% Caso lista con un solo elemento rango = 0
obtenerRango([_],0).


%Predicado para obtener el rango de una lista
obtenerRango(Lista, Rango) :-
    % Lista: lista de enteros
    % Rango: variable que almacena el rango de la lista

    %el predicado obtenerRango recibe una lista de enteros y calcula el rango de la lista, 
    %el rango se calcula restando el valor maximo de la lista con el valor minimo de la lista y se almacena en la variable Rango

    min_list(Lista, Min),
    max_list(Lista, Max),
    Rango is Max - Min.


%Predicado auxiliar para obtener el minimo de una lista

minList([X|Xs], Minimo) :-
    % X: primer elemento de la lista
    % Xs: resto de la lista
    % Minimo: variable que almacena el minimo de la lista

    %el predicado minList recibe una lista de enteros y calcula el minimo de la lista,
    %el minimo se calcula comparando el primer elemento de la lista con el minimo del resto de la lista y se almacena en la variable Minimo
    
    minList(Xs,Min),
    Minimo  is min(X,Min).


%Predicado auxiliar para obtener el maximo de una lista

maxList([X|Xs], Maximo) :-
    % X: primer elemento de la lista
    % Xs: resto de la lista
    % Maximo: variable que almacena el maximo de la lista

    %el predicado maxList recibe una lista de enteros y calcula el maximo de la lista,
    %el maximo se calcula comparando el primer elemento de la lista con el maximo del resto de la lista y se almacena en la variable Maximo
    
    maxList(Xs,Max),
    Maximo is max(X,Max).



