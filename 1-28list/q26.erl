-module(q26).
-export([mylist_combination/2]).

mylist_combination([],_) ->
    [];
mylist_combination([H|T],1) ->
    [[H]|mylist_combination(T,1)];
mylist_combination([H|T],N) ->
    [[H|Tn] || Tn <- mylist_combination(T,N-1)]++mylist_combination(T,N).

