---
title: '7 - Testing'
author: kleinen
draft: true
weight: 70
---
![Test Button](../images/test-button.jpg)
<small class = "float-right">Test Button in Car. [Foto by Mike Roberts](https://www.flickr.com/photos/cosmic_spanner/3766667411)</small>

## Pre-Lab

#### 1. Read about Closed- and Open-Box Tests.

I chose "Closed- and Open-Box Tests" as a more inclusive replacement for the terms "Black- and White-Box" Tests ([why?](#why-i-replaced-the-terms)). I could not find a general agreement on the best replacements, so I chose this terms as I think they are also even a better metaphor for the strategies to find test cases they describe:

- Closed-Box Testing is a strategy to find Test Cases without the need to (or beeing able to) look in the Source Code ("Software-Box"), that is, usually based on the specification and the in- and outputs of a system. see [Wikipedia on black-box testing](https://en.wikipedia.org/wiki/Black-box_testing)
- Open-Box Testing is a strategy that considers the internal structure of the Software to find useful test cases.  [Wikipedia on White-Box Testing](https://en.wikipedia.org/wiki/white_box_testing),  [Article on geeksforgeeks](https://www.geeksforgeeks.org/software-engineering-white-box-testing/))




#### 2.  Prepare the Source Code.


- Download Source Code for this Assignment [https://github.com/htw-imi-info3/lab-testing](https://github.com/htw-imi-info3/lab-testing)
- find a way to run the provided tests that works for you (command line, IDE, docker...)

## A. Closed-Box and Open-Box Testing

Remember, Closed- and Open-Box Testing is a strategy to find appropriate test cases. While some of the examples in these exercises operate on an input set so small it would allow for simply testing on all possible inputs, this exercise is about finding the most effective test cases, as 
test suites should be kept as small and fast as possible.

This exercise is about defining test cases (and finding bugs). You can do the tests by hand or use the provided examples how to test with pytest. If you use automated tests, make sure that all tests succeed, [and mark found bugs with xfail](https://docs.pytest.org/en/7.1.x/how-to/skipping.html).

1. **Getting started:**  Give the equivalence classes for testing a method that determines the absolute value of an integer using the closed-box methodology. Don't peek at the code yet! Now check out [`absolute.py`](https://github.com/htw-imi-info3/lab-testing/blob/main/a_open_and_closed_box_tests/javasource/absolute.java) in the repository and give test cases covering each branch for a open-box test. Define suitable test cases based on your analysis.


2. **closed-box test**: Look at the grading scale at the bottom of the page (Which is not the [grading scale for this course](/studies/grading/grading-scale)). Give the   equivalence classes for a program that loops until a "-1"  is entered, asking for the number   of points on this scale, prints the appropriate letter grade (A-F), and then prints the   average number of points when "-1" has been entered. Develop one test case for each   equivalence class. Test your test cases with [GradingScale.class](https://github.com/htw-imi-info3/lab-testing/blob/main/a_open_and_closed_box_tests/GradingScale.class) - this is a java programm. No fair decompiling the class! Report on the results. Did you find any errors?


3. **open-box test** / path coverage: Examine the code for [TaxTime.py](https://github.com/htw-imi-info3/lab-testing/blob/main/a_open_and_closed_box_tests/python/tax_time.py). Draw a code graph of the main class! How many independent paths are there? What are the conditions that cause each of the paths to be taken? Draw up a table giving you an overview of the conditions. Give test cases that exercise each path. Are there any errors in the program (besides the size of the tax bite)?


4. **Reflection** Reflect on the differences of the two strategies to find test cases. 


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

Your task is to develop deletion in and reversion of a linked list data structure with a test driven approach.
I've prepared tests that you can implement (make green) one-by-one - therefore it's not really full TDD (Test Driven Development), as you don't need to write the tests
yourself. See the [github repostitory.](https://github.com/htw-imi-info3/lab-testing/tree/main/b_test_driven_development/python).

The tests are already there in a order in which I think they should be implemented, use `pytest -x` to see only the next failing test.

For the bored: Refactor your Code after the Tests are running, and experiment with different implementations for deletion in and reversion of a list.


## C. Lab Writeup

Submit your Report as PDF to moodle, with a link to a repository for the source code.

--
#### Why I replaced the terms
Why these terms are problematic is described [here](https://news.uoguelph.ca/guides/style-guide/inclusive-language/inclusive-it-language-replacement-terms/) and [here](https://www.acm.org/diversity-inclusion/words-matter).
There seems to be no consensus about the best replacement, as it is the case for other terms,  e.g. with the new name "main" for the [main branch in git](https://sfconservancy.org/news/2020/jun/23/gitbranchname/), which has been enforced by [githubs change to main](https://www.zdnet.com/article/github-to-replace-master-with-main-starting-next-month/) in 2020.