---
title: 'Exercise 03 - Class Diagrams'
author: kleinen
layout: page
---

 ![LED Pumpkin](../../images/led-pumpkin.jpg "pumpkins")

In this exercise you will create a Class Diagram for the HTW Application.
You should work on this exercise in a team of 2-4 people.

Based on the system description in the [last exercise](../lab-02) and the use
cases you've developed,
draw a Class Diagram for your Application. It should contain associations (aggregations and compositions, association classes as needed), generalizations (inheritance), as well as the most important fields and method names of the classes.
## Prelab
Please do read this Introduction to class diagrams before coming to lab!
[UML2 Class Diagrams at Agile Modeling](https://www.agilemodeling.com/artifacts/classDiagram.htm) - I will only give a brief intro/Q&A to class diagrams in the lab.

## Assignment

A simple method to discover candidates for classes, introduced by Abbott (1983),
and later popularized by Booch (e.g. Booch 2004, P 136), but critized for not beeing a rigourous approach and only be useful for simple problems, is the following:

  * Underline all the nouns (in an English language text) in one color, such as blue
  * Underline all the verbs in another color, such as red
  * Underline all the adjectives in a third color, such as green.

The nouns are candidates for classes, the verbs for methods and the adjectives
for attributes/fields. Then use the CRC Method (Beck & Cunningham, 1989) to sort
all these and produce the design:

Take a lot of pieces of paper, and write each noun at the top of one of the pieces of paper and draw a line all across the paper underneath the word. The red words make good methods - they just need to be assigned to classes. Divide the rest of the paper in two pieces - write the verbs on the bottom part. Decorate with attributes as deemed necessary, which get written on the top piece. The green words can be attributes or relationships - distribute them accordingly. Does your diagram make sense? Resort the cards and the methods, making new cards and ripping up the old ones, until finally your diagram seems to be consistent.

You need to find the right level of abstraction - level of detail - in your diagram. You don't need to put everything in there!
After your design is finished, draw it using a class diagram drawing tool or simply on paper and scan or fotograph it to include it in the report.

## Lab Report

Turn in a Lab Report including the names of all people involved, time needed for completion and reflecting the mayor points of discussion while working on the class design. Last not least include the class design itself.

### References

Russell J. Abbott. 1983. Program design by informal English descriptions. Commun. ACM 26, 11 (November 1983), 882-894. https://doi.acm.org/10.1145/182.358441

K. Beck and W. Cunningham. 1989. A laboratory for teaching object-oriented thinking. SIGPLAN Not. 24, 10 (September 1989), 1-6. [Available Online](https://c2.com/doc/oopsla89/paper.html)

Grady Booch. 2004. Object-Oriented Analysis and Design with Applications (3rd Edition). Addison Wesley Longman Publishing Co., Inc., Redwood City, CA, USA.

LED Pumpkin by [Windell Oskay](https://www.flickr.com/photos/oskay/283388408/)
