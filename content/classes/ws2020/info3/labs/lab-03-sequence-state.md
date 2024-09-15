---
title: 'Assignment 03 - Sequence Diagrams and State Machine Diagrams'
author: kleinen
layout: page
---

![Launch Sequence](../images/sequence.jpg)
<small class = "float-right">Pelican launch sequence. [Foto by Don McCullough ](https://www.flickr.com/photos/69214385@N04/9172233502)</small>

## Pre-Lab
* Read Martin Fowler's Chapter about Sequence Diagrams from the book "UML Distilled" [is available as a sample chapter online.](https://www.informit.com/articles/article.aspx?p=169507)
* For an introduction to state machine diagrams, see [https://www.agilemodeling.com/artifacts/stateMachineDiagram.htm](https://www.agilemodeling.com/artifacts/stateMachineDiagram.htm).

## Assignment
### Part 1: Sequence Diagrams
1. As a finger exercise for Sequence Diagrams, pick one of the following example projects from the first semester and draw a sequence diagram for the main use case:
    * The [Clock Display](https://github.com/htw-imi-info1/chapter03/tree/master/clock-display-with-GUI) / Use case: timeTick() is called
    * [Tech Support](https://github.com/htw-imi-info1/exercise07-archived/tree/master/tech-support) / Use case: user command is entered (start() method in SupportSystem)
    * The [Zuul Project](https://github.com/htw-imi-info1/exercise10) /  Use case: user enters command (method: play() in Game.java)
2. Take your scenarios from [the second exercise](../lab-02-usecases-class) and have a good look at them. There are a number of processes that you should have detailed in your scenarios - if not, now you learn how to be thorough :) You need to draw sequence diagrams for the following use cases:
    * Ordering a Pumpkin/Treat
    * one other use case of your choosing

If you feel like it, you can continue with a sequence diagram for additional use cases.

### Part 2: State Machine Diagrams
3. Model the modified goat/cabbage/wolf problem: The farmer is in Schöneweide and wants to get his goat, his cabbage and his wolf over to Oberschöneweide. Only one thing can fit in his boat at a time beside himself. He cannot leave the cabbage and the goat or the goat and the wolf alone on the same side of the river, for obvious reasons. Is it possible for him to get all three possessions across the Spree? Draw a State Machine Diagram modelling both solutions to this problem.
4. Model the states an IMI student passes through from the first until the sixth semester. (Glory for the most humorous model that is not offensive.)
5. Model the states of a parser that determines if a given string is a proper floating-point number, i.e. `[sign] integerpart dot fractional part [E exponent]`
6. Model the states a Pumpkin order in the HTW system can be in.

## Results Submission
* Hand in a lab report (including your diagrams)
* Take part in the oral test on Nov. 26 2020
More info on the [Labs](..) page.

***

State Machine Part based on [Exercise04][3] by [Prof. Dr. Debora Weber-Wulff][4]

[3]: https://people.f4.htw-berlin.de/~weberwu/se/Labs/Ex4.shtml
[4]: https://www.f4.htw-berlin.de/~weberwu/
