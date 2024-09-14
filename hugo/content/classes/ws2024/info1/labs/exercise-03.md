---
title: 'Exercise 03: Book Exercise'
author: kleinen
source: https://github.com/htw-imi-info1/chapter02
source_ok: true
solution_pushed: true
draft: false
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

**P3.** We have seen a few arithmetic operators in Java. Find a table with the Java operators and their priorities. Note down where you found this. What does the ternary operator in `x ? a : b` do?

**P4.** What do you expect the the following expressions to evaluate to? What is the value, and of which type is the value? Do not use a compiler or the codepad, only your head!


| Expression                      | Value &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
|:--------------------------------|:------|:-----|
| ```99 + 3```                    | ||
| ```"cat" + "fish"```             |       |      |
| ```"cat" + 9```                 |       |      |
| ``` 9 + 3 + "cat" ```           |       |      |
| ```"cat" + 3 + 9 + "fish"```    |       |      |
| ```"catfish".substring(3,4)```  |       |      |
| ```"catfish".substring(3,8) ``` |       |      |


## What to hand in

0. A ZIP-file with your source code
1. Your lab report. For more Information on the report see [the Labs and Exercises page](../).

Lab assignments are due the night before your next lab at 22:00. They may, of course, be turned in earlier.


# Assignment

## Part 1: CodePad

1. Open BlueJ and find the CodePad. Use it to test your predictions for P4 and record where you were correct and where you made mistakes.

## Part 2: Making a Book
1. Open the [BookExercise project](https://github.com/htw-imi-info1/exercise03). Add two accessor methods to the class - `getAuthor` and `getTitle` - that return the author and title fields as their respective results. Test your class by creating some instances and calling the methods.
2. Add two methods, `printAuthor` and `printTitle`, to the Book class. These should print the author and title fields, respectively, to the terminal window.
3. Add a further field, `pages`, to the Book class to store the number of pages. This should be of type `int`, and its initial value should be passed to the single constructor, along with the author and title strings __as the third parameter__. Include an appropriate `getPages` accessor method for this field.
4. Add a method, `printDetails`, to the Book class. This should print details of the author, title, and pages to the terminal window. It is your choice how the details are formatted. You might want to include some explanatory text.
5. Add a further field, refNumber, to the Book class. This field can store a reference number for a library, for example. It should be of type String and initialized to the zero-length string (!) in the constructor. Add the corresponding accessor (getter) and the setter with the signatures below. The body of this method should assign the value of the parameter to the `refNumber` field.

  ```java
    public String getRefNumber()

    public void setRefNumber (String ref)
  ```
6. Modify your `printDetails` method to include printing the reference number. However, the method should print the reference number only if it has been set, and the exact string "no reference number" otherwise. Hint: use a conditional! Note that Strings have a length method.
7. Modify your `setRefNumber` mutator so that it sets the refNumber field only if the parameter is a string of at least three characters. If it is less than three, then print an error message and leave the field unchanged.


### Part 3: KaraClock Preparation

This builds on the first two preparation exercises,
[1. Multi-Move](../karaclock-complete/#1-multi-move)
and 
[2. Move up and Count](../karaclock-complete/#2-move-up-and-count) which you should have done in last week's lab or in class.

There is a special repo with the scaffold for all KaraClock exercises: [https://github.com/htw-imi-info1/kara-clock-lab](https://github.com/htw-imi-info1/kara-clock-lab) 

{{< snippet "snippets/karaclock/03_count_leaves.md" >}}
{{< snippet "snippets/karaclock/04_increment.md" >}}


* * *

Exercise Adapted from https://people.f4.htw-berlin.de/~weberwu/info1/site/Labs/Lab2.shtml , which was itself adapted from Objects First with Java, A Practical Introduction Using BlueJ. David Barnes & Michael Kölling, 2009
