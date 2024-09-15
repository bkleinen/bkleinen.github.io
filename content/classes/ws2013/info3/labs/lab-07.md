---
title: 'Exercise 07: Test Driven Development'
author: kleinen
layout: page
---

# Assignment

This exercise is about developing a linked list test driven.

You can either do it in Java - completing the project we've started in class

 * [TestDrivenList in Java (Eclipse Project)](https://github.com/htw-imi-info3-archive/TestDrivenList)

or in Ruby

 * [TestDrivenList in Ruby](https://github.com/htw-imi-info3-archive/TestDrivenListRuby)

or, if interested or bored, or undecided, both. But one is sufficient.

The initial class Node is given in both versions, together with a test class and a to_s/toString method to ease testing.

First, develop an append method **test driven** that appends to the end of the list (in class, we created an add that prepends to the list in the Java version): Write the test(s) first, then develop a bit, add more tests, develop more.

Then do the same for deleting nodes. You can start of with the easiest case, and make sure to have tests for the edge cases (deleting the first and last element) as well.

Last, do the same for reversing the list, that is, develop a method reverse(), again, **test driven**.

Note that you need to make decisions on the actual interface of the methods and the whole list while writing the test, as well as on how the anchor for the first element is stored and changed if necessary.
The ruby version features a special first element, which allows for empty lists. Feel free to change the Java version to that, or the Ruby version back to the simple form.

Note down your decisions and reasonings behind them in your lab report.


Don't forget to refactor and clean up your code after the Tests are running, and experiment with different implementations for both methods.

## Lab Writeup


Submit your Report as PDF to moodle. If you want to, you can include all source code in a single zip file. You can upload up to two files to moodle - the pdf and the source code zip file.
