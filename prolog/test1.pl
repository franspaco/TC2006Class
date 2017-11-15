
/*
HOLA ARIEL tengo 13 puntos extra por esto
*/
famoso(pedro).
hombre(juan).
hombre(pedro).
hombre(pablo).
hombre(rodrigo).

padre(pedro, juan).
padre(roberto, pedro).
padre(simon, roberto).
padre(manuel, simon).
padre(manuel, doroteo).

ancestro(X, Y):-padre(X, Y).
ancestro(X, Y):-padre(X, Z), ancestro(Z, Y).

elementosLista([], Cont, Cont).
elementosLista([_|T], Cont, X):- Z is Cont+1, elementosLista(T, Z, X).
cuenta(Lista, X):- elementosLista(Lista, 0, X).

/*sameList(ListA, ListB):- cuenta(ListA, X), cuentaNOPE*/

sameList([],[]).
sameList([Ha|Ta], [Hb|Tb]):- Ha=:=Hb, sameList(Ta, Tb).

splitea(List, A, B):- append(A,B,List), length(A,LA), length(B,LB), LA=:=LB.

lmaxin([],M,M).
lmaxin([H|T],M, A):- H > M -> lmaxin(T,H,A) ; lmaxin(T,M,A).
lmax(List, A):- lmaxin(List, -9999, A).

feliz(X):-hombre(X),famoso(X).
