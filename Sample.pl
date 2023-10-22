criminal(X) :- american(X), weapon(Y), sells(X,Y,Z), hostile(Z).

missile(m_one).
owns(nono, m_one).

sells(west, X, nono) :- missile(X),owns(nono, X).

weapon(X) :- missile(X).

enemy(nono, america).
hostile(X) :- enemy(X, america).

american(west).

american(bob).