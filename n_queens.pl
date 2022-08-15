:- use_module(library(clpfd)).

queen((Row, Col)) :-
  in(Row, 1..8),
  in(Col, 1..8).

attack((R1, C1), (R2, C2)) :-
  R1 =:= R2;
  C1 =:= C2;
  abs(R1 - C1) =:= abs(R2 - C2).

safe(QueenA, QueenB) :- \+ attack(QueenA, QueenB).

% Solution

queens(Queens, N) :-
  length(Queens, N),
  Queens ins 1..N,
  all_different(Queens),
  safe(Queens).

safe([]).
safe([Queen|Queens]) :-
  safe_queen(Queens, Queen, 1),
  safe(Queens).

safe_queen([], _, _).
safe_queen([Queen|Queens], Target, Difference) :-
  different_diagonals(Queen, Target, Difference),
  safe_queen(Queens, Target, Difference + 1).

different_diagonals(A, B, Distance) :-
  abs(A - B) #\= Distance.
