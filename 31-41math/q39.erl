-module(q39).
-export([primesR/2]).
-import(q31,[isPrime/1]).

primesR(St,En) ->
    primesR(St,En,[]).

primesR(En,En,L) ->
    L;
primesR(St,En,L) ->
    case isPrime(St) of
	true ->primesR(St+1,En,[St|L]);
	false ->primesR(St+1,En,L)
    end.
