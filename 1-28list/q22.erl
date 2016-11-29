%%Create a list containing all integers within a given range

-module(q22).
-export([mylist_range/2]).

mylist_range(St,En) ->
    mylist_range(St,En,[]).

mylist_range(St,En,L) ->
    case St=<En of
	true ->mylist_range(St+1,En,[St|L]);
	false ->lists:reverse(L)
    end.
	    
