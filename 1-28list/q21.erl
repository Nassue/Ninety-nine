%%Insert an element at a given position into a list

-module(q21).
-export([mylist_insert_at/3]).

mylist_insert_at(L,Item,Local) ->
    mylist_insert_at(L,Item,1,Local,[]).

mylist_insert_at([],Item,C,Local,L) ->
    lists:reverse(L);
mylist_insert_at([H|T],Item,C,Local,L) ->
    case C==Local of
	true ->mylist_insert_at([H|T],Item,C+1,Local,[Item|L]);
	false ->mylist_insert_at(T,Item,C+1,Local,[H|L])
    end.
