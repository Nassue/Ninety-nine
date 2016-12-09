-module(q40).
-export([goldbach/1]).
-import(q39,[primesR/2]).
-import(q31,[isPrime/1]).

goldbach(Num) ->
    L=primesR(2,Num div 2),
    isgoldbach(L,Num).

isgoldbach([],Num) ->
    error;
isgoldbach([H|T],Num) ->
    case isPrime(Num-H) of
	true ->
	    [H,Num-H];
	false ->
	    isgoldbach(T,Num)
    end.

