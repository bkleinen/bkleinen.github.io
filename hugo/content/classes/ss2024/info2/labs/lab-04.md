---
title: 'Lab 04: Histogram'
author: kleinen
layout: lab
draft: false
weight: 40
---

## Learning Goals

After this lab you should be able to agree with each of the following statements.

I can handle File-based IO with Java:
* I can read from a text file using a Reader, eg. BufferedReader. 
* I can write to a text file using a Writer, eg. BufferedWriter. 
* I close my streams after I finished reading or writing. 
* I can use try-with-resources to make sure that in the end, a resource is always closed

I can handle Exceptions:
* When a method could throw an exception, I know how to handle it with a try-catch-block. 
* When a method could throw an exception, I know how to pass it on to whatever calls the method. 
* I can throw a fitting exception (eg. IllegalArgumentException) if I detect user input that does not fit my use case. 
* I can look up exceptions I don't know yet in the Java Documentation 

I can effectively use the data type "char":
* I know how to cast a char to an int. 
* I know how to cast an int to a char. 
* I know how to normalize a letter from the alphabet. 
* I can find out which letter corresponds to which ASCII code and vice versa. 

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

7. Try out your program with a big file, fpr example the 1M english news file from the [Leipzig Corpora Collection](https://wortschatz.uni-leipzig.de/en/download).

## For the bored

8. Extend your program such that it either takes input and output file names as
parameters, or use standard in  and standard out if no parameters were given.

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

Additional requirements for this lab:
* Answer the following questions: What is the complexity of your program? Why?
