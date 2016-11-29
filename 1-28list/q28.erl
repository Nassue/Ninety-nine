%%Sorting a list of lists according to length of sublists. 

-module(q28).
-export([mylist_lsort/1,mylist_lfsort/1,frequency/3]).

mylist_lsort([]) ->
    [];
mylist_lsort([Value]) ->
    [Value];
mylist_lsort([H|T]) ->
    [Ht || Ht <- T,length(H)=<length(Ht)]
    ++[H]++
    [Ht || Ht <- T,length(H)>length(Ht)].

mylist_lfsort([]) ->
    [];
mylist_lfsort([Value]) ->
    [Value];
mylist_lfsort([H|T]) ->	
    [Ht || Ht <- T,frequency(H,[H|T],0)>frequency(Ht,[H|T],0)]
    ++[H]++
    [Ht || Ht <- T,frequency(H,[H|T],0)=<frequency(Ht,[H|T],0)].

frequency(_V,[],C) ->
    C;
frequency(V,[H|T],C) ->
    case length(V)==length(H) of
	true ->frequency(V,T,C+1);
	false ->frequency(V,T,C)
    end.
