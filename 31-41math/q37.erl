%%Calculate Euler's totient function phi(m) (improved).

-module(q37).
-export([totientPhiImproved/1]).
-import(q36,[primeFactorsMult/1]).

totientPhiImproved(1) ->
    1;
totientPhiImproved(N) ->
    totientMath(primeFactorsMult(N),1).

totientMath([],Num) ->
   round(Num);
totientMath([[H,T]|Tn],Num) ->
    Numtemp=Num*(H-1)*math:pow(H,T-1),
    totientMath(Tn,Numtemp).
