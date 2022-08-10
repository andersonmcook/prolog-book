head(Head, List) :- [Head|_] = List.
% head(X, [1]). X = 1
% head(1, [1]). true
% head(1, List). List = [1|_]