%%Extract a given number of randomly selected elements from a list

-module(q23).
-export([mylist_rnd_select/2]).
-import(q20,[mylist_remove_at/2]).


mylist_rnd_select(L,0) ->
    [];
mylist_rnd_select(L,N) ->
    mylist_rnd_select(L,N,0,[]).

mylist_rnd_select(_,N,N,L) ->
    L;
mylist_rnd_select(L,N,C,Ln) ->
    Rn=rand_num(length(L)),
    Num=mylist_getelement_at(L,Rn),
    Lt=mylist_remove_at(L,Rn),
    mylist_rnd_select(Lt,N,C+1,[Num|Ln]).

rand_num(N) ->
    {_,_,Rn}=time(),
    (Rn rem N)+1.

mylist_getelement_at(L,N) ->
    mylist_getelement_at(L,N,1).

mylist_getelement_at([H|T],N,N) ->
    H;
mylist_getelement_at([H|T],N,C) ->
    mylist_getelement_at(T,N,C+1).


