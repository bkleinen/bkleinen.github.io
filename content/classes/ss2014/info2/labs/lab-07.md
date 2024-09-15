---
title: 'Info2: Exercise 07: Recursive Triangles'
author: kleinen
layout: lab
---

![Machine](../images/SierpinskiTriangle.png "Sierpinski Triangle")

## Pre-Lab

* What exactly is an equilateral
  triangle? Can you write a class that draws a triangle? What data do you need to know in order to put a triangle at a particular position on the screen?

* What is the mathematical formula for finding the midpoint of a line segment that connects two Points?
* What is the resolution of your computer screen? How can you find out? What is the largest equilateral triangle that you can show on a screen with this resolution?
* Briefly describe what a <a href="https://en.wikipedia.org/wiki/Sierpinski_triangle">Sierpinski Triangle</a> is.


## Assignment


1. First set up a Window that can handle drawing. Can you get the Window to draw an equilateral triangle? What is the largest one you can get on the screen?
2. Once you can draw the triangle, now draw a triangle that connects the midpoints of each of the lines. You now have 4 triangles. For each of the three outer triangles, recursively draw a triangle that connects the midpoints. What is your termination condition, what is the measure?
3. Expand your triangle drawing algorithm to draw in a specific color. Choose a different color for every level of the algorithm.
4. Fill the middle triangle on each step with an appropriate color. Choose the size of the first triangle depending on what size the window is. Redraw the triangle when the window is resized.
5. (For the bored) Start a new project with a drawing Window and draw a square in the bottom left-hand quadrant of your window. Now draw one square that is half the size on top and left-justified and one to the right of the square and bottom-justified. And for each of these half-size boxes, put two more boxes half their size on top and to the right. This is recursion - what is your measure? What is the termination condition? What is the depth of the recursion? Put a screen shot in your report!
6. (For the really bored) Look up the [Sierpinski Carpet](https://en.wikipedia.org/wiki/Sierpinski_carpet) on the Wikipedia - I think the code is not quite right. What goes wrong? Can you fill the screen with a multicolored Sierpinski Carpet?
7. (For the extremely bored) Look up some fractal algorithms - are they all recursive? Can you program any of them yourself (i.e. not using Copy & Paste on the code you find on the Internet).

* * *

From [/broken_link#discuss.joelonsoftware.com/default.asp?joel.3.340775.27](/broken_link)

> Q. Do you know what iteration means?
> A. It's when you do something over and over and over and over and over and over and over and over and over and over and over and over and over and over...
>
> Q. Do you know what's recursion?
> A. It's recursion.
> ByTeEaTeR
> Tuesday, May 09, 2006

## Lab Report / What to turn in

Your report is due by 23:00 pm the night before your next lab.

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.
Both of you need to upload the same report in PDF format to Moodle before the
deadline.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.
