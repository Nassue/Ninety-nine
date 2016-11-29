%%Rotate a list N places to the left

-module(q19).
-export([mylist_rotate/2,mylist_rotate/4]).
-import(q17,[mylist_split/2]).

mylist_rotate(L,0) ->
    L;
mylist_rotate(L,N) ->
    case N>0 of
	true ->
	   mylist_split(L,N) ++ mylist_rotate(L,N,0,[]);
	false ->
	   mylist_split(L,length(L)+N) ++ mylist_rotate(L,length(L)+N,0,[])
    end.

mylist_rotate([H|T],N,C,L) ->
    case C<N of
	true ->mylist_rotate(T,N,C+1,[H|L]);
	false ->lists:reverse(L)
    end.
    
	    
    
	    
