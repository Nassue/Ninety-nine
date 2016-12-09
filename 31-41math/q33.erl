%%Determine whether two positive integer numbers are coprime

-module(q33).
-export([coprime/1]).
-import(q32,[myGCD/1]).
coprime(L) ->
    case myGCD(L)==1 of
	true ->
	   true;
	false ->
	   false
    end.
