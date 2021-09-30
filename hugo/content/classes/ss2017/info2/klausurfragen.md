---
title:  Info2 SS2017 Klausurfragen
author: kleinen
layout: default
---

Klausurfragen gesammelt am 18.7.2017

## 001-info2-application-development

keine gesammelt

## 002-info2-Tooling

keine gesammelt

## 003-info2-networking-fileio-exceptions

... die API für Datei öffnen müssen Sie nicht auswendig kennen.

- Programmieraufgabe: Datei öffnen und etwas mit der Datei machen
- etwas in Datei reinschreiben

## 004-info2-concurrency

... das kommt erst in Info3 dran :) :

- selbst Thread implementieren
- Deadlock in Programm mit Threads finden

## 005-info2-algorithms

- Wie ist der Aufwand eines gegebenen Algorithmus?

## 006-info2-lists

- was ist die Komplexität für folgende Operationen für ArrayList und LinkedList? (Tabelle ergänzen)

|            | search | add | get(k) | contains | next | remove |
|:-----------|:-------|:----|:-------|:---------|:-----|:-------|
| ArrayList  |        |     |        |          |      |        |
| LinkedList |        |     |        |          |      |        |


|            | search | add to front | get(k) | contains | next | remove |
|:-----------|:-------|:-------------|:-------|:---------|:-----|:-------|
| ArrayList  | O(n)   | O(n)         | O(1)   | O(n)     | O(1) | O(n)   |
| LinkedList | O(n)   | O(1)         | O(n)   | O(n)     | O(1) | O(1)   |

vorr. für next und remove: index (ArrayList) bzw. Pointer (LinkedList) auf jeweiliges Element.


## 007-info2-Abstract Data Types

- woraus bestehen Abstrakte Datentypen? aus der Datenstruktur und den Operationen
- wie kann man auf die Daten eines Abstrakten Datentypen zugreifen? Antwort: über die Operationen

- was ist der Unterschied zwischen Stack, Queue und Deque?

Beispiel für Auflösung Tick, Trick und Track:
----------------------------------------------
Sorts: A, B, C

Signatures:

tick : B x A -> B
push: Stack x ElementType -> Stack

trick : B -> B
pop : Stack -> Stack

track : B -> A
top: Stack -> ElementType

donald: B -> C
isEmpty? : Stack -> boolean

daisy: -> B
createEmpty : -> Stack

Axioms:

a und b sind jetzt konkrete Werte der Typen A und B!
d.h. b ist z.B. ein konkreter Stack

donald (daisy()) = true
donald (tick (b, a)) = false
trick (daisy()) = error
track (daisy()) = error


trick (tick (b, a)) = b
pop(push(b,a)) = b

aber:
dequeue (enqueue(b,a)) != b
also Stack!

track (tick (b, a)) = a
top(push(b,a)) = a
getFront(enqueue(b,a)) != a
()

## 008 info2-Stack

- welche zwei Datentypen haben wir als Grundlage für mögliche Implementierungen eines Stacks besprochen?
 Antwort: auf der Basis eines Arrays oder einer Linked List

- was machen pop, push, und top und zu welchem Datentyp gehören sie?


## 009 info2-Queues

- Was ist der Unterschied zwischen Queue und Stack - Antwort: LIFO FIFO
- nennen Sie ein Beispiel, wo eine Priority Queue verwendet werden kann?
    - Druckerschlange
    - Queue für Timeslicing mit priorisierten Prozessen oder Threads


## 010 datastructures sets maps

- was ist der Unterschied zwischen einem Bag und einem Set? Antwort: im Bag sind
doppelte Elemente erlaubt, im Set nicht

## 011 Recursion

Was ist eine rekursive Funktion? - Antwort: eine Funktion, die sich selbst aufruft


## 012 Sorting

- Sortieren Sie die Sorting Algorithms nach Komplexität
- Walkthrough durch \*Sort

## 013 Random Numbers

- Erklären Sie den Algorithmus zur Approximation von Pi mit zufälligen Werten
- Was ist der Unterschied zwischen random.nextInt() und Math.random()

## 014 Graphs Paths


## 015 Trees

- Unterschied zwischen Graphen und Trees?


## 017-AVL-trees

- wann ist ein Baum balanciert?
- wie balanciert man einen Baum aus?

## 016 SortingII

- Was ist ein Heap?
- Wie funktioniert Heapsort?


## 019 Searching

- implementieren sie Binary Search auf einem Array

## 018-Finite-State-Automata

## 022 Scanning Parsing
## 020 String searching
## 021 Hashing

- Was ist der Aufwand für den Zugriff auf einen Key (get(key) -> value) in einer HashMap - Antwort: O(1)
