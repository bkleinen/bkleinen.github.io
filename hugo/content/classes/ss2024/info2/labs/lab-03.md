---
title: 'Lab 03: Implementing CRC Cards'
author: kleinen/fernsel
layout: lab
draft: false
weight: 030
---

## Learning Goals

After this lab you should be able to agree with each of the following statements. This looks like a lot, but it is all repetition from what you learned in Info1. Ideally you agree with each statement even before starting the lab. 

I remember programming concepts concerning classes and objects:
* I know the difference between classes and objects. 
* I can instantiate an object. 

I remember programming concepts concerning fields and variable types:
* I can add fields to a class. 
* I can manage modification of fields with mutator(setter) methods. 
* I can manage reading of fields with accessor(getter) methods. 
* I can use collections for storing elements. 
*  ~~I am familiar with the idea of a linked list.~~
* I am familiar with the idea of a map. 

I remember programming concepts concerning methods:
* I can define the return type of a method. 
* I can set the visibility modifier of a method. 
* I can add parameters to a method signature. 
* I can call methods of objects. 
* I can call static methods of classes. 

I remember concepts concerning program design:
* I use separate classes for separate concerns. 
* I can abstract from concrete scenarios. 
* I can apply modularization, creating classes that can be reused in various scenarios. 
* I have a strategy for refactoring given code to make it fit new needs. 

## Pre-Lab

This exercise builds on the design you did last week using CRC cards. Please think through the following questions together with your team before coming to the lab and write down your answers somewhere.

***P1.*** Prepare a prioritized subset of features that you would like to implement.

***P2.*** Re-consider your CRC cards and sort the requirements in sections that should be implemented together,
e.g. because they all deal with Students and/or with Courses.

***P3.*** Prepare a repository either on github or gitlab which is private (not publicly visible):
- On GitHub, you need to register as a student/in the educational program to get free access to private repositories.
- Instructions for GitLab will follow.

***P4.*** We've discussed in class wether Students should store a list of their classes or Classes should store a list of their students.
   If Classes store a list of students, how many items need to be searched if you want to compose a list of classes for one student?

You will only need to implement a part of the requested features (the bored may do all if they wish).

## Assignment


1. Compare and Discuss your CRC Cards with other teams during the Lab.

2. Implement the features you prepared with CRC Cards in the [previous lab]({{<ref "./lab-01/#cool-zuul">}} "Lab 01").

3. You may team up with other teams to implement parts of the whole feature set together, which will
   require agreement on the design and some communication about the exact interfaces (method signatures) of
   shared classes.

4. Make sure that all your code is within one or two or more neatly named *packages* and you have at least one unit test.

5. Answer the following questions: Did you end up using all of the classes you specified? Did you miss any classes? Discuss!

6. Include your answer for P4 in your lab report.

### For the bored:

7. Implement [more or all features]({{<ref "./lab-01/#cool-zuul" >}}) or integrate
   the work of several teams to get a full solution.


## Lab Report / What to turn in

All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

For this lab, you need to hand in 
- a lab report in pdf
- the link to your git repository as plain text

