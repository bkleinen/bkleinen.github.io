---
title: Repetition - Finger Exercises
author: kleinen
layout: page
draft: false
weight: 1
---

This is a small collection of programming finger exercises to get you back to
programming java, and to get to know your new programming environment.

I've numbered them for easier referencing in the Q&A.

## Basic Exercises

### Finger Exercise 1: Count 0s in an array
Write a method that takes an integer array as parameter and returns the number of 0 contained in it.

### Finger Exercise 2: Count occurrences of an character in a String
Write a method that takes a String s and a character c as parameters and returns
the number of occurrences of c in s.

## Little Challenges

### Finger Exercise Challenge 1: Pairs that add up to 0
Write a method that takes an integer array as parameter finds pairs that add up to 0.
- just count the number of pairs and return it as an int
- return the pairs as an array of two-element arrays containing the pairs


### Finger Exercise Challenge 2: Palindrome

A palindrome is a string or sentence that reads the same backwards as forwards, e.g.

* rentner
* lagerregal
* racecar
* Do Geese See God?
* Dammit, I'm Mad!

Write a method that determines wether a String is a palindrome:
a) iteratively (with a loop)
b) recursively

## Recursion
(We haven't talked about recursion yet. A recursive method is a method that is defined
in terms of itself; it calls itself. You can skip this or simply give it a try!)
### Finger Exercise Recursion 1: Factorial
The factorial function ! is defined as:

    n! = n x (n-1) x (n-2) x (n-3) x .... x 3 x 2 x 1.

e.g.

     5! = 5 x 4 x 3 x 2 x 1 = 120

     0! is defined as 1.

The factorial can also be expressed with the recurrence relation `n! = n * (n-1)!`
Which leads to a recursive implementation:

    fac(n):
      if (n == 0) return 1
      else return n * fac(n-1)

Implement and test this as a Java Programm.
