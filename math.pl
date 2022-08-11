% head(X, [1]). X = 1
% head(1, [1]). true
% head(1, List). List = [1|_]
head(Head, List) :- [Head|_] = List.

last([X], X).
last([_|Tail], X) :-
  last(Tail, X).

% Not tail-call optimized
sum([], 0).
sum([N|Tail], Sum) :-
  sum(Tail, PartialSum),
  Sum is PartialSum + N.

% Tail-call optimized
sum2(List, Sum) :-
  sum2(List, 0, Sum).

sum2([], Sum, Sum).

sum2([N|Tail], Acc, Sum) :-
  PartialSum is Acc + N,
  sum2(Tail, PartialSum, Sum).

rev(List, Reversed) :-
  rev(List, [], Reversed).

rev([], Reversed, Reversed).
rev([Head|Tail], Acc, Reversed) :-
  rev(Tail, [Head|Acc], Reversed).
