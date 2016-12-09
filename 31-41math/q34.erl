%%Calculate Euler's totient function phi(m)

-module(q34).
-export([totientPhi/1]).
-import(q33,[coprime/1]).

totientPhi(Num) ->
    totientPhi(Num,1,0).

totientPhi(1,_,_) ->
    1;
totientPhi(N,N,C) ->
    C;
totientPhi(Num,N,C) ->
    case coprime([Num,N]) of
	true ->
	    totientPhi(Num,N+1,C+1);
	false ->
	    totientPhi(Num,N+1,C)
    end.
