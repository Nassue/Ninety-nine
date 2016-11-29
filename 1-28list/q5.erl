-module(q5).
-export([mylist_reverse/1]).

mylist_reverse(L) ->
    mylist_reverse(L,[]).

mylist_reverse([],L) ->
    L;
mylist_reverse([H|T],L) when is_list(H) ->
    Te=mylist_reverse(H,[]),
    mylist_reverse(T,[Te|L]);
mylist_reverse([H|T],L) ->
    mylist_reverse(T,[H|L]).
