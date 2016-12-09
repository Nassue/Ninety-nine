%%Determine the prime factors of a given positive integer

-module(q35).
-export([primeFactors/1,min_prime/1]).
-import(q33,[coprime/1]).

primeFactors(Num) ->
    primeFactors(Num,[]).

primeFactors(1,L) ->
    lists:reverse(L);
primeFactors(Num,L) ->
    N=min_prime(Num),
    M=Num div N,
    primeFactors(M,[N|L]).

%%find min prime of Num (except 1)
min_prime(1) ->
    1;
min_prime(Num) ->
    minprime(Num,2).

minprime(Num,C) ->
    case q31:isPrime(C) and (Num rem C == 0) of
	true->C;
	false ->minprime(Num,C+1)
    end.

    
