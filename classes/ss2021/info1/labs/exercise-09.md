---
title: 'Exercise 09: Testing with JUnit'
author: kleinen
layout: lab
---

This week's lab work is intended give you practice testing and writing assertions.

#### Change to Assignment for Winter Term 19/20

- we will be doing most of the lab during the 2nd Lecture
- There will be groups per Test Fixture
- everyone needs to submit one positive and one negative test case
- lab is graded with 4* for participation, 0* for no participation

#### What to Bring to Lab

Please bring these exercises printed out or written out with you to lab. Please have your name on your page.

**P1**. Write down six test cases for Day and Appointment that were not given in the lecture. Give each test case (and the ones from the lecture) a name.

**P2**. What assertions do you need in order to be able to automate the tests?

# Post-Lab, AKA  What To Turn In
Your completed assignment, submitted in Moodle as a pdf,
should include:

- A description of what you did during the lab, including a record of what worked, what problems you encountered, and answers to the questions asked in P1 and P2. The focus is on the process!
- Include the final version of the source code - either the whole bluej project zipped together or - preferably, if you just worked on two classes these two classes as separate files. You can upload up to three files altogether.
- For the tests you need to record what worked, what didn't, and perhaps make an occasional screenshot.
- The names and roles of any collaborators in any parts of the exercise.
- A record of how long you needed for this lab and what you learned.

Lab assignments are due before your next lab at 22:00. They may, of course, be turned
in earlier. You hand them in by preparing the report in PDF and submitting it to Moodle.

* * *

# Assignment

## Diary

A diary is a system for keeping track of appointments on specific days and specific hours. We are going to work with a diary that only can take one appointment per hour, starting at 9 a.m. with the last appointment going from 5 p.m. to 6 p.m. You will be given an implementation that could contain errors. Your job is to find the errors. You are only to develop tests and to find and describe errors, not to fix them.

1. Install the [diary project in the lab](https://github.com/htw-imi-info1/chapter09_testing/tree/master/diary-prototype) - switch to the branch of the current term first to see the changes we did in class. Create a test method in DayTest to check that findSpace returns the value of 10 for a one-hour appointment, if a day already has a single one-hour appointment at 9 a.m. In essence, you need to perform similar steps to those used to create testFindSpace9  in the lecture but and use makeAppointment for the first appointment and findSpace for the second appointment. If you want to add an assertion for the result of the makeAppointment call, you should do so in a separate test method as each one should only have one assertion.
2. Create a test to check that findSpace returns a value of -1, if an attempt is made to find an appointment in a day that is already full.
3. Create a test class that has Appointment as its reference class. Record, using the record button control, separate test methods within it, that check that the description and duration fields of an Appointment object are initialized correctly following its creation.
4. Create a negative test in the DayTest class. For example, try and set up a one-hour appointment, and then put in a two-hour appointment at the same time. What happens when you run the test? Include a screenshot in your report.
5. Set up a fixture for an additional test case from your pre-lab. What did you have to do?
6. Add further automated tests (positive and negative) to theDayTest class, until you are reasonably confident of the correct operation of the classes. If you discover any errors, be sure to record tests that guard against recurrence of these errors in later versions.
7. (For the bored) Correct any errors that you find and run a regression test. Document what you have to change and how you ran the regression test!
8. (For the bored) Expand the diary to accept appointments on the half-hour. Test.
9. (For the exceedingly bored) Expand the diary to permit overlap of appointments. Test.

***

# Writeup

Submit your writeup as your post-lab to the Moodle area.
