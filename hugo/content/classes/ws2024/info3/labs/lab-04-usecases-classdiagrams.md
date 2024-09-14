---
title: '4 - Use Cases and Class Diagrams Part I'
author: kleinen
layout: page
draft: true
weight: 40
---

![Table](../images/study-partner.jpg "pumpkins")
<small class = "float-right">Foto by [Marvin Meyer](https://unsplash.com/photos/SYTO3xs06fU)</small>


## Pre-Lab

### 1. Know what the lab is about

In this exercise you will do the first part of working on a 
- Use Case Diagram
- Scenarios
- A Class Diagram
for an application called "StudyPartner". 



#### 2.  Study Partner App

The Product Manager has asked you to design and develop the app for IMI:

 **Study Partner** is planned to be an application where IMI-Students can find and meet fellow IMI-Students for various kinds of joint study activities. 

IMI-Students can find other IMI-Students to study together. This can be either for
1. Joint Study: study a specific topic or for a specific exam together
2. Body Doubling: study / work together at the same time for mutual accountability and motivation, either in a face-to-face meeting or via video conferencing (called body-doubling in the ADHD community)
3. Exchange: find other students for either exchange about a specific topic or even planning a joint project together (e.g. Independent Courework, practical project, bachelors/masters thesis)
4. Tandem: find other student(s) that can help with one thing and offer help with something different as exchange.


Users of the StudyPartner Application need to be able to search for existing offers on the site and post their own request/offer. These are called Requests, and according to the four abovementioned categories, they may be time-based or topic-based.

Depending on the Category of the Request, they need to be able to enter additional information for the Request:
- Topic
- Location or Video Conference information
- TimeSlot for Body-Doubling (this should be a concrete short time span, which might be recurring weekly during a semester)
- Topic and Longer Description for Exchange
- Request and possible offers for Tandem

Students can then take an Offer. After the offer is taken, it can be decided wether others can still join the group or if the group is closed.

As the Study Partner app is exploratory, students should be asked to write a review about their experiences and improvement suggestions after the meeting has taken place.

Administrators can see anonymous overviews of requested and actual Meetings and Topics, to 
reflect on the usage and requirements for support of IMI-Students.


#### 3. CRC-Cards

We will do the booch method and [crc cards](http://agilemodeling.com/artifacts/crcModel.htm) in class.

### 4. Learn about Use Cases
Read and understand the following information about Use Cases:

Use-cases are a szenario-based technique for requirements elicitation. They were first proposed by Ivar Jacobsen as part of his Objectory methodology. There are many different variations on use cases, but the basic idea is to record the situation in which something happens, explain what should happen, and describe any exceptional circumstances which might arise.

In a scenario you describe a concrete use of the proposed system, using the names of a proposed user. In the use case we abstract away from the concrete situations in the scenarios and try and describe the general case. We have **user roles** and system **functionality** , which are depicted in diagrams as little stick figures and circles, respectively:

  ![Example use case diagram](../images/usecase.png)

An actor is something or someone that interacts with the target system to produce an observable result. There are active and passive actors. They are usually drawn with a stick figure.

A [use case][2] is an instance of how an actor would use a software system or a service offered by the system. More than one actor can participate in a use case. We draw use case diagrams to visualize the use cases and write out the use cases using templates. Use case diagrams are decorated with the name given to the use case. A scenario will typically describe the sequence of concrete activities that happen when a user is interacting with the proposed system. It is a detailed, step-by-step description of observable behaviors - that is, it does not describe the internal workings of the machine, but what a user can observe from the outside. We are not worried about how it will be done on the inside, but instead just want to see if the use of the system makes sense. We can branch inside a scenario using an **if** statement and can repeat steps using a **while** statement. A scenario will not have exceptional conditions. If it is describing one such exceptional interaction, then it explains each step of what happens. A scenario also does not extend another scenario - it just describes what happens in this concrete instance. We give **names** to scenarios, so that we can talk about them. The name should somehow be connected to the use case it is describing. Then we describe any **precondition** that must hold before the scenario can commence. For example: The user has a valid EC card. Then the sequence of steps is listed, followed by a **postcondition** describing what must hold at the end of the scenario. For example, the account linked to the EC card has been debited by 100 Euros and the user now has 100 Euros cash in her hands and the card is now marked as having been used on the current day.

![ATM](../images/atm_12698012964_429981292c_z.jpg)
https://www.flickr.com/photos/smemon/12698012964/


| Name              | ATM Cash Withdrawal                                                                                                                                                   |
|:------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Precondition      | Emmy has an EC card with a readable magnetic stripe & the EC card is valid & the EC card is linked to an account with this bank                                       |
| Sequence of steps | 1. Emmy puts her card in the magnetic card reader.                                                                                                                    |
|                   | 2. A screen appears asking the user what she wants to do.                                                                                                             |
|                   | 3. She points to "display balance" on the screen.                                                                                                                     |
|                   | 4. The machine displays the balance and a continuing menu.                                                                                                            |
|                   | 5. Emmy selects "other actions".                                                                                                                                      |
|                   | 6. Emmy selects "withdrawal".                                                                                                                                         |
|                   | 7. The machine asks for the PIN number.                                                                                                                               |
|                   | 8. Emmy enters her PIN and presses the green button.                                                                                                                  |
|                   | 9. The machine asks how much money she wants.                                                                                                                         |
|                   | 10. Emmy selects the button labelled 150 Euros.                                                                                                                       |
|                   | 11. If (Emmy has enough money in her account) then Money is prepared for dispensing                                                                                   |
|                   | 12. Else (Error screen is displayed)                                                                                                                                  |
|                   | 13. The machine returns her EC card.                                                                                                                                  |
|                   | 14. If (Money ready for dispensing) then Money is dispensed.                                                                                                          |
| Postcondition     | Emmy is in possession of her card and 150 Euros & the bank account linked to this card has had 150 Euros deducted & the card is now marked as having been used today. |


There are also scenarios sometimes referred to as "secondary scenarios" which describe alternate paths. They have their own name, the name of the scenario to which they are referring, and a description of the problem or alternative faced.


| Name              | Invalid PIN                                                                                                                                   |
|:------------------|:----------------------------------------------------------------------------------------------------------------------------------------------|
| Scenario based on | ATM Cash Withdrawal                                                                                                                           |
| Exception         | Repeat steps 7 and 8 twice if the user enters in an invalid PIN. If the third time still does not give the correct PIN, then retain the card. |

A number of scenarios are usually collected and abstracted into a Use Case and expressed graphically by a Use Case Diagram. The elements of a Use Case often include:

    1. Name of the use case
    2. Summary
    3. Actors involved
    4. Basic sequence of steps
    5. Alternate sequence
    6. Exceptions that can occur
    7. Extension points
    8. Trigger
    9. Assumptions
    10. Preconditions
    11. Postconditions
    12. Author and Date

You should realize that every author and every company have their own ways of describing Use Cases, but usually each of these aspects are addressed. We will be using the structure given here.

## Assignment

This Assignment runs over two weeks, with the second week being a refinement of your work in the first week aided by our reviews in the second lab. Don't worry too much about
what you do (and hand in) for the first week and for the second week, but make sure that
you definitely start working in the first week to have something to review the week after!

### Part 1: Use Cases

#### Week 1: 
Identify the use cases in the Study Partner App description and draw a use case diagram.

In the pre-lab you read how to write the Use Case Scenarios. In addition to the use case scenarios, it might help if you draw a quick sketch (low fidelity, black and white) of the screen layout, as it is not as straightforward as with the ATM in the example.

#### Week 2:

Then, pick the most important (or interesting) use case. Write down a detailed scenario for that use case (see below). Choose a different use case for each person such that you get a couple covered (that is, everyone has to write a different use case scenario!)

### Part 2: Class Diagram

Then, draw a Class Diagram for your application.  As a good introduction to Class Diagrams, I recommend [the one on Scott Ambler's site](https://www.agilemodeling.com/artifacts/classDiagram.htm).

#### Week 1:

For week 1, it is sufficient that you put the classes identified so far in a class diagram.

#### Week 2: 

Refine your Class Diagram.
It should contain associations (aggregations and compositions, association classes as needed), generalizations, as well as the most important fields and method names of the classes.

## Results Submission
* Hand in a lab report (including your diagrams)

More info on the [Labs](..) page.

----

Based on Exercise01 by Prof. Dr. Debora Weber-Wulff

[2]: https://msdn.microsoft.com/en-us/library/dd409427.aspx
[3]: https://people.f4.htw-berlin.de/~weberwu/se/Labs/Ex1.shtml
[4]: https://www.f4.htw-berlin.de/~weberwu/
