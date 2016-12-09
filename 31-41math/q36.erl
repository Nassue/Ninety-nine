%%Determine the prime factors of a given positive integer (2)

-module(q36).
-export([primeFactorsMult/1]).
-import(q35,[primeFactors/1]).
-import(q10,[mylist_encode/1]).

primeFactorsMult(Num) ->
    L=primeFactors(Num),
    mylist_encode(L).
