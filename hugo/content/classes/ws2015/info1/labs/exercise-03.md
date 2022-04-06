---
title: 'Exercise 03: Book Exercise'
author: kleinen
layout: lab
---

![Book](../../images/books-8314929977.jpg)
<small class = "float-right">Books. [Abhi Sharma](https://www.flickr.com/photos/abee5/8314929977/)</small>

This week's lab work is intended to practice creating classes with data fields, constructors, methods, assignments and conditional statements.

## Pre-lab

#### What to Bring to Lab

**Please finish these exercises before coming to lab.**

**P1.**
Why does the following version of refundBalance not give the same results as what we saw in class?
```java
public int refundBalance() {
  balance = 0;
  return balance;
}
```

**P2.**

What happens if you try to compile the TicketMachine class with the following version of refundBalance?
```java
public int refundBalance() {
  return balance;
  balance = 0;
}
```

**P3.** We have seen a few arithmetic operators in Java. Find a table with the Java operators and their priorities. Note down where you found this. What does the ternary operator in
```java
x ? a : b
```
do?

**P4.** What do you expect the the following expressions to evaluate to? Do not use a compiler or the codepad, only your head!


| Expression               | Value                                                                                                                                                                                                        | Type                                                                                                                                                                                                         |
|:-------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 99 + 3                   | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| "cat" + "fish"           |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| "cat" + 9                |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| 9 + 3 + "cat"            |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| "cat" + 3 + 9 + "fish"   |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| "catfish".substring(3,4) |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| "catfish".substring(3,8) |                                                                                                                                                                                                              |                                                                                                                                                                                                              |

# Post-Lab, AKA What To Turn In

Your completed assignment, submitted in Moodle as a **pdf** and **single Source Code File Book.java**, should include:

- a description of what you did during the lab, including a record of what worked, what problems you encountered.
- a copy of the final version of your Book code.
- the names and roles of any collaborators in any parts of the exercise.

Lab assignments are due the night before your next lab at 23.00. They may, of course, be turned in earlier. You hand them in by preparing the report in PDF and required source code files and submitting them to Moodle.

* * *

# Assignment

## CodePad

1. Open BlueJ and find the CodePad. Use it to test your predictions for P4 and record where you were correct and where you made mistakes.

## Making a Book
1. Open the [BookExercise project](https://github.com/htw-imi-info1/exercise03). Add two accessor methods to the class - getAuthor and getTitle - that return the author and title fields as their respective results. Test your class by creating some instances and calling the methods.
2. Add two methods, printAuthor and printTitle, to the Book class. These should print the author and title fields, respectively, to the terminal window.
3. Add a further field, pages, to the Book class to store the number of pages. This should be of type int, and its initial value should be passed to the single constructor, along with the author and title strings. Include an appropriate getPages accessor method for this field.
4. Add a method, printDetails, to the Book class. This should print details of the author, title, and pages to the terminal window. It is your choice how the details are formatted. You might want to include some explanatory text.
5. Add a further field, refNumber, to the Book class. This field can store a reference number for a library, for example. It should be of type String and initialized to the zero-length string in the constructor. Define a mutator(setter) for it with the following signature:

        public void setRefNumber (String ref)
 The body of this method should assign the value of the parameter to the refNumber field. Add the corresponding accessor getRefNumber.
6. Modify your printDetails method to include printing the reference number. However, the method should print the reference number only if it has been set. Hint: use a conditional! Note that Strings have a length method.
7. Modify your setRefNumber mutator so that it sets the refNumber field only if the parameter is a string of at least three characters. If it is less than three, then print an error message and leave the field unchanged.
8. (for the bored, or interested:) Kara-Special: Recall Exercise 1 of Worksheet 2 (which can be found in Moodle) where Kara had to count leaves. Create a Kara that has a countedLeaves instance variable and a suitable getter (accessor) method (and does count as in this exercise, of course). Would you say that it makes sense to add a mutator method as well? Why or why not? Experiment with this Kara a bit and examine how the countedLeaves instance variable is changed.

**Writeup**

You will be doing your writeup at home. If you do not have a computer at home, you can use the lab computers during times when there is no class. Hmm, you saved some information on your login area on the school server, can you access this from home? Yes! Your home directory is on the server uranus.f4.htw-berlin.de (or it was this week). There is a service called FTP that you can use to access these files. You will need to login to the FTP service with your F4 login to see your files. On Windows machines you open up a command window and use FTP. On Mac or Unix machines you open up a terminal and use ftp there.

Submit your writeup as your post-lab to the Moodle area.

* * *

Exercise Adapted from https://www.f4.htw-berlin.de/~weberwu/info1/Labs/Lab1.shtml , which was itself adapted from Objects First with Java, A Practical Introduction Using BlueJ. David Barnes & Michael Kölling, 2009
