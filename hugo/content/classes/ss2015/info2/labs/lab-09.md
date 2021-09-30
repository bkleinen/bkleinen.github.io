---
title: 'Info2: Exercise 09: Probabilistic Algorithms'
author: kleinen
layout: lab
---
## Pre-Lab
1. How do you compute the area of a circle and a rectangle?
2. Draw an circle that matches exactly into a square. How do the areas of the
circle and the square relate to each other?
3. How can you represent points in a plane?
4. Prepare a sketch with formulas about the ratio of the areas and how to determine
if a given point in the square is as well within the circle.


## Assignment

### Computation of Pi
Use an probabilistic algorithm to approximate the Number Pi:

1. create a method computePi that takes an integer parameter for the number of
random points to consider.
2. create a method that creates a random point within the square bounds.
3. for each point, determine wether it is also within the circle - create a third
method for that.
4. the ratio of points within the circle to the whole number of points within the
square approximates the ratio of the areas. Use it to approximate Pi.
5. make a statistic about how many accurate digits of Pi you get for how many
random points.

### Dining Philosophers
1. Using threads, create a simple Simulation for the Dining Philosophers Problem.
2. For each Philosopher, create a Thread within this Philosopher dines. The implementation
should just create some outputs like:

        Philosopher 1 takes his right fork.
        Philosopher 1 takes his left fork.
        Philosopher 1 eats.
        Philosopher 1 puts down his right fork.
        Philosopher 1 puts down his left fork.

  or

        Philosopher 1 takes his right fork.
        Philosopher 1 waits for left fork.

3. Provide several implementations with a sensible way to switch between them;
at least one blocking one and one using a probabilistic solution to avoid the
deadlock.


## Lab Report / What to turn in


Your report is due the day before your next lab (for exact times, please refer to moodle).

Submit a Report in PDF Format and the Source Code as Zipped file.

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.
Both of you need to upload the same report in PDF format to Moodle before the
deadline.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.
