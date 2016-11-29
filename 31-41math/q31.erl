%%Determine whether a given integer number is prime

-module(q31).
-export([isPrime/1]).

isPrime(Num) ->
    isPrime(Num,2).

isPrime(Num,Num) ->
    true;
isPrime(Num,C) ->
    case Num rem C == 0 of
	true ->false;
	false ->isPrime(Num,C+1)
    end.
