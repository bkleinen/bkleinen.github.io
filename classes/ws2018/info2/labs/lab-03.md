---
title: 'Info2: Exercise 03: Histogram '
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

1. How do you go about reading in characters from a file? Write and test a method that returns the next character in a file. Note that you have to do something with the carriage returns - such as ignoring them - and that you have to decide what to do when there are no characters to be returned. Make sure that you will be able to read large files, as well.
2. How do you write a String to a file? How do you write an Integer to a file? An int? How do you create a file, anyway?
3. Now the fun begins! Write a Java application to read in a file character by character, counting the frequencies with which each character occurs. When there are no more characters, create a file frequency.txt and output the frequencies for each character. Note that you should only count the ASCII characters between 'A' and 'Z' and 'a' and 'z', using the char type.
1. Write a test method to see if your program counts correctly. For this, it is useful to have a count() method that counts from something that you can feed both a String to from the tests as well as an input source from a file. [Reader](https://docs.oracle.com/javase/7/docs/api/java/io/Reader.html) is one possible solution, use it with a [BufferedReader](https://docs.oracle.com/javase/8/docs/api/java/io/BufferedReader.html) for reading the file, and with a [StringReader](https://docs.oracle.com/javase/7/docs/api/java/io/StringReader.html) from the tests:

  ```public void count(Reader reader)```

1. Which character is the most frequent? Write a method that returns the most frequent character, include a test for it.
4. Output a histogram of the character frequencies. One simple kind of histogram has horizontal lines proportional to the magnitude of the number it represents. For example:

        A : **********
        B : *****
        C : ******


5. Try out your program with a big file, eg. the 3M english news file from the [Leipzig Corpora Collection](https://wortschatz.uni-leipzig.de/en/download): look for eng_news_2015_3M.tar.gz and read the file eng_news_2015_3M/eng_news_2015_3M-sentences.txt. How many 'a's are in this file, how many 'z's?
6. What is the complexity of your program?

## For the bored

2. Extend your program such that it either takes input and output file names as
parameters, or use standard in  and standard out if no parameters were given.

## Lab Report / What to turn in

Your report is due the day before your next lab (for exact times, please refer to moodle).
Submit both a lab report as pdf and your whole source code directory as a zip.

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.
Both of you need to upload the same report in PDF and zipped source format to Moodle before the
deadline.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.
