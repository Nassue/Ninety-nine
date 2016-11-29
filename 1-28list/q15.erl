%%Duplicate the elements of a list a given number of times

-module(q15).
-export([mylist_dupli_num/2]).

mylist_dupli_num(L,N) ->
    mylist_dupli_num(L,N,[]).

mylist_dupli_num([],N,L) ->
    lists:reverse(L);
mylist_dupli_num([H|T],N,L) ->
    Ln=loopn(H,N),
    mylist_dupli_num(T,N,Ln++L).

loopn(H,0) ->
    [];
loopn(H,N) ->
    [H]++loopn(H,N-1).

