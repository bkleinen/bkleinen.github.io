---
title: 'Exercise 02: Shapes and TicketMachine'
author: kleinen
layout: lab
---

This week's lab work is intended to acquaint you with the BlueJ environment.

## Pre-lab

#### What to Bring to Lab

Please bring these exercises printed out or written out with you to lab. Please have your name on your page.

**P1.** In the lecture we have talked about data types called int and String. Java has more predefined primitive data types. What are they? Record where you found this information.

**P2.** What are the types of the following values (constants)?
<pre>
  - 0
  - "hello"
  - 101
  - -1
  - true
  - "true"
  - "33"
  - '3'
  - 3.1415
</pre>
**P3.** Pick up a book - you should have at least one at home. Is it an object or a class? If it is a class, name some objects. If it is an object, name the class. Give your reasoning.

**P4.** What class does the following constructor belong to? How many formal parameters does it have? What are their types?

    public Book (String title, double price){ }

If you will be using your own laptop in the lab, please install [BlueJ](https://www.bluej.org/) before you come to lab. [BlueJ](https://www.bluej.org/) is available for all platforms - it's Java!

## Post-Lab, AKA What To Turn In

Your completed assignment, submitted in Moodle as a pdf,
should include:

* the names and roles of any collaborators in any parts of the exercise.
* a description of what you did during the lab, including a record of how you got BlueJ started and how you produced the pdf
* a screenshot of your scene. How did you get a screenshot produced?
* a description of what you tried with the TicketMachine and what you think is wrong with the code given.


Lab assignments are due the night before your next lab at 23.00, I want you to get some sleep the night before the next class. They may, of course, be turned in earlier. You hand them in by preparing the report in PDF and submitting it to Moodle.

## Assignment

Download the [exercise source code from GitHub][1] (you can download the whole [exercise02 repository as a zip here][2]).


2. Open up the **Figures project**. Create a circle, a triangle, and two squares. Oops, where is the second square? How can you make both visible on the screen?

3. Make all four figures have the same color. What did you have to do? Did you make any mistakes doing this?

4. Inspect your objects. What do they have in common, where do circles, triangles and squares differ? How do the two squares differ?

5. What is wrong with the following constructor?

        public TicketMachine (int ticketCost) {
          int price = ticketCost;
          balance = 0;
          total = 0;
        }

6. Open the **TicketMachine project** in BlueJ. Replace the constructor with the constructor above and try it out. Were you right? Record your results in your report.


9. (For the  bored) Can you make the TicketMachine (you'll need one that already gives a refund - e.g. the one improved in class [ticket-machine](https://github.com/htw-imi-info1/chapter02/tree/master/ticket-machine) -  give proper change using Euro coins?

## Writeup - what to put in the Lab Report

You will be doing your writeup at home or in the lab if time permits. Use the notes that you took in your logbook. Submit your writeup as your post-lab to the Moodle area.

* * *

Adapted from [https://www.f4.htw-berlin.de/~weberwu/info1/Labs/Lab0.shtml](https://www.f4.htw-berlin.de/~weberwu/info1/Labs/Lab0.shtml) , which was itself adapted from Objects First with Java, A Practical Introduction Using BlueJ. David Barnes & Michael K&ouml;lling, 2009

[1]: https://github.com/htw-imi-info1/exercise02-ws2016
[2]: https://github.com/htw-imi-info1/exercise02-ws2016/zipball/master
