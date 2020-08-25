---
title: 'Assignment 04: Testing'
author: kleinen
layout: page
---
![Test Button](../images/test-button.jpg)
<small class = "float-right">Test Button in Car. [Foto by Mike Roberts](https://www.flickr.com/photos/cosmic_spanner/3766667411)</small>

## Assignment

### Preparation
1. Download the source code snippets for this assignment: [lab04-testing](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing)
2. Install the necessary dependencies. This works like in lab01.
3. In addition to what you've covered in class, please have a look at [black-box][1] and [white-box][2] testing.

### Equivalence Classes
2. Using the black-box methodology, what are the equivalence classes for testing a method that determines the absolute value of an integer? 
3. Check out [`absolute.java`](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/lib/number.js) in the repository. For a white-box test, what would be test cases covering each branch? 
4. Define suitable test cases for `absolute.js` based on your analysis and implement them with jest in the `test` folder.

### Black Box Tests
5. **Black-box test**: Look at the following grading scale at the bottom of the page (Which is not the grading scale for this course). 

| Points | Grade | ECTS | Points | Grade | ECTS |
|:-------|:------|:-----|:-------|:------|:-----|
| 95-100 | 1,0   | A    | 65-69  | 3,0   | C    |
| 90-94  | 1,3   | A    | 60-64  | 3,3   | C    |
| 85-89  | 1,7   | B    | 55-59  | 3,7   | D    |
| 80-84  | 2,0   | B    | 50-54  | 4,0   | D    |
| 75-79  | 2,3   | B    | 0-49   | 5,0   | F    |
| 70-74  | 2,7   | C    |        |       |      |

What are the equivalence classes for *a program that loops until a "-1"  is entered, asking for the number of points on this scale; prints the appropriate letter grade (A-F), and then prints the average number of points when "-1" has been entered*?

6. Develop one test case for each equivalence class. 

7. Test your test cases with [GradingScale.class](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/lib/gradingScale.js) (This is an uglified JavaScript file - don't try to make sense of it, for the sake of the exercise). Do this by running `???`. Report on the results. Did you find any errors?

### White Box Tests / Path Coverage

8. Examine the code for [TaxTime.java](https://github.com/htw-imi-info3/lab-04-testing/blob/master/a_black_and_white_box_tests/TaxTime.java). Draw a code graph of the main class! How many independent paths are there? What are the conditions that cause each of the paths to be taken? Draw up a table giving you an overview of the conditions. Give test cases that exercise each path. Are there any errors in the program (besides the size of the tax bite)?

### Reflection

9. Consider the last two examples, especially TaxTime. What makes this programs hard to test? How would you refactor TaxTime to make it testable automatically with JUnit?


### Grading Scale (Points = Procent)




## B. Test Driven Development

Your task is to develop deletion and reversion of a simple linked list test driven. You can do this either in Java or in Ruby. You find stubs in both languages in the [github repostitory.](https://github.com/htw-imi-info3/lab-04-testing/tree/master/b_test_driven).

Create a Class Node as Head of a Linked List and develop a method for deleting Nodes in it test driven, that is, develop the Unit Tests first, as we did in class.

Choose one of the two methods we discussed in class to help with the assertions/expectations - by either creating a helper (e.g. assert.java) or a toString method as in toString.java.

Then, do the same for reversing the list, that is, develop a method reverse() **test driven**. This is a bit tricky but doable with just one pass through the single linked list (in this method if you use a helper function, and it's also possible in one true pass through the whole list). Stick to the test cases, and give it a try - one node at a time!

Note that you need to make decisions on the actual interface of the methods and the whole list while writing the test, as well as on how the anchor for the first element is stored and changed if necessary. Write a short note (possibly as comment in the Test Code) why you decided to do it as you did.

For the bored: Refactor your Code after the Tests are running, and experiment with different implementations for deletion and reversion of a list.


## C. Lab Writeup

Submit your Report as PDF to moodle. If you want to, you can include all source code in a single zip file. You can upload up to two files to moodle - the pdf and the source code zip file.

[1]: http://en.wikipedia.org/wiki/Black_box_testing
[2]: http://en.wikipedia.org/wiki/White_box_testing
