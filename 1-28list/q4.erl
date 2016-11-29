%%Find the number of elements of a list

-module(q4).
-export([mylist_length/1]).

mylist_length(L) ->
    mylist_length(L,0).

mylist_length([],N) ->
    N;
mylist_length([_H|T],N) ->
    mylist_length(T,N+1).
