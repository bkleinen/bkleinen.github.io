---
title: 'outtake --- Lab 03: Implementing CRC Cards - Cool Zuul Version'
author: kleinen/fernsel
layout: lab
draft: true
weight: 930
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

***P1.*** What part of the data do you need to save in order to persist the game status for one player?

***P2.***  Re-consider your CRC cards and sort the requirements in sections that should be implemented together,
e.g. because they all deal with Items or with Exits.

***P3.*** Prepare a prioritized subset of features that you would like to implement.

You will only need to implement a part of the requested features (the bored may do all if they wish).

## Assignment

*Note: Remember to use GitLab for the development of your project. Clone the source project, add a new project in GitLab 
and push to that project like it was done in Lab00.*

1. Compare and Discuss your CRC Cards with other teams during the Lab.

2. Implement the features you prepared with CRC Cards in the [previous lab]({{<ref "./lab-01/#cool-zuul">}} "Lab 01").

3. You may team up with other teams to implement parts of the whole feature set together, which will
   require agreement on the design and some communication about the exact interfaces (method signatures) of
   shared classes.

4. Make sure that all your code is within one or two or more neatly named *packages* and you have at least one unit test.

### Important Notes

- If you implement a **Multiplayer**  
  A note on the Multiple Players requirement: we will turn CoolZuul in a real
  online multiplayer dungeon using threads and socket communication in
  {{% link title ="Exercise 04 - Chatterbox" link = "lab-04" %}}.  

  For this lab, if you chose to implement the multiplayer requirement, it suffices if you prepare this by implementing a
  mechanism to store multiple players in the game and the notion of executing
  all commands in the context of an active player.  

  If you want to try it out, you might add a command "player xy" which switches
  to the player with the (user)name xy.

- If you implement **Persistence**  
  The repository already contains a mechanism to load the world from a [YAML](https://en.wikipedia.org/wiki/YAML)
  file and store it back. You can and should extend this solution.

### For the bored:

5. Implement [more or all features]({{<ref "./lab-01/#cool-zuul" >}}) or integrate
   the work of several teams to get a full solution.

## Repository for this lab

[https://github.com/htw-imi-info2/lab02-cool-zuul](https://github.com/htw-imi-info2/lab02-cool-zuul)

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

Additional requirements for this lab:
* Answer the following questions: Did you end up using all of the classes you specified? Did you miss any classes? Discuss!
