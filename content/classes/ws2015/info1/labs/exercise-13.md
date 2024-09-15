---
title: 'Exercise 13: CRC Cards'
author: kleinen
layout: lab
---
## Pre-Lab

Please bring these exercises P1 and P2 printed out or written out with you to lab.
Please have your name on your page.

***P1.*** How do you obtain tickets to go see a movie? Write down the steps that you take, in order.

***P2.*** If you have tickets and have to cancel, what do you have to do? Write down the steps, in order.

***P3.*** Read up on the
[Class-Responsibility-Collaboration Card method (CRC Cards)](https://c2.com/doc/oopsla89/paper.html).
This must be read before class, as you will not be able to do the exercise if you have no idea what this is.


## Assignment: CRC Cards

### 1. Identify Class and Method Candidates

We are going to assume that there have been several meetings with the operators of a cinema who want to have a system to handle the bookings of seats for their movie screenings. The operators have described the expected functionality, but we won't be concerned with how that happens, this is called Requirements Engineering and will be discussed in the third semester in Info3. Assume that this is the description written (adapted from Barnes/Kölling):

The cinema booking system should store seat bookings for multiple theaters. Each theater has seats arranged in rows. There can be a different number of seats in every row. Customers can reserve seats, and are given a row number and a seat number. They may request bookings of several adjoining seats. Each booking is for a particular show (that is, the screening of a given movie at a certain time). Shows are at an assigned date, time, and price, and are scheduled in a theater where they are screened. The system stores the customer's name and telephone number. The customer is told what the booking will cost when the tickets are picked up.

The first step is to discover some candidate classes and methods.

A simple method to discover candidates for classes, introduced by Abbott (1983),
and later popularized by Booch (e.g. Booch 2004, P 136) is the following:

  * Underline all the nouns (in an English language text) in one color, such as blue
  * Underline all the verbs in another color, such as red
  * Underline all the adjectives in a third color, such as green.

The nouns are candidates for classes, the verbs for methods and the adjectives for attributes/fields.

Be aware that this method has later been critized for not beeing a rigourous approach and only being useful for simple problems, and that you get possible ***candidates*** for classes and methods - not every noun will be a class name in your Application!

### 2. CRC Cards

Make CRC cards for each of your candidate classes. Only put down the class names for now.

#### Scenario 1: Making a reservation
The first scenario that we will be doing is a reservation:
Jane Doe goes to the Cinema Site and wants to make a reservation for two seats to watch Inglorious Basterds at 8 pm.
Jane is interacting with the booking system. Using the CRC cards, play through the scenario. How does the system find the show? As you discover responsibilities and collaborators, write them down on the cards. Assume there are plenty of free seats. Jane will choose seats 13 and 14 from row 12.

The reservation is now made. How is this done, exactly? What data is going to have to be stored? Where? If you feel the need to create a new class, feel free to do so! If you discover that a class needs to be split in two - make two new cards and rip up the old one. If two need to be merged, do so. Keep a list of things you want to keep track of on a separate piece of paper.

#### Scenario 2

Choose another scenario and play this through. If you have time, do more! You will submit your final CRC cards and a description of the process you went through, in complete sentences. Here are some suggestions for possible scenarios:

1. Jane has a booking and needs another two, adjoining seats.
2. Mary wants to book 4 seats together, but there are not 4 adjoining seats available.
3. Joseph wants to book, but there are no seats available.
4. Otto has a booking he wants to cancel.

## Lab Report / What to turn in

Your report is due the night before your next lab; refer to Moodle for
exact times.

Include the Classes, Responsibilities and Collaborators you've found, as well as a report of your process.
