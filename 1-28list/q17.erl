%%Split a list into two parts; the length of the first part is given

-module(q17).
-export([mylist_split/2]).

mylist_split(L,N) ->
    mylist_split(L,0,N,[],[]).

mylist_split([],_C,_N,_L1,_L2) ->
   lists:reverse(_L2);
mylist_split([H|T],C,N,L1,L2) ->
    case C<N of
	true ->mylist_split(T,C+1,N,[H|L1],L2);
	false ->mylist_split(T,C,N,L1,[H|L2])
    end.
	    
