%%Modified run-length encoding

-module(q11).
-export([mylist_encoded_modified/1]).

mylist_encoded_modified(L) ->
    mylist_encode_modified(lists:reverse(L),0,[]).

mylist_encode_modified([],N,[H|T]) ->
    case N/=0 of
	true -> [[H,N]|T];
	false ->[H|T]
    end;
mylist_encode_modified([H|T],0,L) ->
    mylist_encode_modified(T,1,[H|L]);
mylist_encode_modified([H1|T1],N,[H2|T2]) ->
    case H1==H2 of
	true ->mylist_encode_modified(T1,N+1,[H2|T2]);
	false ->
	    case N/=1 of
		true ->mylist_encode_modified([H1|T1],0,[[H2,N]|T2]);
		false ->mylist_encode_modified([H1|T1],0,[H2|T2])
	    end
    end.

