---
title: 'Info2: Exercise 02: Implementing CRC Cards'
author: kleinen
layout: lab
draft: false
---

## Pre-Lab

This exercise builds on the design you did last week using CRC cards. Please think through the following questions together with your team before coming to the lab and write down your answers somewhere.

***P1.*** What part of the data do you need to save in order to persist the game status for one player?

***P2.***  Re-consider your CRC cards and sort the requirements in sections that should be implemented together,
e.g. because they all deal with Items or with Exits.

***P3.*** Prepare a prioritized subset of features that you would like to implement.

You will only need to implement a part of the requested features (the bored may do all if they wish).

## Assignment

1. Compare and Discuss your CRC Cards with other Groups during the Lab.

2. Decide on at least two of the features described in the [previous lab]({{<ref "./lab-01/#cool-zuul">}} "Lab 01").

3. You may team up with other groups to implement parts of the whole feature set together, which will
   require agreement on the design and some communication about the exact interfaces (method signatures) of
   shared classes.

4. Make sure that all your code is within one or two or more neatly named *packages* and you have at least one unit test.

## Important Notes

- Implementing **Multiplayer**  
  A note on the Multiple Players requirement: we will turn CoolZuul in a real
  online multiplayer dungeon using threads and socket communication in
  {{% link title ="Exercise 04 - Chatterbox" link = "lab-04" %}}.  

  For this assignment, it suffices if you prepare this by implementing a
  mechanism to store multiple players in the game and the notion of executing
  all commands in the context of an active player.  

  If you want to try it out, you might add a command "player xy" which switches
  to the player with the (user)name xy.

- Implementing **Persistence**  
  The repository already contains a mechanism to load the world from a [YAML](https://en.wikipedia.org/wiki/YAML)
  file and store it back. You can and should extend this solution.

## For the bored:

1. Implement [more or all features]({{<ref "./lab-01/#cool-zuul" >}}) or integrate
   the work of several teams to get a full solution.

## Repository for this lab

[https://github.com/htw-imi-info2/lab02-cool-zuul](https://github.com/htw-imi-info2/lab02-cool-zuul)

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs](https://bkleinen.github.io/classes/ss2020/info2/labs/) page.

Additional requirements for this lab:
* Answer the following questions: Did you end up using all of the classes you specified? Did you miss any classes? Discuss!
