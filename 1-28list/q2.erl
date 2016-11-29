%%Find the last but one element of a list

-module(q2).
-export([mylist_last2/1]).

-import(q3,[mylist_element/2]).

mylist_last2(L) ->
    mylist_element(L,length(L)-1).
