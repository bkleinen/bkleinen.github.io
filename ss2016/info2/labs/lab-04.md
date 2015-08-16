---
title: 'Info2: Exercise 4: Histogram '
author: kleinen
layout: lab
---
## Pre-Lab
Please think through the following questions before coming to the lab. Write down your answers and bring them with you for pre-lab check-in.

1.  In some programming languages, such as Ada, you can 
    define an array of characters with any discrete type as the index:

        someArray : ARRAY ['A' .. 'Z'] of INTEGER;
    You can then access the array, for example, using a value of character type: someArray['T']. Java does not have this feature. How would you go about making an array in Java for representing counters for the letters 'A' to 'Z'?

2. Normalization of Strings means transforming all Strings to either uppercase or lowercase before comparing them. Write a method that takes a character as a parameter and returns a normalized version of the character without using the methods available in the Java String class.
3. What is a "carriage return"? Where does the name come from?

## Assignment

These are the required exercises for this week. Work in groups of two, each of you hands in the same report. Remember to put your names on the report. You can continue to use BlueJ, or move to Eclipse, if you wish. We will be practicing much programming in the small this semester.

1. How do you go about reading in characters from a file? Write and test a method that returns the next character in a file. Note that you have to do something with the carriage returns - such as ignoring them - and that you have to decide what to do when there are no characters to be returned.
2. How do you write a String to a file? How do you write an Integer to a file? An int? How do you create a file, anyway?
3. Now the fun begins! Write a Java application to read in a file character by character, counting the frequencies with which each character occurs. When there are no more characters, create a file frequency.txt and output the frequencies for each character.
4. Output a histogram of the character frequencies. One simple kind of histogram has horizontal lines proportional to the magnitude of the number it represents. For example:

        A : **********
        B : *****
        C : ******

5. What is the complexity of your algorithm?


## Lab Report / What to turn in

Your report is due the day before your next lab (for exact times, please refer to moodle).

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.
Both of you need to upload the same report in PDF format to Moodle before the
deadline.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.
