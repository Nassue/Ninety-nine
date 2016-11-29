%%Extract a slice from a list

-module(q18).
-export([mylist_slice/3]).

mylist_slice(L,St,En) ->
    mylist_slice(L,St,En,1,[]).

mylist_slice([_H|_T],_St,En,C,L) when C==En+1 ->
    lists:reverse(L);
mylist_slice([H|T],St,En,C,L) ->
    case C<St of
	true ->mylist_slice(T,St,En,C+1,L);
	false ->mylist_slice(T,St,En,C+1,[H|L])
    end.
	    

	
