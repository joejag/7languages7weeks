-module(week1).
-export([word_count/1, word_count_recursive/1, word_count_recursive_again/1]).

% without recursion
word_count(String) -> length(string:tokens(String, " ")).

% with recursion
word_count_recursive(String) -> 
  word_count_recursive(0, string:tokens(String, " ")).
word_count_recursive(Count, []) -> 
  Count;
word_count_recursive(Count, List) -> 
  [_Head|Tail] = List,
  word_count_recursive(Count + 1, Tail).

% with recursion, different
word_count_recursive_again(String) -> 
  word_count_recursive_again(0, String).
word_count_recursive_again(Count, [" "|Rest]) ->
  word_count_recursive_again(Count + 1, Rest);
word_count_recursive_again(Count, [_|[]]) ->
  Count;
word_count_recursive_again(Count, [_|Rest]) ->
  word_count_recursive_again(Count, Rest).
