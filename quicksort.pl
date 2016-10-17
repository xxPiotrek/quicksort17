% Implementacja Quicksorta w Prologu
% Autor korpo, https://github.com/korpo

quicksort([],[]).
quicksort([X],[X]).
quicksort([X|Xs],Ys) :-
  partition(Xs,X,Left,Right),
  quicksort(Left,Ls),
  quicksort(Right,Rs),
  append(Ls,[X|Rs],Ys).

partition([X|Xs],Y,[X|Ls],Rs) :- X =< Y, partition(Xs,Y,Ls,Rs).
partition([X|Xs],Y,Ls,[X|Rs]) :- X  > Y, partition(Xs,Y,Ls,Rs).
partition([],_,[],[]).
