% Facts

tweep(jill).
tweep(eric).
tweep(jose).
tweep(joe).
tweep(anna).

tweet(gossip).
tweet(policy).
tweet(declaration).
tweet(greeting).
tweet(screed).

% Rules

tweets(jill, greeting).
tweets(anna, gossip).

follows(eric, jill).
follows(joe, anna).
follows(eric, joe).
follows(jill, joe).

receives(Tweep, What) :-
  % Tweep receives own tweet
  tweets(Tweep, What);
  % Otherwise they have to follow and the Tweep has to tweet or retweet something
  says(Who, What),
  follows(Tweep, Who).

fan(joe, anna).
fan(eric, joe).

% Fans retweet Stars
retweets(Fan, What) :-
  tweets(Star, What),
  fan(Fan, Star).

says(Tweep, What) :-
  tweets(Tweep, What);
  retweets(Tweep, What).