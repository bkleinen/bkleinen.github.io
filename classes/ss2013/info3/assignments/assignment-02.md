---
title: 'Assignment 02 - Use Cases and Class Diagrams'
author: kleinen
layout: page
---


In this exercise you will create a description, develop a detailed Scenario for a Use Case, and draw a Class Diagram for your Web Application. First, write a detailed description what your application should do (in English or German, as you like) as the[one for the HorseTravelWorld in the old exercise][1]. Then, pick the most important (or interesting) use case. For HTW, that might be the Use Case of a User booking a trip, or of a user browsing for trips, or of a user contributing a review. Write down a detailed scenario for that use case (see below). If you work on this in a group, choose a different scenario for each person such that you get a couple covered (that is, everyone has to write an own scenario!) Last, draw a Class Diagram for your Application. It should contain associations (aggregations and compositions, association classes as needed), generalizations, as well as the most important fields and method names of the classes. As last fortnight, include the Lab report in your submitted PDF. You can draw all diagrams by hand and include scans or photos in your PDF. If you feel you need to, you can also use an UML Tool for that. We will discuss UML Tools in the Lab. &ndash; about Use Cases &ndash; Use-cases are a szenario-based technique for requirements elicitation. They were first proposed by Ivar Jacobsen as part of his Objectory methodology. There are many different variations on use cases, but the basic idea is to record the situation in which something happens, explain what should happen, and describe any exceptional circumstances which might arise.

In a scenario you describe a concrete use of the proposed system, using the names of a proposed user. In the use case we abstract away from the concrete situations in the scenarios and try and describe the general case. We have **user roles** and system **functionality** , which are depicted in diagrams as little stick figures and circles, respectively:

  ![Example use case diagram](https://people.f4.htw-berlin.de/~weberwu/se/media/Stickfigures.png)

| An [actor](https://en.wikipedia.org/wiki/Actor_%28UML%29) is something or someone that interacts with the target system to produce an observable result. There are active and passive actors. They are usually drawn with a stick figure. | ![Stickwoman picture](https://people.f4.htw-berlin.de/~weberwu/se/media/Stickwoman.gif) |

A [use case][2] is an instance of how an actor would use a software system or a service offered by the system. More than one actor can participate in a use case. We draw use case diagrams to visualize the use cases and write out the use cases using templates, such as the one given in [Wikipedia][2]. Use case diagrams are decorated with the name given to the use case. A scenario will typically describe the sequence of concrete activities that happen when a user is interacting with the proposed system. It is a detailed, step-by-step description of observable behaviors &ndash; that is, it does not describe the internal workings of the machine, but what a user can observe from the outside. We are not worried about how it will be done on the inside, but instead just want to see if the use of the system makes sense. We can branch inside a scenario using an **if** statement and can repeat steps using a **while** statement. A scenario will not have exceptional conditions. If it is describing one such exceptional interaction, then it explains each step of what happens. A scenario also does not extend another scenario &ndash; it just describes what happens in this concrete instance. We give **names** to scenarios, so that we can talk about them. The name should somehow be connected to the use case it is describing. Then we describe any **precondition** that must hold before the scenario can commence. For example: The user has a valid EC card. Then the sequence of steps is listed, followed by a **postcondition** describing what must hold at the end of the scenario. For example, the account linked to the EC card has been debited by 100 Euros and the user now has 100 Euros cash in her hands and the card is now marked as having been used on the current day.

| Name              | ATM Cash Withdrawal                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|:------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Precondition      | Emmy has an EC card with a readable magnetic stripe & the EC card is valid & the EC card is linked to an account with this bank                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Sequence of steps | 1. Emmy puts her card in the magnetic card reader.<br/>2. A screen appears asking the user what she wants to do.<br/>3. She points to "display balance" on the screen.<br/>4. The machine displays the balance and a continuing menu.<br/>5. Emmy selects "other actions".<br/>6. Emmy selects "withdrawal".<br/>7. The machine asks for the PIN number.<br/>8. Emmy enters her PIN and presses the green button.<br/>9. The machine asks how much money she wants.<br/>10. Emmy selects the button labelled 150 Euros.<br/>11. If (Emmy has enough money in her account) then Money is prepared for dispensing<br/>12. Else (Error screen is displayed)<br/>13. The machine returns her EC card.<br/>14. If (Money ready for dispensing) then Money is dispensed. |
| Postcondition     | Emmy is in possession of her card and 150 Euros & the bank account linked to this card has had 150 Euros deducted & the card is now marked as having been used today.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |

There are also scenarios sometimes referred to as "secondary scenarios" which describe alternate paths. They have their own name, the name of the scenario to which they are referring, and a description of the problem or alternative faced.

| Name              | Invalid PIN                                                                                                                                   |
|:------------------|:----------------------------------------------------------------------------------------------------------------------------------------------|
| Scenario based on | ATM Cash Withdrawal                                                                                                                           |
| Exception         | Repeat steps 7 and 8 twice if the user enters in an invalid PIN. If the third time still does not give the correct PIN, then retain the card. |

A number of scenarios are usually collected and abstrated into a Use Case and expressed graphically by a Use Case Diagram. The elements of a Use Case often include:

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

You should realize that every author and every company have their own ways of describing Use Cases, but usually each of these aspects are addressed.We will be using the structure given here.  

Based on [Exercise01][3] by [Prof. Dr. Debora Weber-Wulff][4]


[2]: https://en.wikipedia.org/wiki/Use_case
[3]: https://people.f4.htw-berlin.de/~weberwu/se/Labs/Ex1.shtml
[4]: https://www.f4.htw-berlin.de/~weberwu/
