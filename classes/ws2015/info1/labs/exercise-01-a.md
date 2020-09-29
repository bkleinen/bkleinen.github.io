---
title: 'Exercise 01: Programming Kara - First Steps'
author: kleinen
layout: lab
---
## Pre-Lab

1.   [Download the Kara Scenarios][1] from github: use the "Download ZIP" button in the lower right corner if you're not familiar with git and github or use [this direct link](https://github.com/htw-imi-info1/kara/archive/ws2015.zip). You will use the scenarios 01-01 through 01-08 for this lab.
2.   Read through [Worksheet 1](../material/info1-02-worksheet-kara1.pdf)

## Assignment

We've already started working on Worksheet 1 in class. Remember to have a logbook as in the previous exercise:
Note down the steps you've taken, including those that failed. Read through the whole assignment first, before starting to work.

If you want/need to read more about Greenfoot Kara, you find a detailed tutorial [here](https://code.makery.ch/library/greenfoot-kara/)
- it's also available [in german](https://code.makery.ch/library/greenfoot-kara/de/). NB: this tutorial contains the solutions for the
assignments. Only use them after you've tried to solve it on your own. They might be slightly different though, as the worksheet was based on
an older version of the tutorial.

1. Examine the Greenfoot environment. Right-Click on every object/actor in the World and the World and Actor
   classes on the right hand side. How can you call the Kara actions and sensors directly? What happens if you
   call a sensor directly? How do you find out the actual state of Kara apart from looking at the screen?
   How are the directions stored, e.g. if Kara faces upwards?
2. How do you change the World (e.g. add a mushroom) and save the changed World such that your changes are still there after a click
    on the reset or compile buttons?   
3. Solve every exercise on the worksheet.
   How can the task be decomposed into single steps (calls to the act-method)?
   That is, make use of the run-loop in Greenfoot -
   think carefully about what should be achieved by each step.
   For example, the walk-in-a-square exercise can be solved
   by four times walking an edge, thus, each call to the act()-method should make Kara walk only one edge. In
   which direction should Kara face after each step? Make use of ```Greenfoot.stop()``` or the method ```stopAfterStep(n)``` if you simply
   want the act-method execute 4 times if you press "run", for example:

   ```java
   public void act()
       {  
           move();
           stopAfterStep(4);
       }
   ```

For example, to simply move until you encounter a leaf:

   ```java
   public void act()
       {  
           // you might want to do something else in each step ...
           move();
           if (onLeaf()){
              Greenfoot.stop();
           }  
       }
   ```

### For the bored
Some of you will already have some programming experience, and be a bit bored by the assignment above. Thus, most assignments will contain
one or more exercises "for the bored". These are optional; you don't have to do them to get all stars! If you decide to do them, however,
you can skim your report on the other parts as seems appropriate and concentrate on the parts that you hopefully found less boring.

5. For the bored: Can you make sure that the act() method is only called n times by "run" without using the provided ```stopAfterStep(n)``` method?
   Can you write your own ```stopAfterStep(n)``` method?

5. For the bored: Try to find more elegant/readable solutions for the tasks above, by declaring methods that make the act method more readable,
   as we did by defining a method for walking around a tree.
5. You could also just start working on next week's exercise (which should be documented in next weeks report).



## Post-Lab, AKA What to Turn In

The main part of your assignment is your written report. Usually, while grading, we will not look at your source code! Note down what you did, what worked and
what didn't work, and how long you worked on the whole assignment. Also note down the sources you used and if you worked together with class-mates.

Think of the report as something that makes it easy for you or someone else to recap what you actually needed to do to make it work, and not
run into the same dead-ends as you did.

Please upload 2 Files to Moodle:

1.  A PDF with your Lab Report.
2.  A Zip file containing the Scenarios you've worked on.


Read the info on the [Lab Index](../) page again if you're unsure about the nature of the lab reports - or simply ask!

 [1]: https://github.com/htw-imi-info1/kara
