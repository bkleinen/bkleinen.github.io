---
title: 'Info2: Exercise 11: Finite State Automata and Sorting Algorithms'
author: kleinen
layout: lab
---
## Pre-Lab

No Pre-Lab this time.

## Assignment

### Part 1: Finite Automata
This is to get some practice with Finite Automata.

#### Which Languages do these Automata accept?

For the following two Finite Automata given by their transition tables, draw the transition diagram and describe the language they accept in English (or German) sentences.
Give examples for words in and not in the language.

You find a NFA Simulator in [https://github.com/htw-imi-info2/Lab11_DFA](https://github.com/htw-imi-info2/Lab11_DFA).
Create Simulations for them with test cases from the words you found.  You can use [NFA1AtThirdFromLast.java](https://github.com/htw-imi-info2/Lab11_DFA/blob/master/test/examples/NFA1AtThirdFromLast.java) as an example.

##### Automaton A

Start state: q0, accept state: q0

|    | 0  | 1  |
|:---|:---|:---|
| q0 | q0 | q1 |
| q1 | q2 | q3 |
| q2 | q0 | q1 |
| q3 | q2 | q3 |

##### Automaton B
Start state: q1, accept states: q2, q4

|    | 0  | 1  |
|:---|:---|:---|
| q1 | q2 | q4 |
| q2 | q1 | q3 |
| q3 | q4 | q2 |
| q4 | q3 | q1 |

#### Design Finite Automata

Give transition diagrams for the following three Finite Automata, define testcases and test your automata by using the simulator above.
Again, you can use [NFA1AtThirdFromLast.java](https://github.com/htw-imi-info2/Lab11_DFA/blob/master/test/examples/NFA1AtThirdFromLast.java) as an example.

3. Design a Finite Automaton that accepts all strings of 0's and 1's not containing 010 as a substring.
2. Design a Finite Automaton that accepts all strings with at most one pair of consecutive 0's and at most one pair of consecutive 1's.
1. Design a Finite Automaton that accepts the language of all Strings of 0 and 1s, that when interpreted as a binary number, are divisible by three.


### Part 2: Sorting

Generate an array containing 10 random integers between 1 and 100 and perform manual walkthroughs for 3 out of the 5 given sorting algorithms per person.
Try to cover as many sorting algorithms as possible within your teams.

Use the exact algorithms from this repository: [https://github.com/htw-imi-info2/Lab11_Sorting](https://github.com/htw-imi-info2/Lab11_Sorting)
Each of them has a location marked with //step. Note down the state of the array at this location for each time the algorithm passes this line.


## Lab Report / What to turn in

Your report is due the day before your next lab (for exact times, please refer to moodle).

Submit a Report in PDF Format and the Source Code (of the FA Simulations) as a zipped file.

Please report in your report how long you worked on each exercise.
