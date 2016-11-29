%%Find out whether a list is a palindrome

-module(q6).
-export([mylist_palindrome/1]).

mylist_palindrome(L) ->
    mylist_palindrome(L,lists:reverse(L)).

mylist_palindrome(L1,L2) when L1==[],L2/=[] ->false;
mylist_palindrome(L1,L2) when L1/=[],L2==[] ->false;
mylist_palindrome([],[]) ->true;
mylist_palindrome([H1|T1],[H2|T2]) ->
    case H1==H2 of
	true ->
	    mylist_palindrome(T1,T2);
	false ->
	    false
    end.
