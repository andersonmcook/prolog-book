:- consult(tots).

team(Team) :-
  teams(Teams),
  member(Team, Teams).

match(A, B) :-
  team(A),
  team(B),
  dif(A, B).

potential_matches(Matches) :-
  findall((A, B), match(A, B), Matches).

day(Day, Label) :-
  days(Days),
  nth1(Day, Days, Label).

different_teams((A, B), (C, D)) :-
  dif(A, C),
  dif(A, D),
  dif(B, C),
  dif(B, D).

% Acc, PotentialMatches, Scheduled, Day
schedule(Scheduled, [], Scheduled, _).
schedule(Acc, PotentialMatches, Scheduled, Day) :-
  member(MatchA, PotentialMatches),
  member(MatchB, PotentialMatches),
  different_teams(MatchA, MatchB),
  subtract(PotentialMatches, [MatchA, MatchB], WithoutAB),
  NextDay is Day + 1,
  schedule([(MatchA, MatchB, Day)|Acc], WithoutAB, Scheduled, NextDay).
