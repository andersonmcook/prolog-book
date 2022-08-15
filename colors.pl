border(A, B) :-
  color(A),
  color(B),
  diff(A, B).

% Do we really care about the list of colors?
color(Color) :-
  member(Color, [blue, red, yellow]).

diff(A, B) :- A \== B.

% Still brute force
coloring(Chile, Argentina, Bolivia, Uruguay, Paraguay, Peru) :- different(Chile, Argentina),
  different(Chile, Bolivia),
  different(Chile, Peru),
  different(Peru, Bolivia),
  different(Bolivia, Paraguay),
  different(Argentina, Bolivia),
  different(Argentina, Uruguay),
  different(Argentina, Paraguay),
  different(Argentina, Bolivia).
