---
title: Schedule
author: kleinen
layout: schedule
---

{% include ws2015/info1.md %}

Please note that there will be no Info1 classes in the first week due to introductionary things. In the second week, there will be no lecture and lab on Tuesday due to a conference - I found no sensible time slot to move our first lab to, so we'll be starting off in the third week.

This schedule is tentative and subject to change!


| Week | Lecture | Date (Tue)      | Lecture                                                                                       | Lab (Tue)                               |
|:-----|:--------|:----------------|:----------------------------------------------------------------------------------------------|:----------------------------------------|
| 1    | 41      | Tue, 2015-10-20 | Introduction to Class                                                                         | [Lab Startup](../labs/exercise-00.html) |
|      |         | Thu, 2015-10-22 | Kara Programming: Instructions, Methods, Variables, Loops, Conditionals                       |                                         |
| 2    | 42      | Tue, 2015-10-27 | Kara Programming: Instructions, Methods, Variables, Loops, Conditionals                       | [Exercise 01](../labs/exercise-01.html) |
|      |         | Thu, 2015-10-29 | Kara Roundup, Kara and its World as Objects                                                   |                                         |
| 3    | 43      | Tue, 2015-11-03 | Objects, Classes, Methods, BlueJ, Parameters,  Compiler                                       | [Exercise 02](../labs/exercise-02.html) |
|      |         | Thu, 2015-11-05 | Class Definitions, Fields, Constructors, Methods, Parameters, Assignment, Getters and Setters |                                         |
| 4    | 44      | Tue, 2015-11-10 | Printing to the command line, Conditional, Local Variables, Expressions                       | [Exercise 03](../labs/exercise-03.html) |
|      |         | Thu, 2015-11-12 | Abstraction, Modularization, Object Interaction                                               |                                         |
| 5    | 45      | Tue, 2015-11-17 | Object Creation, Object and Class Diagrams, Primitive Types,                                  | [Exercise 04](../labs/exercise-04.html) |
|      |         | Thu, 2015-11-19 | Object Types, Multiple Constructors, Debugger                                                 |                                         |
| 6    | 46      | Tue, 2015-11-24 | Collections, Generics, for-each, While Loops                                                  | [Exercise 05](../labs/exercise-05.html) |
|      |         | Thu, 2015-11-26 | More Loops, Iterators, Arrays, For Loops,                                                     |                                         |
| 7    | 47      | Tue, 2015-12-01 | Library Classes, Reading Class Documentation, Random, Packages, Maps                          | [Exercise 06](../labs/exercise-06.html) |
|      |         | Thu, 2015-12-03 | Public vs. Private, Interfaces, Class Variables                                               |                                         |
| 8    | 48      | Tue, 2015-12-08 | Writing Class Documentation, Unit Testing, Test Automation                                    | [Exercise 07](../labs/exercise-07.html) |
|      |         | Thu, 2015-12-10 | Modularization, Interfaces, Debugging, Walkthroughs                                           |                                         |
| 9    | 49      | Tue, 2015-12-15 | Designing Classes, Coupling, Cohesion, Refactoring                                            | [Exercise 08](../labs/exercise-08.html) |
|      |         | Thu, 2015-12-17 | Refactoring                                                                                   |                                         |
| 10   | 50      | Tue, 2015-12-22 | TBD - There might be cookies.                                                                 | [Exercise 09](../labs/exercise-09.html) |
| 12   | 1       | Tue, 2016-01-05 | Welcome to the new year: Repetition                                                           |                                         |
|      |         | Thu, 2016-01-07 | Refactoring                                                                                   | [Exercise 10](../labs/exercise-10.html) |
| 13   | 2       | Tue, 2016-01-12 | Refactoring                                                                                   |                                         |
|      |         | Thu, 2016-01-14 | Using the main, Inheritance, Subtyping, Polymorphism, Protected                               | [Exercise 11](../labs/exercise-11.html) |
| 14   | 3       | Tue, 2016-01-19 | Casting, Polymorphism, Static vs. dynamic typing, Overriding, Object equality                 |                                         |
|      |         | Thu, 2016-01-21 | Abstract Classes, Abstract Methods, A word about the Exam                                     | [Exercise 12](../labs/exercise-12.html) |
| 15   | 4       | Tue, 2016-01-26 | Multiple Inheritance vs. Java Interfaces,  GUIs, AWT and Swing, Event handler                 |                                         |
|      |         | Thu, 2016-01-28 | An Example: The Image Viewer                                                                  |                                         |
| 16   | 5       | Tue, 2016-02-02 | Errors, Exceptions, Assertions                                                                |                                         |
|      |         | Thu, 2016-02-04 | File-based IO, Files                                                                          | Reflexion Ex. 12, Trial Exam            |
| 17   | 6       | Tue, 2016-02-09 | Exam Preparation                                                                              |                                         |
|      |         | Thu, 2016-02-11 | Klausureinsicht                                                                               |                                         |



{% comment %}

File, Switch, Exceptions Again
d = Date.new(2015,10,20);(1..18).to_a.collect{|i| [(d+(7*(i-1))).strftime("|#{i} | #{i+40} | %a, %Y-%m-%d |"),(d+(7*(i-1))+2).strftime("|   |    | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}

{% endcomment %}
