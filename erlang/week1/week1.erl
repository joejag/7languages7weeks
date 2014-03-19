-module(week1).
-export([words_in_string/1, words_in_string_recursive/1]).

% without recursion
words_in_string(String) -> length(string:tokens(String, " ")).

% with recursion
words_in_string_recursive(String) -> 
  words_in_string_recursive(0, string:tokens(String, " ")).
words_in_string_recursive(Count, []) -> 
  Count;
words_in_string_recursive(Count, List) -> 
  [_Head|Tail] = List,
  words_in_string_recursive(Count + 1, Tail).
