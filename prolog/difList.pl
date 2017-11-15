
myappend(A,B,B,A).

myap1(A-B, B, A).

myap2(A-B, B-C, A-C).

inv([H|T], [L|H]):- append(), inv(T,L).
inv([],[]).

:-dynamic tabla/3.
fun(A,B,C):- tabla(A, B, C), !.
fun(A,B,C):- C is (A+B)*(A+B), assertz(tabla(A,B,C)).



isCP(N):-
    n2l(N, L),
    length(L, A),
    isCPR(N, 0, A).

isCPR(X, Ind_0, Max):-
    Ind_0 > Max ->
        true;
        isPrime(X),
        n2l(X,L1),
        rotate(L1, L2),
        l2n(L2, Next),
        Ind_1 is Ind_0 + 1,
        isCPR(Next, Ind_1, Max).

n2l(N,Y):- number_codes(N,X), maplist(plus(48),Y,X).

l2n(L,Y):- maplist(plus(48), L, Z), number_codes(Y,Z).

rotate([H|T], R):- append(T, [H], R).

:-dynamic primes/1.

isPrime(2):- !.
isPrime(3):- !.
isPrime(X):- primes(X).
isPrime(X):-
    X > 3,
    Temp is X mod 2,
    Temp \= 0,
    N_max is ceiling(sqrt(X)),
    isPrimeR(X, 3, N_max),
    assertz(X).

isPrimeR(X, Num, Max):-
    Num > Max ->
        true ;
        Temp is X mod Num,
        0 \= Temp,
        Next is Num + 2,
        isPrimeR(X, Next, Max).
