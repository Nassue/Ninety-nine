-module(q20).
-export([mylist_remove_at/2]).

mylist_remove_at(L,N) ->
    mylist_remove_at(L,N,1,[]).

mylist_remove_at([],_,_,L) ->
    lists:reverse(L);
mylist_remove_at([H|T],N,C,L) ->
    case C==N of
	true ->mylist_remove_at(T,N,C+1,L);
	false ->mylist_remove_at(T,N,C+1,[H|L])
    end.
