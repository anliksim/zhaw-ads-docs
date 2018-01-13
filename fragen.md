# Kontrollfragen

## Einführung in Algorithmen

Welche der Operationen kommen in einem Stack vor?

* push, pop (LIFO), isEmpty 
* peek, removeAll, isFull (optional)

Ein Abstrakter Datentyp (ADT) umfasst?

* die Schnittstelle der Operationen
* die Implementation der Operationen

Was kann man mit einer Queue machen?

* ein neues Element hinzufügen (enqueue)
* das zuerst eingefügte Element ausgeben lassen (dequeue - FIFO)
* testen ob die Queue leer ist (isEmpty)
* peek, removeAll, isFull (optional)

Welche Aufwände liegen zwischen konstantem und quadratischen Aufwand?

* $$ O(1) < O(log_xn) < O(n) < O(n log_xn) < O(n^2) < O(n^3) $$

Für welche der folgende Paare gilt g(n) = O(f(n))?

* $$ 1000n \neq O(n^{1/2}) $$
* $$ log_2n = O(log_{10}n) $$
* $$ n^{1/2} \neq O(n^{1/3}) $$
* $$ nlogn \neq O(n^2) $$
* $$ 7n^2 = O(176n^2-36n) $$
* $$ n(logn)^2 \neq O(nlogn+n^{1/2}) $$


## Listen

In einer einfach verketteten Liste zeigt der -head- auf null, d.h.?

* die Liste ist leer

Welche Operation in einer einfach verketteten List ist teuer?

* Letztes Element löschen

Wie gross ist die Laufzeit für suchen in einer unsortierten, doppelt verketteten Liste?

* linear O(n)

In welcher Listenimplementations geht das einfügen bei 100k Einträgen schneller?

* LinkedList, falls die ArrayList nicht auf mehr als 100k Einträge initialisiert wurde


## Generics

Was machen Generics?

* Generics ermöglichen die Festlegung der Typen zur Übersetzungszeit (compile time).

Was sind die Vorteile der Verwendung generischer Datenstrukturen?

* Es müssen weniger Laufzeuttests durchgeführt werden (wegen type safety/compile time checks)
* Datenstrukturen können für verschiedene Typen programmiert/verwendet werden
 
Wie deklaraiert man Collections von beliebigem Typ?

* Collection<?>

Wie erlaubt man Klassen, welche das Comparable Interface implementieren?

* <? extends Comparable>

Was bedeutet Type Erasure?

* Der Typ wird vom Compiler gelöscht
* Zur Laufzeit sind keine Typeninformationen verfügbar


## Rekursion

Warum braucht ein rekursives Programm mehr Speicher als ein iteratives?

* Bei jedem Methodenaufruf wird die Rücksprungadresse gespeichert

Kann man jeden rekursiven Algorithmus in einen iterativen umwandeln?

* Ja (z.B. tail recursion - compiler optimiert automatisch)

Was ist die Idee für den rekursiven Algorithmus für die Türme von Hanoi?

* Aufrufen von Algorithmus für die obersten n-1 Scheiden - verschiebt Teilturm, dann die unterste Scheibe auf den anderen Stapel verschieben

Was passiert beim Aufruf dieser Method mit n=5?

```java
  public int fac(int n) {
    return n * fac(n-1);
  }

```

* Fehlermeldung (StackOverflowError) - es fehlt die Abbruchbedingung

Was ist ein Indiz dafür, dass ein Programm rekursiv ist?

* Das Programm ruft sich selber auf


## Bäume

Welche Aussagen über Bäume sind korrekt?

* Ein Baum hat immer genau eine Wurzel
* In einem binären Baum hat jeder Knoten höchstens zwei Kinder

Welche Aussagen zur Traversierung sind korrekt?

* Beim Inorder kommt der aktuelle Knoten vor den Knoten des rechten Teilbaums
* Pre- und Postorder geben immer gleichviele Knoten aus
* Beim Preorder kommt der aktuelle Knoten vor den Knoten des linken Teilbaums

Welche Art von Baum Traversierung ergibt 2,7,1,6,11,3,5,4,9?
```
.........3......
......./..\.....
......7....5....
..../.\.....\...
..2...6......9..
...../.\..../...
....1..11..4....
```

* Inorder

Welche Aussage über binäre Suchbäume sind korrekt?

* Grösstes Element hat keinen rechten Nachfolger

Was muss man tun um den binären Suchbaum in umgekehrter Reihenfolge auszugeben?

* Inorder, aber zuerst den rechten Teilbaum verarbeiten


