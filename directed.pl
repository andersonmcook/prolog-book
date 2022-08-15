edge(a, b).
edge(a, c).
edge(b, c).
edge(c, f).
edge(d, e).

% Goals that take goals are meta-predicates
% findall / bagof / setof

sources(Destination, List) :-
  findall(Source, edge(Source, Destination), List).

destinations(Source, List) :-
  findall(Destination, edge(Source, Destination), List).

reachable(A, B) :-
  edge(A, B).

reachable(A, B) :-
  edge(A, C),
  reachable(C, B).