---
title: 'Exercise 00: Lab Startup'
author: kleinen
source: https://github.com/htw-imi-info1/kara
draft: false
---
Source code for this exercise: {{< source >}}

Welcome to the laboratory - that's what we call these rooms filled with computer equipment. We have lots of rules for the labs, as they are used by many different people during the week. You find a link to the rules ("Laborordnung") [here](https://imi-bachelor.htw-berlin.de/studium/labore/).

Two really important rules are:

- **No food.** We don't like crumbs in the keyboards. Drinks are okay if they are in a container with a screw-on lid and the lid is screwed on. No coffee cups! They get knocked over and we have to get new machines.
- **Don't change the configuration.** We don't care if you have spent half your life "optimizing" computers. We have them set up this way because that is the way we do it. It's ok to use your own laptop in the lab, we've provided extra VGA cables and Power Plugs to connect them.

If something goes wrong, don't panic. Speak with the lab leader or the lab engineer.

It is usually a good idea to save your work at regular intervals. We sometimes have issues with the power here. Then you only have what you last saved.

## Pre-Lab

Each lab assignment comes with a pre-lab section. Usually, it includes excercises and research questions that prepare you for the lab assignment.
You're expected to complete these *before* you come to the lab.

This week, you should prepare your own computer for the lab if you plan to use it during the lab. You can, of course, do that later, or switch between using your own computer and those in the lab (there's a description below on how to transfer files). *But you should not start the lab with installing software on your own computer. You will loose the opportunity to ask questions on the lab assignment this way and spend way more time trying to solve them later this way!*

### Download and Install Greenfoot and BlueJ:

* Download and install Greenfoot as described on their page: [https://www.greenfoot.org/download](https://www.greenfoot.org/download).

* Download and install BlueJ as described on the BlueJ page: https://bluej.org. You will need BlueJ starting with Lab 02.

## Assignment

This lab is all about getting you started. It will not be graded.
The main point of this assignment is to get you familiarized with the
process of working on a lab, taking relevant notes, producing a report in pdf format
and finally uploading your report to moodle to get all that out of the way for
the first real exercise.

Don't be disappointed that you only need to work on one of the kara exercises
for this lab report.
Do them all later - if you have time during the lab, or during the following days.
Make sure that you understand all of them and have at least a pseudo-code solution in
your head or better yet on paper.

### 1. Logbook

You need to get used to keeping a logbook in the lab. It can be analog (i.e. on paper) or digital. Make sure that you label and date your logbook. Keep track of everything you do in the logbook - even if you are really excited and want to keep playing. You will save time later if you can easily retrace your steps. Make a logbook for today and take notes on what we do. This will be turned in as a lab report this week.

### 2. Logging in and Getting Ready for the Exercises

0.   Now that you have your HTW username, you also have a home directory. This is where all your files can be placed. You can access it both from Windows and Linux (Ubuntu). After you have logged in, look around - where do you find a browser? How many browsers are there? How do you make a screen shot? How can you make a pdf file? Where is the Java JDK installed? Note down the path. Open up a command line and find out the active java version by typing

    > java -version

1.   [Download the Kara Scenarios][1] from github: use the "Download ZIP" button in the lower right corner if you're not familiar with git and github or use [this direct link](https://github.com/htw-imi-info1/kara/archive/refs/heads/main.zip). You will use the scenarios 01-01 through 01-08 for this lab.

2.   Read through [Worksheet 1](../../material/info1-02-worksheet-kara-1.pdf).

3.   Remember to have a logbook while working:
Note down the steps you've taken, including those that failed. Read through the whole assignment first, before starting to work.

### 3. Examine Greenfoot

0.   Open one of the scenarios you downloaded.

1.   Examine the Greenfoot environment. Right-Click on every object/actor in the World and the World and Actor
classes on the right hand side. How can you call the Kara actions and sensors directly? What happens if you
call a sensor directly? How do you find out the current state of Kara apart from looking at the screen?
How are the directions stored, e.g. if Kara faces upwards?

2.   How do you change the World (e.g. add a mushroom) and save the changed World such that your changes are still there after a click on the reset or compile buttons?

If you want/need to read more about Greenfoot Kara, you find a detailed tutorial [here](https://code.makery.ch/library/greenfoot-kara/) - it's also available [in german](https://code.makery.ch/library/greenfoot-kara/de/). NB: this tutorial contains the solutions for the assignments. Only use them after you've tried to solve it on your own. They might be slightly different though, as the worksheet was based on an older version of the tutorial.

### 4. Solve one of the exercises.

Pick one exercise from the worksheet and solve it.
   How can the task be decomposed into single steps (calls to the act-method)?
   That is, make use of the run-loop in Greenfoot -
   think carefully about what should be achieved by each step.
        Where should Kara be positioned after each step such that the next step can follow?
   For example, the walk-in-a-square exercise can be solved
   by four times walking an edge, thus, each call to the act()-method should make Kara walk only one edge.

Make use of ```Greenfoot.stop()``` or the method ```stopAfterStep(n)``` if you simply want the act-method execute 4 times if you press "run", for example:
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


### 5. Logging Out

When it comes time to log out, _be very careful._ Computers can be very fussy about this.
Think of it as a friend who will be insulted if you do not properly say goodbye.
The proper way is to click on the icon that looks like a power button and select "Benutzer
abmelden" or to click on the Start button (yes, Windows is a bit strange). You might be asked if you want to remember what you were doing, you can choose to do this, or not. Try out both sometime. This is also a choice "herunterfahren". Selecting this is the one and only way to safely prepare the machine for powering down.
**Never** power down the machine without doing this first. Once you have logged out, please turn the machine and screen off if they didn't shut off automatically, **put your chair back under the table, and clean up any garbage that may have accumulated.**

### 6. Writeup - The Lab Report

You will be doing your writeup at ***home*** (or at least after finishing the assignment in the lab).
If you do not have a computer at home, you can use the lab computers during times when there is no
class. Hmm, you saved some information on your login area on the school server,
can you access this from home? Yes! Your home directory is on the HTW Cloud Server
(https://webdrive.htw-berlin.de/login). You will need to login to the Cloud Server with your FB 4
login to see your files.

Submit your writeup, explaining what you did and what you learned, as your Lab Report to the Moodle area, as a practice - it will not be graded.

Make sure to include your names at the top of your report.

## For the Bored

Work through [Worksheet 2](../../material/info1-04-worksheet-kara-2.pdf).

This first lab is really about getting started, getting to know the infrastructure
and make sure that you are able to work on the first exercise next week.
If all this is quite easy for you, you might want to start working on next week's exercise.

 [1]: https://github.com/htw-imi-info1/kara
