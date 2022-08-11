:- use_module(library(clpfd)).

queen((Row, Col)) :-
  in(Row, 1..8),
  in(Col, 1..8).

attack((R1, C1), (R2, C2)) :-
  R1 =:= R2;
  C1 =:= C2;
  abs(R1 - C1) =:= abs(R2 - C2).

safe(QueenA, QueenB) :- \+ attack(QueenA, QueenB).