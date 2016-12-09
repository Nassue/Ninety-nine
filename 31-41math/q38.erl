%%Compare the two methods of calculating Euler's totient function. 

-module(q38).
-export([compareToti/1].
-import(q36,[primeFactorsMult/1]).

compareToti(N) ->
    [N,lists:length(primeFactorsMult(N))]
