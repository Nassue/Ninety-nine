%%Generate a random permutation of the elements of a list

-module(q25).
-export([mylist_rnd_perm/1,mylist_rnd_perm1/1]).

mylist_rnd_perm([]) ->
    [];
mylist_rnd_perm(L) ->
    {_,Min,Sec}=time(),
    Num1=(Min rem length(L))+1,
    Num2=(Sec rem length(L))+1,
    Ele1=q3:mylist_element(L,Num1),
    Ele2=q3:mylist_element(L,Num2),
    mylist_rnd_perm(L,1,Num1,Num2,Ele1,Ele2,[]).

mylist_rnd_perm([],_C,_Num1,_Num2,_Ele1,_Ele2,L) ->
    lists:reverse(L);
mylist_rnd_perm([H|T],C,Num1,Num2,Ele1,Ele2,L) ->
    case C of
	Num1 ->mylist_rnd_perm(T,C+1,Num1,Num2,Ele1,Ele2,[Ele2|L]);
	Num2 ->mylist_rnd_perm(T,C+1,Num1,Num2,Ele1,Ele2,[Ele1|L]);
	_ ->mylist_rnd_perm(T,C+1,Num1,Num2,Ele1,Ele2,[H|L])
    end.

mylist_rnd_perm1(L) ->
    q23:mylist_rnd_select(L,length(L)).
