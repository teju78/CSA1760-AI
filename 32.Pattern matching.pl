% Match a list that starts with a specific element
starts_with([Element|_], Element).

% Match a list that ends with a specific element
ends_with(List, Element) :-
    append(_, [Element], List).

% Match a list with exactly two elements
two_element_list([_, _]).

% Match a list with a specific structure [Head, Middle, Tail]
three_element_list([Head, Middle, Tail], Head, Middle, Tail).

% Match a list with a sub-list pattern
contains_sublist(List, SubList) :-
    append(_, Rest, List),
    append(SubList, _, Rest).

% Examples:
% ?- starts_with([a, b, c], a).
% ?- ends_with([a, b, c], c).
% ?- two_element_list([x, y]).
% ?- three_element_list([1, 2, 3], H, M, T).
% ?- contains_sublist([a, b, c, d, e], [c, d]).
%
