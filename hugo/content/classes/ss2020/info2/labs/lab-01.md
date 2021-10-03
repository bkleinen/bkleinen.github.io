---
title: 'Info2: Exercise 01: Application Design'
author: kleinen
layout: lab
---

## Pre-Lab

Remember to do all the necessary steps listed on the [Labs](..) page, including the following exercises:

***P1.*** How do you obtain tickets to go see a movie? Write down the steps that you take, in order.

***P2.*** If you have tickets and have to cancel, what do you have to do? Write down the steps, in order.

***P3.*** Find out what the *Class-Responsibility-Collaboration Card method* is, what the use of CRC Cards is and how they are created. The following resources can be of help:
* [The method of CRC cards and the context of OOP](https://c2.com/doc/oopsla89/paper.html)
* [Example CRC cards and how to create CRC Cards](https://www.agilemodeling.com/artifacts/crcModel.htm)

## Assignment: CRC Cards

### 1. Identify Class and Method Candidates
We are going to assume that there have been several meetings with the operators of a cinema who want to have a system to handle the bookings of seats for their movie screenings. The operators have described the expected functionality, but we won't be concerned with how that happens, this is called Requirements Engineering and will be discussed in the third semester in Info3. Assume that this is the description written (adapted from Barnes/Kölling):

*The cinema booking system should store seat bookings for multiple theaters. Each theater has seats arranged in rows. There can be a different number of seats in every row. Customers can reserve seats, and are given a row number and a seat number. They may request bookings of several adjoining seats. Each booking is for a particular show (that is, the screening of a given movie at a certain time). Shows are at an assigned date, time, and price, and are scheduled in a theater where they are screened. The system stores the customer's name and telephone number. The customer is told what the booking will cost when the tickets are picked up.*

The first step is to discover some candidate classes and methods.

A simple method to discover candidates for classes, introduced by Abbott (1983),
and later popularized by Booch (e.g. Booch 2004, P 136) is the following:

  * Underline all the nouns (in an English language text) in one color, such as blue
  * Underline all the verbs in another color, such as red
  * Underline all the adjectives in a third color, such as green.

The nouns are candidates for classes, the verbs for methods and the adjectives for attributes/fields.

Be aware that this method has later been critized for not beeing a rigourous approach and only being useful for simple problems, and that you get possible *candidates* for classes and methods - not every noun will be a class name in your application!

### 2. CRC Cards

#### Preparation
Make CRC cards for each of your candidate classes. Only put down the class names for now.

*Note: In this semester you'll have to do this online. You can use the [HTW Cloud](https://cloud.htw-berlin.de), [IMIPad](https://imipad.f4.htw-berlin.de:9001) or another tool that allows online in-time-editing of a file by multiple people.*

#### Scenario 1: Making a reservation
The first scenario that we will be doing is a reservation:

*Jane Doe goes to the Cinema Site and wants to make a reservation for two seats to watch Inglorious Basterds at 8 pm.
Jane is interacting with the booking system, which may or may not be represented by a class such as CinemaBookingSystem. Using the CRC cards, play through the scenario. How does the system find the show? As you discover responsibilites and collaborators, write them down on the cards. Assume there are plenty of free seats. Jane will choose seats 13 and 14 from row 12.*

The reservation is now made. How is this done, exactly? What data is going to have to be stored? Where? If you feel the need to create a new class, feel free to do so! If you discover that a class needs to be split in two - make two new cards and rip up the old one. If two need to be merged, do so. Keep a list of things you want to keep track of.

#### Scenario 2
Choose another scenario and play this through. If you have time, do more! Here are some suggestions for possible scenarios:

1. Jane has a booking and needs another two, adjoining seats.
2. Mary wants to book 4 seats together, but there are not 4 adjoining seats available.
3. Joseph wants to book, but there are no seats available.
4. Otto has a booking he wants to cancel.

### 3. Tooling: Dip a toe into IntelliJ
Download IntelliJ from https://www.jetbrains.com/idea/ and install it. Create a first project with one class that prints out "Hello" on the command line, or does something else. Add a main() method. Add an unit test class and a test, and make sure you know how to run both the main() method as well as the unit test in IntelliJ.
* [These tutorial videos](https://www.jetbrains.com/idea/documentation/) can be of help.
* And you can also find information on installing, creating projects, adding unit tests and much more at [the IntelliJ documentation](https://www.jetbrains.com/help/idea/installation-guide.html).

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

Additional requirements for this lab:
* Please submit your final CRC cards and a description of the process you went through for creating them.
