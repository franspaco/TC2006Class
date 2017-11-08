
separa(N, [H|T], [H|L], R):-
    H =< N,
    separa(N, T, L, R).
separa(N, [H|T], L, [H|R]):-
    H > N,
    separa(N, T, L, R).
separa(N, [], [], []).


quicksort([LH|LT], Sorted):-
    separa(LH,LT,LEFT,RIGHT),
    quicksort(LEFT, SortedL),
    quicksort(RIGHT, SortedR),
    append([LH], SortedR, B),
    append(SortedL, B, Sorted).
quicksort([], []).
/*
separa(Num, [], A, A, B, B).
separa(Num, [H|T], X, A, Y, B):-
    H < Num,
    write('LT\n'),
    append(X, [H], L),
    write(L),
    write('-L\n').
separa(Num, [H|T], X, A, Y, B):-
    H >= Num,
    write('GE\n'),
    append(Y, [H], R),
    write(R),
    write('-R\n').
/*
separa(Num, [H|T], X, A, Y, B):-
    H < Num ->
    write('LT\n'),
    append(X, [H], L),
    write(L),
    write('-L\n');
    /*separa(Num, T, L, A, Y, B);
    write('GE\n'),
    append(B, [H], R),
    write(R),
    write('-R\n')
    separa(Num, T, X, A, R, B).
*/
