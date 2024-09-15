---
title: 'Old Exercise 01: Programming Kara'
author: kleinen
source: https://github.com/htw-imi-info1/exercise01-kara
draft: true
---

Source code for this exercise: {{< source >}}

## Pre-Lab
Each lab assignment comes with a pre-lab section. Usually, it includes excercises and research questions that prepare you for the lab assignment.
You're expected to complete these *before* you come to the lab.

1.   [Download the Scenarios][1] and read through the Kara programming exercises in the assignment.
2.   Write down how Kara could solve the task for each one of them. For example, if the programming exercise was Exercise 4 from [Worksheet 1](../../material/info1-02-worksheet-kara-1.pdf), where Kara was to move in a Square and drop a leaf in each corner, you could write down something as this:

         1.  walk one edge (call move n times),
         2.  drop a leaf
         3.  turn right
         4.  repeat 4 times from step 1

5. Make use of Greenfoots act()-loop - split the problem into repeating steps, and the position that Kara should be in after this step. In the example above, each call to the act() method should make kara walk one side, having her face in the direction of the next side at the end of each step.
4. When designing the algorithms, think of useful methods that help you/make your tasks easier and name them/use them in your algorithm description.

## Assignment

[Download the scenarios for these exercises][1] if you haven't already done so for the prelab.
Solve all Programming Exercises using the according scenarios, and upload the all scenarios as a zip file.

### Hints

For all problems, make sure to extract methods where appropriate to make the source code more readable.

Most of the problems here are extensions of problems we've already solved in class / within the two worksheets.
So it's usually a good idea to first identify a similar problem we've done in class
and modify the solution we did there.
So get out your [Worksheet 2](../../material/info1-04-worksheet-kara-2.pdf) and compare!
Note that the solutions are also available:
[https://github.com/htw-imi-info1/kara/tree/public-solution](https://github.com/htw-imi-info1/kara/tree/public-solution)
And here's a link to the branch containing the exercises we did in class: [branch ss2022](https://github.com/htw-imi-info1/kara/tree/ss2022)

### 1. Count leaves laid
(lab01_kara01): Using an integer variable, make Kara lay down 10 leaves in the middle lane.

| Scenario after program was run                       |
|:-----------------------------------------------------|
| ![10 Leaves](../images/kara/kara-exercise-01-01.jpg) |


### 2.  Kara in the Tunnel
(lab01_kara02): Kara is afraid of Tunnels. When entering the tunnel, Kara is scared and drops one leaf; then she walks through the tunnel (without dropping further leaves) and immediately stops after leaving the tunnel. Note that &#8220;in the tunnel&#8221; means that there is a tree on both sides, not just on one. Provide a general solution and Test it with both Worlds in the scenario.

|       |                                                       |
|:------|:------------------------------------------------------|
| Start | ![Start](../images/kara/kara-exercise01-02-start.jpg) |
| End   | ![End](../images/kara/kara-exercise01-02-end.jpg)     |

### 3.  Leaves in the forest I
(lab01_kara03): Building on Exercise 7 of Worksheet 1, where Kara looks for a leaf in front of him, modify the algorithm to make her able to walk around 2 or more trees in a row.

| Scenario                                               |
|:-------------------------------------------------------|
| ![Forest](../images/kara/kara-exercise01-03-start.jpg) |

### 4.  Leaves in the forest II

(lab01_kara04): In this forest, each field has exactly two neighboring free fields, one of them behind Kara, and the other one either to the left, in front or on the right. Make Kara move through the forest and find the leaf.

| Scenario                                               |
|:-------------------------------------------------------|
| ![Forest](../images/kara/kara-exercise01-04-start.jpg) |

### 5.  Picture Inversion
(lab01_kara05) Program Kara such that it will create an &#8220;inverse picture&#8221; within a tree rectangle. E.g. starting as in KaraWorld05, as in the first picture, the picture should look like the second picture after the program has run.

| Before                                                | After                                               |
|:------------------------------------------------------|:----------------------------------------------------|
| ![Start](../images/kara/kara-exercise01-07-start.jpg) | ![End](../images/kara/kara-exercise01-inverted.jpg) |

<br><small class = "float-right">Start Image</small>
<small class = "float-right">End Image</small>

### 6.  Draw a Spiral
(moved to lab 04)
 (lab01_kara06) Draw a Spiral like the one shown in the picture.
![spiral](../images/kara/kara-exercise01-spiral.jpg)


### 7. (for the bored:) Make Kara add two numbers in binary format.
For the bored exercises are optional!
 In lab01_kara07 the world creates two random 8-bit binary numbers, a leaf means 1, no leaf means 0. Make Kara add them up using place value and carrying, which is basically the same as [adding up decimal numbers using place value and carrying](https://www.khanacademy.org/math/4th-engage-ny/engage-4th-module-1/4th-module-1-topic-d/v/carrying-when-adding-three-digit-numbers). [Here's an explanation how to do it for binary numbers.](https://www.wikihow.com/Add-Binary-Numbers#Addingbinary_Numbers_Using_Place_Value_sub)

 ![Result](../images/kara/kara-exercise01-07-before.jpg)<small class = "float-right">Start Image</small>

![Result](../images/kara/kara-exercise01-07-after.jpg)
<small class = "float-right">Result</small>

## Post-Lab, AKA What to Turn In

Please upload 2 Files to Moodle:

1.  A PDF with your Lab Report, containing your answers to the Pre-Lab. You can order them as you like, e.g.
    combine the algorithm sketched in the prelab with the algorithm that actually worked in the lab rather than having a section "prelab" and "lab report".
2.  The Scenario with your solutions in each Kara&#8217;s act method as a ZIP file.

Read the info on the [Lab Index](../) page again if you're unsure about the nature of the lab reports - or simply ask!

 [1]: https://github.com/htw-imi-info1/exercise01-kara

## Links to the Worksheets

 * [Worksheet 1](../../material/info1-02-worksheet-kara-1.pdf)
 * [Worksheet 2](../../material/info1-04-worksheet-kara-2.pdf)
