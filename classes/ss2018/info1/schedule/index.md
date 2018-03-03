---
title: Schedule
author: kleinen
layout: default
wide_layout: true
---


This schedule is tentative and subject to change.



{% comment %}

require 'date'
# this skeeps week x
x = 12;day_diff=1;d = Date.new(2018,4,3);(1..16).to_a.collect{|i|  a = i<x ? (7*(i-1)) : (7*i) ; dw = d+a; [dw.strftime("|#{i} | #{dw.cweek} | %a, %Y-%m-%d |"),(dw+day_diff).strftime("|   |    | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}

day_diff=1;d = Date.new(2018,4,3);(1..16).to_a.collect{|i|  a =  (7*(i-1))  ; dw = d+a; [dw.strftime("|#{i} | #{dw.cweek} | %a, %Y-%m-%d |"),(dw+day_diff).strftime("|   |    | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}

{% endcomment %}

| Week | KW | Date            | Lecture                                                                                                     | Chapter | Lab                                |
|:-----|:---|:----------------|:------------------------------------------------------------------------------------------------------------|:--------|:-----------------------------------|
| 1    | 14 | Tue, 2018-04-03 | no class                                                                                                    |         | still have Kara - will be changed  |
|      |    | Wed, 2018-04-04 | no class                                                                                                    |         |                                    |
| 2    | 15 | Tue, 2018-04-10 | Introduction to Class                                                                                       |         | [Lab Startup](../labs/exercise-00) |
|      |    | Wed, 2018-04-11 | Objects, Classes, Methods, BlueJ, Parameters,  Compiler                                                     | 1       |                                    |
| 3    | 16 | Tue, 2018-04-17 | Class Definitions, Fields, Constructors, Methods, Parameters, Assignment, Getters and Setter                | 2       | [Exercise 01](../labs/exercise-01) |
|      |    | Wed, 2018-04-18 | Printing to the command line, Conditional, Local Variables,Expressions                                      | 2       |                                    |
| 4    | 17 | Tue, 2018-04-24 | Abstraction, Modularization, Object Interaction                                                             | 3       | [Exercise 02](../labs/exercise-02) |
|      |    | Wed, 2018-04-25 | Object Creation, Object and Class Diagrams, Primitive Types,  Object Types, Multiple Constructors, Debugger | 3       |                                    |
| 5    | 18 | Tue, 2018-05-01 | ---- no class -----                                                                                         |         | [Exercise 03](../labs/exercise-03) |
|      |    | Wed, 2018-05-02 | Collections, Generics, for-each, While Loops                                                                | 4       |                                    |
| 6    | 19 | Tue, 2018-05-08 | More Loops, Iterators, Arrays, For Loops                                                                    | 4       | -- no labs --                      |
|      |    | Wed, 2018-05-09 | Lambda Functions and Streams                                                                                | 5       |                                    |
| 7    | 20 | Tue, 2018-05-15 | Lambda Functions, Filter, Map, Reduce                                                                       | 5       | [Exercise 04](../labs/exercise-04) |
|      |    | Wed, 2018-05-16 | Library Classes, Reading Class Documentation, Random, Packages, Maps                                        | 6       |                                    |
| 8    | 21 | Tue, 2018-05-22 | Public vs. Private, Interfaces, Class Variables, Writing Class Documentation                                | 6       | [Exercise 05](../labs/exercise-05) |
|      |    | Wed, 2018-05-23 | Arrays                                                                                                      | 7       |                                    |
| 9    | 22 | Tue, 2018-05-29 | Unit Testing, Test Automation                                                                               | 9       | [Exercise 06](../labs/exercise-06) |
|      |    | Wed, 2018-05-30 | Modularization, Interfaces, Debugging, Walkthroughs,  Testing and Interfaces                                | 9       |                                    |
| 10   | 23 | Tue, 2018-06-05 | Designing Classes, Coupling, Cohesion, Refactoring                                                          | 8       | [Exercise 07](../labs/exercise-07) |
|      |    | Wed, 2018-06-06 | Refactoring                                                                                                 | 8       |                                    |
| 11   | 24 | Tue, 2018-06-12 | Refactoring, Using the main method                                                                          | 8       | [Exercise 08](../labs/exercise-08) |
|      |    | Wed, 2018-06-13 | Inheritance, Subtyping, Polymorphism, Protected, Casting                                                    | 10      |                                    |
| 12   | 25 | Tue, 2018-06-12 | Polymorphism, Static vs. dynamic typing, Overriding, Object equality                                        | 11      | [Exercise 09](../labs/exercise-09) |
|      |    | Wed, 2018-06-13 | Abstract Classes, Interfaces                                                                                | 12      |                                    |
| 13   | 26 | Tue, 2018-06-26 | Graphical User Interfaces                                                                                   | 13      | [Exercise 10](../labs/exercise-10) |
|      |    | Wed, 2018-06-27 | Graphical User Interfaces                                                                                   | 13      |                                    |
| 14   | 27 | Tue, 2018-07-03 | Handling Errors, Exceptions, Assertions,                                                                    | 14      | [Exercise 11](../labs/exercise-11) |
|      |    | Wed, 2018-07-04 | File-based IO, Files, Command Line                                                                          | 14      |                                    |
| 15   | 28 | Tue, 2018-07-10 | --------------------------- Start of the exam period    ---------------------------                         |         | [Exercise 12](../labs/exercise-12) |
|      |    | Wed, 2018-07-11 |                                                                                                             |         |                                    |
| 16   | 29 | Tue, 2018-07-17 |                                                                                                             |         | reports due                        |
|      |    | Wed, 2018-07-18 |                                                                                                             |         |                                    |
|      | 30 | Tue, 2018-07-24 |                                                                                                             |         |                                    |
|      |    | Wed, 2018-07-25 |                                                                                                             |         |                                    |



 Exam Preparation - [Terms](https://github.com/bkleinen/bkleinen.github.io/wiki/Info1) (also in Moodle)
