
myappend(A,B,B,A).

myap1(A-B, B, A).

myap2(A-B, B-C, A-C).

inv([H|T], [L|H]):- inv(T,L).
inv([],[]).
