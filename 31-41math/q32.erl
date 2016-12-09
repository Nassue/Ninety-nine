%%Determine the greatest common divisor of two positive integer numbers


-module(q32).
-export([myGCD/1]).

myGCD([0,_]) ->
    error;
myGCD([_,0]) ->
    error;
myGCD([H,T]) ->
    case H rem T == 0 of
	true ->
	    T;
	false ->
	    Temp=H rem T,
	    myGCD([T,Temp])
    end.
