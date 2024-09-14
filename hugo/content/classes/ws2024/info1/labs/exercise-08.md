---
title: 'Exercise 08: Testing with JUnit'
author: kleinen
source: https://github.com/htw-imi-info1/chapter09_testing
draft: false
---

This week's lab work is intended give you practice developing test cases and testing and writing Unit Tests.

Source code for this lab: {{< source >}} - diary-prototype

#### Pre Lab

Prepare your prelab before coming to class! Doing the pre-lab will save you time during the lab.

**P1**. Write down six test cases for Day and Appointment that. Give each test case (and, if applicable the ones from the lecture) a name.

**P2**. What assertions do you need in order to be able to automate the tests?

# Post-Lab, AKA  What To Turn In

* A report of your completed prelab and assignment as well as your reflection, submitted in Moodle as a pdf. For more Information on the report see [the Labs and Exercises page](../).
  * For the tests you need to record what worked, what didn't, and perhaps make an occasional screenshot.
* Your BlueJ project as a zip file.


# Assignment

## Diary

A diary is a system for keeping track of appointments on specific days and specific hours. We are going to work with a diary that only can take one appointment per hour, starting at 9 a.m. with the last appointment going from 5 p.m. to 6 p.m. You will be given an implementation that could contain errors. Your job is to find the errors. You are only to develop tests and to find and describe errors, not to fix them.

This lab concerns chapter 9 in the book; in the 6th edition the example had been changed to a similar example.

## Documenting Bugs in Test Cases

If you find bugs in the project, you will most probably have a failing (red) test case. Depending on the Test Framework, there are various methods to deactivate or skip certain tests. As JUnit requires extensions to exclude test cases, I've provided a simple helper with special assertions

See class `BugTestDemo` for examples how to use it!

## Instructions
1. Install the [diary project in the lab](https://github.com/htw-imi-info1/chapter09_testing/tree/master/diary-prototype) - switch to the branch of the current term first to see the changes we did in class. Create a test method in DayTest to check that `findSpace` returns the value of 10 for a one-hour appointment, if a day already has a single one-hour appointment at 9 a.m. In essence, you need to perform similar steps to those used to create `testFindSpace9`  in the lecture, use `makeAppointment` for the test fixture and `findSpace` for the second appointment. If you want to add an assertion for the result of the makeAppointment call, you should do so in a separate test method as test method one should only have one assertion.

2. Create a test to check that findSpace returns a value of -1, if an attempt is made to find an appointment in a day that is already full.

3. Create a test class that has Appointment as its reference class. Record, using the record button control, separate test methods within it, that check that the description and duration fields of an Appointment object are initialized correctly following its creation.

4. Create a negative test in the DayTest class. For example, try and set up a one-hour appointment, and then put in a two-hour appointment at the same time. What happens when you run the test? Include a screenshot in your report.

5. Set up a fixture for an additional test case from your pre-lab. What did you have to do?

6. Add further automated tests (positive and negative) to theDayTest class, until you are reasonably confident of the correct operation of the classes. If you discover any errors, be sure to record tests that guard against recurrence of these errors in later versions.

7. (For the bored) Correct any errors that you find and run a regression test. Document what you have to change and how you ran the regression test!

8. (For the bored) Expand the diary to accept appointments on the half-hour. Test.

9. (For the exceedingly bored) Expand the diary to permit overlap of appointments. Test.
