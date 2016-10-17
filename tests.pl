:- begin_tests(qs).
:- use_module(library(lists)).

test(quicksort,[nondet]) :-
  L = [4,5,1],
  quicksort(L, Sorted), 
  sort(L, Sorted).

test(quicksort,[nondet]) :-
  randseq(15,15,L),
  quicksort(L, Sorted),
  sort(L, Sorted).

:- end_tests(qs).


:- run_tests.
