---
title: 'Assignment 03 - Sequence Diagrams and State Machine Diagrams'
author: kleinen
layout: page
---



# Part 1: Sequence Diagrams

![Launch Sequence](../images/sequence.jpg)
<small class = "float-right">Pelican launch sequence. [Foto by Don McCullough ](https://www.flickr.com/photos/69214385@N04/9172233502)</small>

## Prelab


Martin Fowler's Chapter about Sequence Diagrams from the book "UML Distilled" [is available as a sample chapter online.](https://www.informit.com/articles/article.aspx?p=169507)

Read it as a preparation for the lab.

## Assignment

1. As a finger exercise for Sequence Diagrams, pick one of the following example projects from the first semester and draw a sequence diagram for the main use case:
    * The [Clock Display](https://github.com/htw-imi-info1/chapter03/tree/master/clock-display-with-GUI) / Use case:         timeTick() is called
    * [Auction](https://github.com/htw-imi-info1/chapter04/tree/master/auction) / Use case: makeABid() is called
    * [Tech Support](https://github.com/htw-imi-info1/exercise07-archived/tree/master/tech-support) / Use case: user command is         entered (start() method in SupportSystem)
    * The [Zuul Project](https://github.com/htw-imi-info1/exercise10) /         Use case: user enters command (method: play() in Game.java)

2. Now take your scenarios from [the second exercise](../lab-02-usecases-class)  and have a good look at them. There are a number of processes that you should have detailed in your scenarios - if not, now you learn how to be thorough :) You need to draw sequence diagrams for the following use cases:
    * Ordering a Pumpkin/Treat
    * one other use case of your choosing

If you feel like it, you can continue with a sequence diagram for additional use cases.


# Part 2:  State Machine Diagrams

![Machine](../images/machine.jpg "machine")
<small class = "float-right">Machine. Foto by [Jeff Kubina](/broken_link)</small>

For an introduction to state machine diagrams, see [https://www.agilemodeling.com/artifacts/stateMachineDiagram.htm](https://www.agilemodeling.com/artifacts/stateMachineDiagram.htm).

Your job in this exercise is to model all of the following systems (2 points per system for 1-3, 4 points for system 4):

1. Model the modified goat/cabbage/wolf problem: The farmer is in Schöneweide and wants to get his goat, his cabbage and his wolf over to Oberschöneweide. Only one thing can fit in his boat at a time beside himself. He cannot leave the cabbage and the goat or the goat and the wolf alone on the same side of the river, for obvious reasons. Is it possible for him to get all three possessions across the Spree? Draw a State Machine Diagram modelling both solutions to this problem.
2. Model the states an IMI student passes through from the first until the sixth semester. (Special prize for the most humorous model that is not offensive.)
3. Model the states of a parser that determines if a given string is a proper floating-point number, i.e.

        [sign] integerpart dot fractional part [E exponent]
4. Model the states a Pumpkin order in the HTW system can be in.


## Lab Report / What to turn in

As always, reflect on your process, point out who did what and of course include your diagrams and all answers to questions.

***

State Machine Part based on [Exercise04][3] by [Prof. Dr. Debora Weber-Wulff][4]

[3]: https://people.f4.htw-berlin.de/~weberwu/se/Labs/Ex4.shtml
[4]: https://www.f4.htw-berlin.de/~weberwu/
