---
title: 'Exercise 08: Bouncing Balls'
author: kleinen
source: https://github.com/htw-imi-info1/exercise08
bk_ok_to_publish: false
source_ok: false
solution_pushed: false
draft: true
---
<!--<span class = "attention">Not yet reviewed and published for SoSe 2021 Term!</span>-->
This week's lab work is intended give you practice working with the basic concepts of programming.

## Pre Lab

Prepare your prelab before coming to class! Doing the pre-lab will save you time during the lab.

**P0**. Download and open the [Balls project](https://github.com/htw-imi-info1/exercise08) (concerns Chapter 06 in the book). Create a BallDemo object and execute the drawDemo and bounce methods. Then read the BallDemo source code. Describe, in detail, how these methods work for your report.

**P1.** Read the documentation of the Canvas class. Then answer the following questions in writing, including fragments of Java code:

  1. How do you create a Canvas?
  2. How do you make it visible?
  3. How do you draw a line?
  4. How can you erase something?
  5. What is the difference between draw and fill?
  6. What does wait do?

# What To Hand In
Please hand in:
* zip-folder with your code.
* Your lab report as a pdf. For more Information on the report see [the Labs and Exercises page](../).


* * *

# Assignment - Bouncing Balls

0. Install the Bouncing Balls project in the lab. Experiment with canvas operations by making changes to the drawDemo method BallDemo. Draw some more lines, shapes and text. What did you find out and how? Document your experiments in your lab report.

1. Draw a frame around the canvas by drawing a rectangle 20 pixels inside the window borders. Put this functionality into a method called drawFrame in the BallDemo class.
2. Improve your `drawFrame` method to adapt automatically to the current canvas's size -that is, do not hard-code the size of the canvas into this method. To do this, you need to find out how to make use of an object of class Dimension. (Hint: check the Java documentation). Test it by manually resizing the canvas and calling drawFrame again. (Note: you don't need drawFrame to be called automatically when the canvas is resized. Also: The frame does not to resize automatically when resizing the frame! This is an optional exercise - see below.)

3. Change the method bounce to let the user choose how many balls should be bouncing. The balls should initially be placed in a row along the top of the canvas. Use a collection to store the balls so that you can deal with one, three, or 75 balls at once.  But what kind of a collection? We know about lists, maps, sets and arrays. Explain in your report why you chose the collection you did.
4. Change the method bounce to place the balls randomly anywhere in the top half of the screen.

5. (For the bored) Write a new method named boxBounce. This method draws a rectangle (the 'box') on the canvas, and one or more balls inside the box. For the balls, do not use BouncingBall, but create a new class BoxBall that moves around inside the box, bouncing off the walls of the box so that it always stays inside. The initial position and speed of the ball should be random. The boxBounce method should have a parameter that specifies how many balls are in the box.
6. (For the really bored) Give the balls in boxBounce random colors. Include a method to change the size. Make balls that get larger and smaller. Make exploding balls that produce new ones when they disappear. Or whatever catches your fancy.
