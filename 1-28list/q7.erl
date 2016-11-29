%%Flatten a nested list structure

-module(q7).
-export([mylist_flatten/1]).

mylist_flatten(L) ->
    mylist_flatten(L,[]).

mylist_flatten([],L) ->
    lists:reverse(L);
mylist_flatten([H|T],L) when is_list(H) ->
    La=mylist_flatten(H),
    Lb=lists:reverse(La),
    mylist_flatten(T,Lb++L);
mylist_flatten([H|T],L) ->
    mylist_flatten(T,[H|L]).


