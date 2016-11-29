%%Duplicate the elements of a list

-module(q14).
-export([mylist_dupli/1]).

mylist_dupli(L) ->
    mylist_dupli(L,[]).

mylist_dupli([],L) ->
    lists:reverse(L);
mylist_dupli([H|T],L) ->
    mylist_dupli(T,[H,H]++L).
