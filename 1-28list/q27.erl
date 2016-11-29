%%Group the elements of a set into disjoint subsets.

-module(q27).
-export([mylist_group_a/1,mylist_group_b/4]).
-import(q26,[mylist_combination/2]).

mylist_group_a(L) ->
    L2=mylist_combination(L,2),
    L3=[mylist_combination(L--Le1,3) || Le1 <- L2],
    list_temp(L,L2,L3).

list_temp(_,[],_) ->
    [];
list_temp(L,[H|T],[H1|T1]) ->
    [{list_to_tuple(H),list_to_tuple(M),list_to_tuple((L--H)--M)} || M <-H1]++list_temp(L,T,T1).
    
    
mylist_group_b(L,Num1,Num2,Num3) ->
    case length(L)==(Num1+Num2+Num3) of
	true ->
	    L2=mylist_combination(L,Num1),
	    L3=[mylist_combination(L--Le1,Num2) || Le1 <- L2],
	    list_temp(L,L2,L3);
	false ->
	    error
    end.
