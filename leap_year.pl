% on every year that is evenly divisible by 4
%   except every year that is evenly divisible by 100
%     unless the year is also evenly divisible by 400

leap(Year):-
  Year rem 4 =:= 0,
  Year rem 100 =\= 0;
  Year rem 400 =:= 0.