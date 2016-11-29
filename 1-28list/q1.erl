%%Find the last element of a list
-module(q1).
-export([mylist_last/1]).

mylist_last([]) ->
    [];
mylist_last([H|T]) when T==[]  ->
    H;
mylist_last([H|T]) ->
    mylist_last(T).

