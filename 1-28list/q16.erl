%%Drop every N'th element from a list

-module(q16).
-export([mylist_drop/2]).

mylist_drop(L,N) ->
    mylist_drop(L,1,N,[]).

mylist_drop([],C,N,L) ->
    lists:reverse(L);
mylist_drop([H|T],C,N,L) ->
    case C of
	N ->mylist_drop(T,1,N,L);
	_ ->mylist_drop(T,C+1,N,[H|L])
    end.
	    



