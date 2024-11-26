% Define vowels
vowel(a).
vowel(e).
vowel(i).
vowel(o).
vowel(u).

% Base case: empty list has 0 vowels
count_vowels([], 0).

% Recursive case: if the head is a vowel, add 1 and recurse on the tail
count_vowels([H|T], Count) :-
    vowel(H),
    count_vowels(T, TailCount),
    Count is TailCount + 1.

% Recursive case: if the head is not a vowel, just recurse on the tail
count_vowels([H|T], Count) :-
    \+ vowel(H),
    count_vowels(T, Count).
