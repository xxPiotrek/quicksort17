:- begin_tests(qs).
:- use_module(library(lists)).

test(project_dedalus_quicksort,[nondet]) :-
  L = [4,5,1],
  project_dedalus_quicksort(L, Sorted), 
  sort(L, Sorted).

test(quicksort,[nondet]) :-
  L=[8,4,2,1,3,6,5,7,12,10,9,11,14,13,15],
  project_dedalus_quicksort(L, Sorted),
  sort(L, Sorted).

:- end_tests(qs).


:- run_tests.
