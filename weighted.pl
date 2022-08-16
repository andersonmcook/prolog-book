:- use_module(library(aggregate)).

% Undirected, weighted graph

edge(a, b, 1).
edge(a, c, 3).
edge(b, c, 1).
edge(c, f, 2).
edge(d, e, 2).

connected(A, B, Weight) :-
  edge(A, B, Weight);
  edge(B, A, Weight).