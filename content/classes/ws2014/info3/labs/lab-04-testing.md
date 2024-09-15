---
title: 'Assignment 04: Testing'
author: kleinen
layout: page
---


![Test Button](../images/test-button.jpg)
<small class = "float-right">Test Button in Car. [Foto by Mike Roberts](https://www.flickr.com/photos/cosmic_spanner/3766667411)</small>

## Download the source code snippets for this assignment.
Source Code for this Assignment: [https://github.com/htw-imi-info3-archive/lab-04-testing](https://github.com/htw-imi-info3-archive/lab-04-testing)

##A. Black and White Box Tests

In addition to what we've covered in class, please have a look at [black-box][1] and [white-box][2] testing.

1. **Getting started:**  Give the equivalence classes for testing a method that determines the absolute value of an integer using the black-box methodology. Don't peek at the code yet! Now check out [`absolute.java`](https://github.com/htw-imi-info3-archive/lab-04-testing/blob/master/a_black_and_white_box_tests/absolute.java) in the repository and give the equivalence classes for a white-box test. Develop one test case for each equivalence class using JUnit.
2. **Black-box test**: Look at this grading scale at the bottom of the page (Which is not the [grading scale for this course]({{ site.BaseURL }}/studies/grading/grading-scale)). Give the   equivalence classes for a program that loops until a -1 is entered, asking for the number   of points on this scale, prints the appropriate letter grade (A-F), and then prints the   average number of points when -1 has been entered. Develop one test case for each   equivalence class. Test your test cases with [GradingScale.class](https://github.com/htw-imi-info3-archive/lab-04-testing/blob/master/a_black_and_white_box_tests/GradingScale.class) - this is a java programm. No fair decompiling the   class! Report on the results. Did you find any errors?
3. **White-box test** / path coverage: Examine the code for [TaxTime.java](https://github.com/htw-imi-info3-archive/lab-04-testing/blob/master/a_black_and_white_box_tests/TaxTime.java. Draw a code graph of the main class! How many independent paths are there? What are the conditions that cause each of the paths to be taken? Draw up a table giving you an overview of the conditions. Give test cases that exercise each path. Are there any errors in the program (besides the size of the tax bite)?
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


## B. Test Driven Development

Your task is to develop deletion and reversion of a simple linked list test driven. You can do this either in Java or in Ruby. You find stubs in both languages on [github](https://github.com/htw-imi-info3-archive/lab-04-testing/tree/master/b_test_driven).

Create a Class Node as Head of a Linked List and develop a method for deleting Nodes in it test driven, that is, develop the Unit Tests first, as we did in class.

Choose one of the two methods we discussed in class to help with the assertions/expectations - by either creating a helper (e.g. assert.java) or a toString method as in toString.java.

Then, do the same for reversing the list, that is, develop a method reverse() **test driven**. This is a bit tricky but doable with just one pass through the single linked list. Stick to the test cases, and give it a try - one node at a time!

Note that you need to make decisions on the actual interface of the methods and the whole list while writing the test, as well as on how the anchor for the first element is stored and changed if necessary. Write a short note (possibly as comment in the Test Code) why you decided to do it as you did.

For the bored: Refactor your Code after the Tests are running, and experiment with different implementations for deletion and reversion of a list.


## C. Lab Writeup

Submit your Report as PDF to moodle. If you want to, you can include all source code in a single zip file. You can upload up to two files to moodle - the pdf and the source code zip file.

[1]: https://en.wikipedia.org/wiki/Black_box_testing
[2]: https://en.wikipedia.org/wiki/White_box_testing
