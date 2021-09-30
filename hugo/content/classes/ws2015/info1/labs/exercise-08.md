---
title: 'Exercise 08: Bouncing Balls'
author: kleinen
layout: lab
---


This week's lab work is intended give you practice working with the basic concepts of programming.

## What to Bring to Lab

Please bring these exercises printed out or written out with you to lab.

**P1**. Download and open the [Balls project](https://github.com/htw-imi-info1/exercise08) (Chapter 05). Create a BallDemo object and execute the drawDemo and bounce methods. Then read the BallDemo source code. Describe, in detail, how these methods work for your report.

**P2.** Read the documentation of the Canvas class. Then answer the following questions in writing, including fragments of Java code:

  1. How do you create a Canvas?
  2. How do you make it visible?
  3. How do you draw a line?
  4. How can you erase something?
  5. What is the difference between draw and fill?
  6. What does wait do?

# Post-Lab, AKA  What To Turn In

Your completed assignment, submitted in Moodle as a pdf, should include:

- A description of what you did during the lab, including a record of what worked, what problems you encountered, and answers to the questions asked in P1 and P2. The focus is on the process!
- Include the final version of the source code.** (As a zip)
**
- The names and roles of any collaborators in any parts of the exercise.
- A record of how long you needed for this lab and what you learned.

Lab assignments are due before your next lab at 23.00. They may, of course, be turned in earlier. You hand them in by preparing the report in PDF and Zipping the source code and submitting it to Moodle.

As always, you can and should work on the exercise in small teams of 2-3, definitely not more than 4 people. Prepare the report together, and each of you hands in **the same report** and in moodle, stating the name of every member of the team somewhere in the beginning of the report.

* * *

# Assignment

# Bouncing Balls

1. Install the project in the lab. Experiment with canvas operations by making changes to the drawDemo method BallDemo. Draw some more lines, shapes and text.
2. Draw a frame around the canvas by drawing a rectangle 20 pixels inside the window borders. Put this functionality into a method called drawFrame in the BallDemo class.
3. Improve your `drawFrame` method to adapt automatically to the current canvas's size (that is, do not hard-code the size of the canvas into this method. To do this, you need to find out how to make use of an object of class Dimension. (Hint: check the API) Test it by manually resizing the canvas and calling drawFrame again.
4. Change the method bounce to let the user choose how many balls should be bouncing. Use a collection to store the balls so that you can deal with one, three, or 75 balls at once. The balls should initially be placed in a row along the top of the canvas. But what kind of a collection? We know about ArrayList, HashMap, and HashSet. Explain in your report why you chose the collection you did.
5. Change the method bounce to place the balls randomly anywhere in the top half of the screen.
6. (For the bored) Write a new method named boxBounce. This method draws a rectangle (the 'box') on the canvas, and one or more balls inside the box. For the balls, do not use BouncingBall, but create a new class BoxBall that moves around inside the box, bouncing off the walls of the box so that it always stays inside. The initial position and speed of the ball should be random. The boxBounce method should have a parameter that specifies how many balls are in the box.
7. (For the really bored) Give the balls in boxBounce random colors. Include a method to change the size. Make balls that get larger and smaller. Make exploding balls that produce new ones when they disappear. Or whatever catches your fancy.

#Writeup
Submit your writeup as your post-lab to the Moodle area.
