---
title: 'Assignment 1: Testing'
author: kleinen
layout: page
---

## A. Test Driven Development

Create a new Java Project in Eclipse (or your preferred IDE).

Source Code for this Assignment: (removed)

Create a Class Node as in Node.java _as Head of a linked list (added 5.4.13) _and develop a method for deleting Nodes in a List test driven, that is, develop the Unit Tests first, as we did in class. Choose one of the two methods we discussed in class to help the assertions - creating a test helper method as in assert.java or creating a toString method as in toString.java.

Then, do the same for reversing the list, that is, develop a method reverse() **test driven**.

Note that you need to make decisions on the actual interface of the methods and the whole list while writing the test, as well as on how the anchor for the first element is stored and changed if necessary. Write a short note (possibly as comment in the Test Code) why you decided to do it as you did.

For the bored: Refactor your Code after the Tests are running, and experiment with different implementations for both methods.

##B. Black and White Box Tests

After exploring Unit Testing in the first part, we will be looking at [black-box][1] and [white-box][2] testing in this second part.

1. **Getting started:**  Give the equivalence classes for testing a method that determines the absolute value of an integer using the black-box methodology. Don't peek at the code yet! Now check out `absolute.java` in the repository and give the equivalence classes for a white-box test. Develop one test case for each equivalence class using JUnit.
2. **Black-box test**: Look at this grading scale at the bottom of the page (Which is not the [grading scale for this course]({{ site.BaseURL }}/studies/grading/grading-scale). Give the   equivalence classes for a program that loops until a -1 is entered, asking for the number   of points on this scale, prints the appropriate letter grade (A-F), and then prints the   average number of points when -1 has been entered. Develop one test case for each   equivalence class. Test your test cases with GradingScale.class. No fair decompiling the   class! Report on the results. Did you find any errors?
3. **White-box test** / path coverage:Examine the code for TaxTime.java. Draw a code graph of the main class! How many independent paths are there? What are the conditions that cause each of the paths to be taken? Draw up a table giving you an overview of the conditions. Give test cases that exercise each path. Are there any errors in the program (besides the size of the tax bite)?
4. **Reflection** Consider the last two examples, especially TaxTime. What makes this programs hard to test? How would you refactor TaxTime to make it testable automatically with JUnit?


### Grading Scale (Points = Procent)
  | Points | Grade | ECTS | Points | Grade | ECTS |
  | ---    | ---   | ---  | ---    | ---   | ---  |
  | 95-100 | 1,0   | A    | 65-69  | 3,0   | C    |
  | 90-94  | 1,3   | A    | 60-64  | 3,3   | C    |
  | 85-89  | 1,7   | B    | 55-59  | 3,7   | D    |
  | 80-84  | 2,0   | B    | 50-54  | 4,0   | D    |
  | 75-79  | 2,3   | B    | 0-49   | 5,0   | F    |
  | 70-74  | 2,7   | C    |        |       |      |



## C. Lab Writeup

How did you approach the Gilded Rose Kata? What problems did you experience? What did you learn? (Note that it is not necessary to have the Kata completed, just write up what you've achieved in the lab).

Submit your Report as PDF to moodle. If you want to, you can include all source code in a single zip file. You can upload up to two files to moodle - the pdf and the source code zip file.

[1]: https://en.wikipedia.org/wiki/Black_box_testing
[2]: https://en.wikipedia.org/wiki/White_box_testing
