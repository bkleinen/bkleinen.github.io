---
title: 'Info2: Exercise 11: Finite State Automata and Sorting Algorithms'
author: kleinen
layout: lab
---

## Pre-Lab
***P1.*** Which sorting algorithms have you learned about so far? Review their algorithms. 

## Assignment

### Part 1: Finite Automata
This is to get some practice with Finite Automata.

#### A: Understand Finite Automata
The following two Finite Automata are given by their transition tables:

**Automaton A**
Start state: q0, accept state: q0

|    | 0  | 1  |
|:---|:---|:---|
| q0 | q0 | q1 |
| q1 | q2 | q3 |
| q2 | q0 | q1 |
| q3 | q2 | q3 |

**Automaton B**
Start state: q1, accept states: q2, q4

|    | 0  | 1  |
|:---|:---|:---|
| q1 | q2 | q4 |
| q2 | q1 | q3 |
| q3 | q4 | q2 |
| q4 | q3 | q1 |

1. Draw transition diagrams for all two Finite Automatas and describe the language they accept in English (or German) sentences. 
2. What are words in and not in the language? Create Simulations for both Finite Automata with fitting words as test cases. You can use [NFA1AtThirdFromLast.java](https://github.com/htw-imi-info2/Lab11_DFA/blob/master/test/examples/NFA1AtThirdFromLast.java) as an example. You find an NFA Simulator in [https://github.com/htw-imi-info2/Lab11_DFA](https://github.com/htw-imi-info2/Lab11_DFA).

#### B: Design Finite Automata
The following three Finite Automata are given by their description:

**Automaton C**: The Finite Automaton accepts all strings of 0's and 1's not containing 010 as a substring.

**Automaton D**: The Finite Automaton that accepts all strings with at most one pair of consecutive 0's and at most one pair of consecutive 1's.

**Automaton E**: The Finite Automaton that accepts the language of all Strings of 0 and 1s, that when interpreted as a binary number, are divisible by three.

2. Define the given Finite Automata and fitting test cases. Draw transition diagrams for all three Finite Automata.
3. Test your automata by using the simulator above. Again, you can use [NFA1AtThirdFromLast.java](https://github.com/htw-imi-info2/Lab11_DFA/blob/master/test/examples/NFA1AtThirdFromLast.java) as an example.

### Part 2: Sorting
4. Generate an array (on paper) containing 10 random integers between 1 and 100 and perform *manual* walkthroughs of the 5 sorting algorithms given at [https://github.com/htw-imi-info2/Lab11_Sorting](https://github.com/htw-imi-info2/Lab11_Sorting). Each persone should do at least one walkthrough. Use the exact algorithms from the repository. 

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs](https://bkleinen.github.io/classes/ss2020/info2/labs/) page.

Also answer the following questions in your report:
* Part 1, A, 1: Put the transition diagrams in your report, as well as the description of the languages
* Part 1, A, 2: Which test cases did you chose?
* Part 1, B: Put the transition diagrams in your report.
* Part 2: Each of the algorithms has a location marked with //step. In your report, note down the state of the array at this location for each time the algorithm passes this line.
