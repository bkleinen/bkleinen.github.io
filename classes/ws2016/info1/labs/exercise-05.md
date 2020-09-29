---
title: 'Exercise 05: A Better Notebook'
author: kleinen
layout: lab
---


![Notebook](../../images/notebook-6783298985.jpg)
<small class = "float-right">Foto by [waferboard](https://www.flickr.com/photos/waferboard/6783298985)</small>

This week's lab work is intended help you practice using loops.

## Pre-lab

<span class = "attention">
Please prepare these Exercises \*before\* coming to lab! We will talk about them briefly.
</span>

**P1**. Write a loop on paper that prints out all multiples of 5 between 10 and 95.

**P2.** Write a method called sumBetween that adds up all numbers between two numbers, a and b, that are passed into the method as parameters. Include a but not b in the sum.

**P3.** Assume you have a collection of students called imi1. The Student class has a method getFirstName and a method getSurname. Write a loop that prints out all students in the collection with the last name first, then a comma, then a blank, and then the first name, each on a line by itself.

**P4.** Write a method isPrime that uses a while loop to test if a number given in a parameter is prime or not. A number is prime when it is divisible with a remainder of 0 only by 1 and itself.

## Post-Lab, AKA  What To Turn In

Your completed assignment, submitted in Moodle as a pdf + zipped sources (that is
2 Files to upload: 1 pdf, one zip),
should include:

- The names and roles of any collaborators in any parts of the exercise.
- A description of what you did during the lab, including a record of what worked, what problems you encountered, and answers to the questions as asked.
- A copy of the final version of your Notebook code as well as the prelab-and-primes project, zipped in one archive.
- A record of how long you needed for this lab and what you learned.

Lab assignments are due before your next lab at 23.00. They may, of course, be turned in earlier.

## Assignment

**A Better Notebook**

Source Code for this exercise:  [https://github.com/htw-imi-info1/exercise05-with-kara](https://github.com/htw-imi-info1/exercise05-with-kara)

1. Using the provided class `PreLab`in the prelab-and-primes project, test that your prelab work in P1-P2 is correct. What test cases did you have to create?
1. Adapt the notebook project you find in the repository to list all notes, as done in class. Create a notebook and add some notes, checking that this method works as intended. The method should be called `list`,
take no parameters and return nothing.
1. Modify your list method so that it prints a number in front of each note that corresponds to its index in the ArrayList.
1. Implement a Method `removeNote` that removes all notes containing a certain string (as seen in class) in two ways: by using an iterator and by using a while loop with an index (without an iterator; name this method `removeNoteWithWhile`). Did you run into problems? If not, what may be the possible problems with this compared to the solution using an iterator?
1. Modify `removeNote` to print out an error message if no notes were removed.
1. Within a single execution of the remove method, the notes collection is asked repeatedly how many notes it is currently storing. Does the value returned by size vary from one check to the next? Rewrite your search method so that the size is not checked unnecessarily, perhaps using a local variable. Check that your version gives the same results! What cases will you have to test?
1. Create a collection primes and use your prelab 4 to fill it with the prime numbers between 1 and 1000. Oops, this won't work directly, because collections don't take ints. You can use something called autoboxing to solve this. Look up Integer in the API and use this. How many prime numbers are there between 1 and 1000? Please use the method `primesSmallerThan(int number)` in the PreLab class for this,
and have it return the number of primes you've found. There is also a method stub for isPrime already in the class.

1. (optional) KaraSpecial: Use the kara-copy project in the [provided source code](https://github.com/htw-imi-info1/exercise05-with-kara). Make Kara copy the leaf rows on the left to the right, this time not using a second Kara as in the last exercise, but by storing the information about a row in an ArrayList of Booleans. You'll find some more instructions in the source code.
1. (For the bored) Implement a search with '?' as a joker standing for any character, and '\*' standing for any number of characters.
1. (For the really bored) Implement full regular expression search for the notebook.
