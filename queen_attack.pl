:- use_module(library(clpfd)).

%! create(+DimTuple)
%
% The create/1 predicate succeeds if the DimTuple contains valid chessboard 
% dimensions, e.g. (0,0) or (2,4).
create((DimX, DimY)) :-
	[DimX, DimY] ins 0..7.

%! attack(+FromTuple, +ToTuple)
%
% The attack/2 predicate succeeds if a queen positioned on ToTuple is 
% vulnerable to an attack by another queen positioned on FromTuple.
attack((FromX, FromY), (ToX, ToY)):-
	horizontal(FromY, ToY);
    vertical(FromX, ToX);
    diagonal((FromX, FromY), (ToX, ToY)).

% Horizontal
horizontal(FromY, ToY):- FromY #= ToY.
% Alternatively
% you can define multiple clauses of the same function
% eg.
% attack((X, _), (X, _)):- !.
% attack((_, Y), (_, Y)):- !.
% the above is identical to horizontal/vertical checks
% horizontal(Y, Y):- !.
% Vertical
vertical(FromX, ToX):- FromX #= ToX.
% Diagonal
diagonal((FromX, FromY), (ToX, ToY)):-
  abs(FromX - ToX) =:= abs(FromY - ToY).