
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

split(Num, List, A, B):- split2(Num, List, [], A, [], B).
split2(Num, [], A, A, B, B).
split2(Num, [H|T], L1, R1, L2, R2):-
    H < Num,
    append(L1, [H], L),
    split2(Num, T, L, R1, L2, R2).
split2(Num, [H|T], L1, R1, L2, R2):-
    H >= Num,
    append(L2, [H], L),
    split2(Num, T, L1, R1, L, R2).
