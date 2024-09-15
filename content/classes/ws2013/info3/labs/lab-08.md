---
title: 'Exercise 08: Black and White Box Tests'
author: kleinen
layout: page
---

## Assignment

After exploring Unit Testing in the last exercise, we will be looking at [black-box][1] and [white-box][2] testing in this second testing exercise.

Source code for this exercise: [https://github.com/htw-imi-info3-archive/lab-08-blackwhite](https://github.com/htw-imi-info3-archive/lab-08-blackwhite)

1. **Getting started:**  Give the equivalence classes for testing a method that determines the absolute value of an integer using the black-box methodology. Don't peek at the code yet! Now check out [`absolute.java`](https://github.com/htw-imi-info3-archive/lab-08-blackwhite/blob/master/absolute.java) in the repository and give the equivalence classes for a white-box test. Develop one test case for each equivalence class using JUnit.
2. **Black-box test**: Look at the grading scale at the bottom of the page (Which is not the [grading scale for this course]({{ site.BaseURL }}/studies/grading/grading-scale) ). Give the equivalence classes for a program that loops until a -1 is entered, asking for the number   of points on this scale, prints the appropriate letter grade (A-F), and then prints the   average number of points when -1 has been entered. Develop one test case for each   equivalence class. Test your test cases with [GradingScale.class](https://github.com/htw-imi-info3-archive/lab-08-blackwhite/blob/master/GradingScale.class). No fair decompiling the   class! Report on the results. Did you find any errors?
3. **White-box test** / path coverage: Examine the code for [TaxTime.java](https://github.com/htw-imi-info3-archive/lab-08-blackwhite/blob/master/TaxTime.java). Draw a code graph of the main class! How many independent paths are there? What are the conditions that cause each of the paths to be taken? Draw up a table giving you an overview of the conditions. Give test cases that exercise each path. Are there any errors in the program (besides the size of the tax bite)?
4. **Reflection** Consider the last two examples, especially TaxTime. What makes this programs hard to test? How would you refactor TaxTime to make it testable automatically with JUnit?


### Grading Scale (Points = Procent)

| Points | Grade | ECTS | Points | Grade | ECTS |
|:-------|:------|:-----|:-------|:------|:-----|
| 95-100 | 1,0   | A    | 65-69  | 3,0   | C    |
| 90-94  | 1,3   | A    | 60-64  | 3,3   | C    |
| 85-89  | 1,7   | B    | 55-59  | 3,7   | D    |
| 80-84  | 2,0   | B    | 50-54  | 4,0   | D    |
| 75-79  | 2,3   | B    | 0-49   | 5,0   | F    |
| 70-74  | 2,7   | C    |        |       |      |



## Lab Writeup

Submit your Report as PDF to moodle.


[1]: https://en.wikipedia.org/wiki/Black_box_testing
[2]: https://en.wikipedia.org/wiki/White_box_testing
