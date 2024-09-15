---
title: 'Info2: Exercise 03: Histogram '
author: kleinen
layout: lab
---
## Pre-Lab
Please think through the following questions before coming to the lab. Write down your answers and be prepared to answer them in class.

***P1.***  In some programming languages, such as Ada, you can define an array of characters with any discrete type as the index:

        someArray : ARRAY ['A' .. 'Z'] of INTEGER;

You can then access the array, for example, using a value of character type: someArray['T']. Java does not have this feature. How would you go about making an array in Java for representing counters for the letters 'A' to 'Z'?

***P2.*** Normalization of Strings means transforming all Strings to either uppercase or lowercase before comparing them. Write a method that takes a character as a parameter and returns a normalized version of the character without using the methods available in the Java String class.

***P3.*** What is a "carriage return"? Where does the name come from?

***P4.*** What is a "histogram" again?

## Assignment

1. Write and test a method that returns the next character in a file. Note that you have to do something with the carriage returns - such as ignoring them - and that you have to decide what to do when there are no characters to be returned. Make sure that you will be able to read large files, as well.

2. Find out how to write a String to a file, how to write an Integer and an int to a file. Find out how to create a file.

3. Now the fun begins! Write a Java application to read in a file character by character, counting the frequencies with which each normalized character occurs. When there are no more characters, create a file frequency.txt and output the frequencies for each character. Note that you should only count the ASCII characters between 'A' and 'Z' and 'a' and 'z', using the char type.

4. Write a test method to see whether your program counts correctly. The test method can contain multiple test cases. For testing it is useful to have a count() method that counts from a parameter of a type that you can feed both a String to from the tests as well as an input source from a file. [Reader](https://docs.oracle.com/javase/7/docs/api/java/io/Reader.html) is one possible solution, use it with a [BufferedReader](https://docs.oracle.com/javase/8/docs/api/java/io/BufferedReader.html) for reading the file, and with a [StringReader](https://docs.oracle.com/javase/7/docs/api/java/io/StringReader.html) from the tests:

        ```public void count(Reader reader)```

5. Write a method that returns the most frequent character, include a test for it.

6. Output a histogram of the character frequencies. One simple kind of histogram has horizontal lines proportional to the magnitude of the number it represents. For example:

        A : **********
        B : *****
        C : ******

7. Try out your program with a big file, eg. the 3M english news file from the [Leipzig Corpora Collection](https://wortschatz.uni-leipzig.de/en/download): look for eng_news_2015_3M.tar.gz and read the file eng_news_2015_3M/eng_news_2015_3M-sentences.txt. 

## For the bored

8. Extend your program such that it either takes input and output file names as
parameters, or use standard in  and standard out if no parameters were given.

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

Additional requirements for this lab:
* Answer the following questions: What is the complexity of your program? Why?
