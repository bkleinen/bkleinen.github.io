---
title: 'Info2: Exercise 02: Implementing CRC Cards'
author: kleinen
layout: lab
---
## Pre-Lab

This exercise builds on the design you did last week using CRC cards. Please think through the following questions together with your team before coming to the lab and write down your answers somewhere.

***P1.*** What properties should a data structure have that can model movie theater seats?

***P2.*** Given an n x m matrix and a cell c in (r, c). How do I reference the neighboring cells in the same row? In the same column? How do I reference the diagonal cells?

## Assignment
1. Implement a prototype of your cinema booking system. You should be able to reserve n neighboring seats, calculate the total price for this reservation, delete a booking, and print out a seating plan that shows which seats are available. Don't worry about making it beautiful - it is enough for it to work. We are just making prototypes!

2. Make sure that all your code is within one or two or more neatly named *packages* and you have at least one unit test.

## For the bored:
3. Sometimes people want special kinds of seats. The last two rows have loveseats, that is, two seats are connected with no armrest between them. Now offer your customers the possibility of reserving a loveseat, or a seat near an aisle or one in the middle. How will you define these conditions?

4. Assume your theater is very large and is divided into sections, each accessable by an aisle. How do you have to adjust your seating plan and your conditions - is this hard or easy to do?

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

Additional requirements for this lab:
* Answer the following questions: Did you end up using all of the classes you specified? Did you miss any classes? Discuss!
