
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
