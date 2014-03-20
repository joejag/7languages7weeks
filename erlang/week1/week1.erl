-module(week1).
-export([word_count/1, word_count_recursive/1, counter/0]).

% without recursion
word_count(String) -> length(string:tokens(String, " ")).

% 1.1 with recursion
word_count_recursive(String) -> 
  word_count_recursive(0, string:tokens(String, " ")).
word_count_recursive(Count, []) -> 
  Count;
word_count_recursive(Count, List) -> 
  [_Head|Tail] = List,
  word_count_recursive(Count + 1, Tail).

% 1.2 Write a function to count to ten using recursion

counter() ->
  counter(1).
counter(10) ->
  10;
counter(N) ->
  counter(N+1).
