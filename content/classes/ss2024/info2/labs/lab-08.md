---
title: 'Lab 08: Recursive Triangles'
author: kleinen
layout: lab
draft: false
weight: 80
source: https://github.com/htw-imi-info2/Lab08_SierpinskiTriangle
---

![Sierpinski Triangle](../images/SierpinskiTriangle.png "Sierpinski Triangle")

Source code scaffold for this exercise: {{< source >}}

## Pre-Lab

***P1.*** What exactly is an equilateral triangle? Draft a class that draws a triangle. What data do you need to know in order to put a triangle at a particular position on the screen?

***P2.*** What is the mathematical formula for finding the midpoint of a line segment that connects two Points?

***P3.*** What is the resolution of your computer screen? How can you find out? What is the largest equilateral triangle that you can show on a screen with this resolution?

***P4.*** Briefly describe what a <a href="https://en.wikipedia.org/wiki/Sierpinski_triangle">Sierpinski Triangle</a> is.

## Assignment

1. First set up a Window that can handle drawing. Get the Window to draw an equilateral triangle. You can use this scaffold: {{< source >}}.

2. Once you can draw the triangle, now draw a triangle that connects the midpoints of each of the lines. You now have 4 triangles. For each of the *three outer triangles*, recursively draw a triangle that connects the midpoints.

3. Expand your triangle drawing algorithm to draw in a specific color. Choose a different color for every level of the recursion.


## For the bored

5. Start a new drawing - you can copy the triangle package -  and draw a square in the bottom left-hand quadrant of your window. Now draw one square that is half the size on top and left-justified and one to the right of the square and bottom-justified. And for each of these half-size boxes, put two more boxes half their size on top and to the right. This is recursion - what is your measure? What is the termination condition? What is the depth of the recursion? Put a screen shot in your report!

6. Look up the [Sierpinski Carpet](ttp://en.wikipedia.org/wiki/Sierpinski_carpeth) on the Wikipedia -
 Can you fill the screen with a multicolored Sierpinski Carpet?

7. Look up some fractal algorithms - are they all recursive? Can you program any of them yourself (i.e. not using Copy & Paste on the code you find on the Internet).


## Lab Report / What to turn in

All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

Also answer the following questions in your report:
* Ex.1: What is the largest equilateral triangle you can get on the screen?
* Ex.2: How many lines of code did you write for Ex. 1 and 2?
* Ex.2: What is your termination condition, what is the measure?

{{< figure src="/images/classes/info2/sierpinsky.png" caption="Colorful Sierpinsky Triangle">}}
