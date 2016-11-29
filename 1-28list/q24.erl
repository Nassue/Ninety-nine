-module(q24).
-export([mylist_rnd_selects/2]).
-import(q22,[mylist_range/2]).
-import(q23,[mylist_rnd_select/2]).


mylist_rnd_selects(C,En) ->
    L=mylist_range(1,En),
    mylist_rnd_select(L,C).
