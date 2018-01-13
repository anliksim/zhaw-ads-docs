# Suche

* Sortierter Array: Einfügen $$O(n/2)$$, binäres Suchen $$O(log_{2}(n))$$
* Lineare sortierte Liste: Einfügen, Suchen $$O(n/2)$$
* Sortierter Binärbaum: Einfügen, Suchen $$O(log_{2}(n))$$

## Binary Search

* Suche nach _s_ in sortiertem Array _a_ mit Index _l,m,r_
* falls $$a[m] < s$$ -> _m_ auf _l_ setzen
* falls $$a[m] > s$$ -> _m_ auf _r_ setzen
* falls $$a[m] == s$$ -> gefunden
* falls $$l+1 >= r$$ -> nicht gefunden
