---
title: Java Collection Library e-learning WS 2018/19
author: kleinen
layout: page
---

## Overview

Your task is to get yourself more aquaintaned with the java collection library.
It's a powerful, stable and reliable library providing collections for many
use cases.

We already have looked at the main interfaces, List, Set and Map, in Info1 as
well as the most common implementations, ArrayList, HashSet and HashMap.

In Info2, you'll learn more about alternative implementations and how to
assess which one to use regarding their properties in terms of time and space
consumption as well as their behaviour within concurrent applications.

Remember that this replaces two lectures, which means you should at least
use 2 x 1,5hrs working on this assignment, and even longer when you count in
preparation and review time for the lectures.

## Reading

Go through the [Java Collections Trail in the Oracle Java Tutorial](https://docs.oracle.com/javase/tutorial/collections/TOC.html).

Don't worry if you don't understand everything just yet. We will talk about
different implementations in detail in Info2. Mainly aim at getting an overview
by answering the following questions:

## Exercises

### Sorting

* If you call Collections.sort, which sorting algorithm is used (it is not in
the tutorial, you will have to look at the source or documentation for answering this question).

* What do you have to do if you wanted to sort a collection containing instances
of a class you've defined yourself? (hint: look for Comparable)

* How could you sort a collection on different attributes, e.g. Students for their
last name, and in the second use case on their enrolment numbers? (hint: look at Comparator)

* create your own class, define an ordering and implement a sort using either Comparable or Comparator, or both

### Runtime

You've already learned a little bit about the run time or complexity of algorithms.
What is the complexity of
* appending to an ArrayList
* inserting at a specific index
* accessing a specific element using it's index
* deleting a specific index
* checking if an element is in the list
? - you can do this by either reading the documentation / tutorial or try to
figure it out yourself by looking at the actual implementation in the source code.

Do the same for HashSet. As we haven't talked about hash functions and that part
of the implementation yet, you'll probably want to rely on the documentation.

### Concurrency

* How can you safely work with a List from multiple treads?
* And with a Map?

### For the bored

* work through all the Questions and Exercises in the Trail.
* Build a multithreaded example that messes up in a bad way with an unsynchronized collection.

### Collect questions instead of getting stuck!

You probably won't understand everything in the tutorial. Don't get caught up
too long if you have trouble something understanding the tutorial, instead, note the
questions you have. For example, we haven't talked about linked lists yet, but
the tutorial assumes that you know the concept of linked lists and will be hard
to understand if you don't. Just write down the question "What is a linked list?"
and continue reading other parts of the tutorial.
