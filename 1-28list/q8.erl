%%Eliminate consecutive duplicates of list elements.

-module(q8).
-export([mylist_compress/1]).

mylist_compress(L) ->
    mylist_compress(L,[]).

mylist_compress([],L) ->
    lists:reverse(L);
mylist_compress([H|T],[]) ->
    mylist_compress(T,[H]);
mylist_compress([H|T],[H1|T1]) ->
    case H==H1 of
	true ->
	    mylist_compress(T,[H1|T1]);
	false ->
	    mylist_compress(T,[H]++[H1|T1])
    end.
	    
