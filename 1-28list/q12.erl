%%Decode a run-length encoded list

-module(q12).
-export([mylist_decode/1]).

mylist_decode(L) ->
    mylist_decode(L,[]).

mylist_decode([],L) ->
    lists:reverse(L);
mylist_decode([H|T],L) ->
    case is_list(H) of
	true ->
	    [N,C]=H,
	    mylist_decode(T,mylist_fa(N,C)++L);
	false ->
	    mylist_decode(T,[H|L])
    end.

mylist_fa(H,N) ->
    mylist_fa(H,N,[]).

mylist_fa(H,0,L) ->
    L;
mylist_fa(H,N,L) ->
    mylist_fa(H,N-1,[H|L]).
