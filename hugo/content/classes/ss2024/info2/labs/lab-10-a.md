---
title: 'Info2: Exercise 09: Probabilistic Algorithms'
author: kleinen
layout: lab
draft: true
weight: 10000
---

## Pre-Lab
***P1.*** How do you compute the area of a circle and a rectangle?

***P2.*** Draw an circle that matches exactly into a square. How do the areas of the
circle and the square relate to each other?

***P3.*** How can you represent points in a plane?

***P4.*** Prepare a sketch with formulas about the ratio of the areas and how to determine
if a given point in the square is as well within the circle.

## Assignment

### Part I: Computation of Pi
Use an probabilistic algorithm to approximate the Number Pi:
1. prepare a method computePi that takes an integer parameter for the number of
random points to consider.
2. create a method that creates a random point within the square bounds.
3. for each point, determine wether it is also within the circle - create a third
method for that.
4. complete your method computePi: calculate the ratio of points within the circle to the whole number of points within the
square approximates the ratio of the areas. Use it to approximate Pi.
5. make a statistic about how many accurate digits of Pi you get for how many
random points.

### Part II: Dining Philosophers
Using Threads, create a simple simulation for the Dining Philosophers Problem:
1. For each Philosopher, create a Thread within this Philosopher dines. The implementation
should just create some outputs like:
    ```
        Philosopher 1 takes his right fork.
        Philosopher 1 takes his left fork.
        Philosopher 1 eats.
        Philosopher 1 puts down his right fork.
        Philosopher 1 puts down his left fork.
              ...or...
        Philosopher 1 takes his right fork.
        Philosopher 1 waits for left fork.
    ```
2. Test your implementation to find out whether it could lead to a deadlock.
3. Provide more implementations with a sensible way to switch between them;
at least one creating a deadlock and one using a probabilistic solution to avoid the
deadlock.

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

Also answer the following questions in your report:
* Part I, Ex. 5: How many accurate digits of Pi you get for how many random points? Report your statistic.
* Part II, Ex. 2: Can your current implementation lead to a deadlock? Why?
