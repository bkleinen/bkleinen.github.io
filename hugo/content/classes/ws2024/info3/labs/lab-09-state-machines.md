---
title: '9 - State Machine Diagrams'
author: kleinen
layout: page
draft: true
weight: 90
---

![Tape of a fancy Turing Machine](../images/turing-tape.jpg)


<small class = "float-right">[Tape of a fancy Turing Machine from Wikipedia](https://en.wikipedia.org/wiki/Turing_machine_gallery)</small>

## Pre-Lab

* For an introduction to state machine diagrams, see [https://www.agilemodeling.com/artifacts/stateMachineDiagram.htm](https://www.agilemodeling.com/artifacts/stateMachineDiagram.htm).

* for the parser exercise, have a look at [Finite Automata](https://en.wikipedia.org/wiki/Deterministic_finite_automaton) - in their context of formal languages their typical event is reading a character from an input stream, and can be (and usually are) represented by state machine diagrams.  


### Part 1: State Machine Diagrams

1. Model the modified goat/cabbage/wolf problem: The farmer is in Schöneweide and wants to get his goat, his cabbage and his wolf over to Oberschöneweide. Only one thing can fit in his boat at a time beside himself. He cannot leave the cabbage and the goat or the goat and the wolf alone on the same side of the river, for obvious reasons. Is it possible for him to get all three possessions across the Spree? Draw a State Machine Diagram modelling both solutions to this problem.

2. Model the states an IMI student passes through from the first until the sixth semester. (Glory for the most humorous model that is not offensive.)

3. Model the states of a parser that determines if a given string is a proper floating-point number, i.e. 

```
    [sign] integerpart dot fractional part [E exponent]
```
Note: This state diagram exercises shows their close relation to Finite State Automata. If you haven't learned about them in Info2, or as a refresher, have a look at this [lab exercise](/classes/ws2021/info2/labs/lab-11/).

### Part 2: StudyPartner Search State Diagram

1. Where would the concept of States be applicable in the StudyPartner Application?
2. Draw and Discuss (in the report) a State Diagramm for this Application.

## Results Submission
* Hand in a lab report (including your diagrams)
* present your lab in the following lab
More info on the [Labs](..) page.

***


State Machine Part based on Exercise04 by Prof. Dr. Debora Weber-Wulff
