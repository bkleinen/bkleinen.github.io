---
title: 'Lab 01: Application Design'
author: kleinen
draft: false
weight: 010
---
{{< figure src="/images/classes/info2/crc-cards.jpg" caption="CRC Cards">}}

## Learning Goals

After this lab you should be able to agree with each of the following statements.

I can use CRC Cards to design an application:
* Using the underline methods, I can identify candidates for classes, methods and fields. 
* By working through scenarios I can identify cases where a class needs to be split up. 
* By working through scenarios I can identify cases where classes need to be merged. 
* By working through scenarios I can identify cases where additional classes need to be added. 
* By working through scenarios I can identify what data needs to be stored. 

## Pre-Lab


***P1.*** Find out what the *Class-Responsibility-Collaboration Card method* is, what the use of CRC Cards is and how they are created. The following resources can be of help:
* [The method of CRC cards and the context of OOP](http://c2.com/doc/oopsla89/paper.html)

## Assignment: CRC Cards

### 1. Background and Requirements: HTW's LSD App

In order to ease Class Management, a Berlin based start-up called HTW (Holistic Teaching Web) asks your team to develop a cool new app that allows
the management of university classes, especially the registration and enrolment of students in Courses.

The new App, which will be called "LSD" (Lehre, Studium, Daten) and should have the following features:
- At the beginning of the semester classes should be published in the LSD app.
- Students can then register for Courses.
- Spots in courses are assigned by availability following certain rules, which are described [here](https://www.htw-berlin.de/en/studies/organising-your-studies/module-registration/) and [here in german](https://www.htw-berlin.de/studium/studienorganisation/kursbelegung/).
- the course enrolment app keeps track of subsequent registrations. 
- if there are more registrations than places, the decision is made by drawing lots.
- if a class has a lecture ans labs in smaller groups, students should be able to choose the lab they want to attend and be able to register accordingly.
- administration should be able to monitor class registrations in order to detect the need for organizational changes, eg. Opening of additional labs or courses.

- at the end of the term, teaching staff can add grades for the students who attended the class
- these grades can be printed out as a grade report summing up the achieved credit points.

Feel free to alter or extend these requirements. Who are the users of LSD? what will be their use cases - what tasks will they try to do with the system? 


### 2. Identify Class and Method Candidates

The first step is to discover some candidate classes and methods.

A simple method to discover candidates for classes, introduced by Abbott (1983),
and later popularized by Booch (e.g. Booch 2004, P 136) is the following:

  * Underline all the nouns (in an English language text) in one color, such as blue
  * Underline all the verbs in another color, such as red
  * Underline all the adjectives in a third color, such as green.

The nouns are candidates for classes, the verbs for methods and the adjectives for attributes/fields.

Be aware that this method has later been criticized for not being a rigorous approach and only being useful for simple problems, and that you get possible *candidates* for classes and methods - not every noun will be a class name in your application!


### 3. CRC Cards

#### Preparation

Get a pack of A6 index cards or simply cut A4 papers twice.
Make CRC cards for each of the existing classes as well as of your candidate classes.
Only put down the class names for now.

It is really important that you use individual cards! You will need and want to
move them, discard them, replace them. See the picture above!

#### Work through the Scenarios

The examples above how it should be able to interact with LSD constitute
scenarios. Work through them and refine your CRC cards based on what you discover.
Ask these questions:

How is this done, exactly?
What data is going to have to be stored? Where?
If you feel the need to create a new class, feel free to do so!
If you discover that a class needs to be split in two - make two new cards and rip up the old one.
If two need to be merged, do so.
Keep a list of things you want to keep track of.

Some of the requirements may need to be clarified by writing down an interaction
example first.

#### Don't worry about the Implementation!

This assignment is about design - you just need to identify that there is
something that needs to be taken care of somewhere; without making decisions
about the implementation just yet.


## Lab Report / What to turn in

All info on the lab reports can be found on the [Labs]({{<ref "../labs" >}}) page.

Additional requirements for this lab:
* Please submit your final CRC cards and a description of the process you went through for creating them.
