partition([X|Xs],Y,[X|Ls],Rs):- X =< Y, partition(Xs,Y,Ls,Rs).
partition([X|Xs],Y,Ls,[X|Rs]):- X > Y, partition(Xs,Y,Ls,Rs).
partition([], Y, [], []).

partition2(PIVOT, [], [], []).
partition2(PIVOT, [HEAD | TAIL], [HEAD | LEFT], RIGHT) :- HEAD @=< PIVOT,
                                                         partition2(PIVOT, TAIL, LEFT, RIGHT).
partition2(PIVOT, [HEAD | TAIL], LEFT, [HEAD | RIGHT]) :- HEAD @> PIVOT,
                                                         partition2(PIVOT, TAIL, LEFT, RIGHT).
