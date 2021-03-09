---
title: 'Exercise 08: Bouncing Balls'
author: kleinen
layout: lab
---
<!--<span class = "attention">Not yet reviewed and published for WS 2019/20 Term!</span>-->
This week's lab work is intended give you practice working with the basic concepts of programming.

## Pre Lab

Please bring these exercises printed out or written out with you to lab.

**P0**. Download and open the [Balls project](https://github.com/htw-imi-info1/exercise08) (Chapter 05). Create a BallDemo object and execute the drawDemo and bounce methods. Then read the BallDemo source code. Describe, in detail, how these methods work for your report.

**P1.** Read the documentation of the Canvas class. Then answer the following questions in writing, including fragments of Java code:

  1. How do you create a Canvas?
  2. How do you make it visible?
  3. How do you draw a line?
  4. How can you erase something?
  5. What is the difference between draw and fill?
  6. What does wait do?

# What To Hand In
Please hand in:
* zip-folder with your code
* lab report as pdf (max. 5 pages)

The lab report should have: 
* Answer to pre-lab question P0
* Answers to the questions from the assigment (A0, A3)
* Complete transparency on who did what
* The strategy you chose for working in a team & how it worked out *(OR if you worked alone: ) a reflection on your own working strategy*
* Details on which challenges you encountered, how you tried to solve them & their solution *(OR if you did not encounter any challenges: ) a reflection on the exercises themselves*
* A summary of what you did & learned in the lab
* For practise: A description of how you tested your solutions

Lab assignments are due the day before your next lab at 10pm.

* * *

# Assignment

# Bouncing Balls

0. Install the Bouncing Balls project in the lab. Experiment with canvas operations by making changes to the drawDemo method BallDemo. Draw some more lines, shapes and text. What did you find out and how? Document your experiments in your lab report.

1. Draw a frame around the canvas by drawing a rectangle 20 pixels inside the window borders. Put this functionality into a method called drawFrame in the BallDemo class.
2. Improve your `drawFrame` method to adapt automatically to the current canvas's size -that is, do not hard-code the size of the canvas into this method. To do this, you need to find out how to make use of an object of class Dimension. (Hint: check the API). Test it by manually resizing the canvas and calling drawFrame again. (Note: you don't need drawFrame to be called automatically when the canvas is resized. Also: The frame does not to resize automatically when resizing the frame! This is an optional exercise - see below.)

3. Change the method bounce to let the user choose how many balls should be bouncing. The balls should initially be placed in a row along the top of the canvas. Use a collection to store the balls so that you can deal with one, three, or 75 balls at once.  But what kind of a collection? We know about lists, maps, sets and arrays. Explain in your report why you chose the collection you did.
4. Change the method bounce to place the balls randomly anywhere in the top half of the screen.

5. (For the bored) Write a new method named boxBounce. This method draws a rectangle (the 'box') on the canvas, and one or more balls inside the box. For the balls, do not use BouncingBall, but create a new class BoxBall that moves around inside the box, bouncing off the walls of the box so that it always stays inside. The initial position and speed of the ball should be random. The boxBounce method should have a parameter that specifies how many balls are in the box.
6. (For the really bored) Give the balls in boxBounce random colors. Include a method to change the size. Make balls that get larger and smaller. Make exploding balls that produce new ones when they disappear. Or whatever catches your fancy.
