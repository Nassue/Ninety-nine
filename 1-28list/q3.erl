%%Find the K'th element of a list
-module(q3).
-export([mylist_element/2]).

mylist_element([],N) ->
    io:format("List is empty~n");
mylist_element(L,N) when N<0 ->
    io:format("N is illegal~n");
mylist_element(L,N) when N>length(L) ->
    io:format("N is illegal~n");
mylist_element([H|T],1) ->
    H;
mylist_element([H|T],N) ->
    mylist_element(T,N-1).
