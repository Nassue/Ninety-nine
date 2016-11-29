%%Pack consecutive duplicates of list elements into sublists

-module(q9).
-export([mylist_pack/1]).

mylist_pack(L) ->
    mylist_pack(lists:reverse(L),[],[]).

mylist_pack([],L1,L2) ->
    [L1|L2];
mylist_pack([H|T],[],[]) ->
    mylist_pack(T,[H],[]);
mylist_pack([H|T],[H1|T1],L) ->
    case H==H1 of
	true ->mylist_pack(T,[H]++[H1|T1],L);
	false ->mylist_pack(T,[H],[[H1|T1]|L])
    end.
	    
