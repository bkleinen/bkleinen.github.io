---
title: 'Exercise 04: Rock around the Clock'
author: kleinen
layout: lab
---

[![Clock](../../images/clock-stockholm-6085686394-320.jpg)](https://www.flickr.com/photos/arjanrichter/6085686394)
<small class = "float-right">Katarina Elevator in Stockholm, Foto by [Arjan Richter](https://www.flickr.com/photos/arjanrichter/6085686394)</small>

This week's lab work is intended to get you to implement parts of a class that is given for you. You are also to begin to see the idea of modularization, that is, splitting up code into classes.

## Pre-lab

<span class = "attention">
As I've seen too many people working on the pre-lab during lab time,
I will be more strict with it from now on.
</span>

<span class = "attention">
**Do** prepare your Pre-Lab **before** the lab, in hand-writing, on paper.
There is no need to print out the whole exercise if you don't want to,
you can just use a plain sheet and write down your answers to P1-P5 on it.
</span>

<span class = "attention">
I will ask you to show your pre-lab to me at the beginning of the lab.
</span>

For the Tuesday group: we will be talking about boolean expressions in class on Tuesday. Therefore, I will set some time apart to let you work on the prelab in class as an exercise; you may however if you haven't already done so for programming Kara do some reading about boolean expressions and prepare it before or at least give it a first try:
https://en.wikibooks.org/wiki/Java_Programming/Boolean_expressions

P5 however can be done without knowing anything about boolean expressions!

**P1.** Which of the following expressions returns true? After writing your answers on paper, open the CodePad in BlueJ and try it out.

| Expression | Your Answer | Actual Value |
| --- |--- |--- |
| ! (4 < 5) | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| ! false |
| (2>2) |
| ((4==4) && (1<0)) |
| (2>2) |
| (4==4) && (1<0) |
| (34 != 33) && !false |
| (43 < 42) && (rabbitCount > dogCount) |
| test = (3 < 4) |

**P2.** Write an expression using boolean variables a and b that evaluates to true when either a and b are both true or both false.

**P3.** Write an expression using boolean variables a and b that evaluates to true when only one of a and b is true, and which is false if a and b are both true or both false. This is called the _exclusive-or_.

**P4.** Consider the expression (a && b). Write an equivalent expression (one that evaluates to true at exactly the same values for a and b) without using the && operator.

**P5.** Americans are kind of strange about numbers and units. They write the days backwards, they use pounds and inches instead of kilograms and centimeters, and they have this bizarre 12-hour clock they use with "am" and "pm".

* What time is "12 am" on the German (24-hour) clock?
* What time is "12 pm"?
* What time is "3 am"?
* What time is "5.30 pm"?


## Post-Lab, AKA What To Turn In

Your completed assignment, submitted in Moodle as a pdf, and a separate zip of the BlueJ project should include:

- a description of what you did during the lab, including a record of what worked, what problems you encountered.

- The discussion of which version was better, 1 or 2.

- the names and roles of any collaborators in any parts of the exercise.

- A brief summary of what you learned

- A record of how long you needed for this lab

- a copy of the final version of your ClockDisplay code (not in the pdf, in a separate zip file)

**You can work on this exercise in groups of up to 3 people. Put all your names on the head of the report and in the author's comment of the Source Code and all hand in the same files.**

Lab assignments are due before your next lab at 23.00. They may, of course, be turned in earlier. You hand them in by preparing the report in PDF and Source Code as zipped Bluej-Projekt and submitting it to Moodle.
* * *

# Assignment
Source Code for this exercise:  [https://github.com/htw-imi-info1/exercise04-ws2016](https://github.com/htw-imi-info1/exercise04-ws2016)

**Clock time**

1. Adapt the clock-display to display the time American-style (i.e. 12-hour clock and am / pm). You will have to include the am/pm in the time!
2. There are at least two ways in which you could have implemented exercise 1 - one keeps the time internally as a 24-hour clock and adapts the output, the other keeps the time internally as it is displayed. Whichever way you chose for exercise 1, implement the other in a new java class. Which one was better? Why?
3. Make your clock into an alarm clock by adding an alarm. You should be able to set the alarm time and turn the alarm on and off. When the clock reaches the alarm time, it should ring - writing "Riiiiiiiing!" to the terminal is sufficient.
4. (For the bored) Research Threads and make the clock increment automatically every second.
5. (Kara Special) Open the kara-communicating project in Greenfoot. There are two Karas in the World, a MasterKara and a SlaveKara, which can communicate with each other as the MasterKara has a reference to the SlaveKara. Implement the copyRow method: MasterKara should move along a row to the left, have SlaveKara mirror its moves to the right, and have SlaveKara put down a leaf every time MasterKara encounters one.

