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
2. Prepare your project [like we did it in the first lab](lab-01-startup.md#part-1-set-up-the-git-repository-and-project). Note that this is now lab03, so  make sure you adapt your process to that! Eg. put the project into the correct place on the gitlab server.
3. In addition to what you've covered in class, please have a look at [black-box][1] and [white-box][2] testing.

### Part 1: Equivalence Classes
2. Using the black-box methodology, what are the equivalence classes for testing *a method that determines the absolute value of an integer*? Don't look at the code yet.
3. Now check out [`number.js`](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/blob/master/lib/number.js). For a white-box test, what would be test cases covering each branch?
4. Based on your analysis, define suitable test cases for `number.js` and implement them with jest in the `test` folder.
5. Run your tests: `npm test number`. Report on the results.
6. Lint and correct your code: `npm run lint test/number.test.js`.

### Part 2: Black Box Tests
7. **Black-box test**: Look at the following grading scale (which is not the grading scale for this course).

| Points | Grade | Letter Grade |
|:-------|:------|:-------------|
| 95-100 | 1,0   | A            |
| 90-94  | 1,3   | A            |
| 85-89  | 1,7   | B            |
| 80-84  | 2,0   | B            |
| 75-79  | 2,3   | B            |
| 70-74  | 2,7   | C            |
| 65-69  | 3,0   | C            |
| 60-64  | 3,3   | C            |
| 55-59  | 3,7   | D            |
| 50-54  | 4,0   | D            |
| 0-49   | 5,0   | F            |
|        |       |              |

What are the equivalence classes for *a program that loops until a "-1"  is entered, asking for the number of points on this scale; prints the appropriate letter grade (A-F), and then prints the average number of points when "-1" has been entered*? Let's call this program "Grading Scale Calculator"

8. Define one test case for each equivalence class.

9. Manually test your test cases by runnig the "Grading Scale Calculator": `node "cliTools/gradingScale.min.js"` (The sources of this program - [Command Line Interface](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/blob/master/cliTools/gradingScale.min.js) and [Module](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/blob/master/lib/gradingScale.min.js) - are [minified](https://www.npmjs.com/package/terser) JavaScript files - don't try to make sense of them). Report on the results. Did you find errors in the "Grading Scale Calculator"?

### Part 3: White Box Tests / Path Coverage
10. Examine the code for the program "Tax Time": [`cliTools/taxTime.js`](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/blob/master/cliTools/taxTime.js). Draw a code graph of the main class. How many independent paths are there?

11. What are the conditions that cause each of the paths to be taken? Draw up a table giving you an overview of the conditions.

12. Define one test case for each path.

13. Manually test the test cases by running "Tax Time": `node "cliTools/taxTime.js"`. Report on your results. Did you find errors in "Tax Time"?

### Part 4: Refactoring
14. *Plan* (only plan!) how you would refactor "Tax Time" to make it's functionalities testable with jest. Hint: You would need to separate underlaying functionalities from the view (the part where user interaction happens, or CLI), putting the underlaying functionalities into [`lib/taxTime.js`](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/blob/master/lib/taxTime.js). But which methods should be in the [`lib/taxTime.js`](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/blob/master/lib/taxTime.js) module? Which field variables do you need?

15. Implement the test cases from (12.) with jest in the `test` folder. Your tests should test [`lib/taxTime.js`](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/blob/master/lib/taxTime.js). Run them with code coverage: `npm run coverage taxTime`. What do you think - is it necessary to reach 100% code coverage?

16. Now actually refactor "Tax Time" so that your tests pass.

17. Lint and improve your code: `npm run lint "cliTools/taxTime.js" "lib/taxTime.js"`.

### Part 5: Test Driven Development
Your task is to develop deletion and reversion of a simple linked list test driven. Note that you need to make decisions on the actual interface of the methods and the whole list while writing the test, as well as on how the anchor for the first element is stored and changed if necessary. You find a stub in [`node.js`](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/blob/master/lib/node.js). Some tests are already available at [`node.test.js`](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab04-testing/blob/master/test/node.test.js).

18. Look at the class `Node` as a head of a Linked List. Develop the jest unit tests for *deleting Nodes* (which test cases do you need to check?) and then develop a delete method to make your tests pass. Lint and correct your code: `npm run lint lib/node.js`.

19. Then, do the same for *reversing the list*. That is: Test-driven-develop a method reverse(). This is a bit tricky but doable with just one pass through the single linked list. Stick to the test cases, and give it a try - one node at a time! Don't forget to lint and correct your code.

20. For the bored: Refactor your Code after the Tests are running, and experiment with different implementations for deletion and reversion of a list. Report on your experiments.

## Results Submission
* Hand in a link to your repository
* Hand in a lab report
* Take part in the oral test on Dec. 3 2020

More info on the [Labs](index) page.

[1]: https://en.wikipedia.org/wiki/Black_box_testing
[2]: https://en.wikipedia.org/wiki/White_box_testing
