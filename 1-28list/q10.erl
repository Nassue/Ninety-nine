%%Run-length encoding of a list

-module(q10).
-export([mylist_encode/1]).

mylist_encode(L) ->
    mylist_encode(lists:reverse(L),0,[]).

mylist_encode([],N,[H|T]) ->
    case N/=0 of
	true -> [[H,N]|T];
	false ->[H|T]
    end;
mylist_encode([H|T],0,L) ->
    mylist_encode(T,1,[H|L]);
mylist_encode([H1|T1],N,[H2|T2]) ->
    case H1==H2 of
	true ->mylist_encode(T1,N+1,[H2|T2]);
	false ->mylist_encode([H1|T1],0,[[H2,N]|T2])
    end.
    
