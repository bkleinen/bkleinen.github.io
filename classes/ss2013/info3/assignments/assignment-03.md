---
title: 'Assignment 03 - Gilded Rose Patterns and Sequence Diagrams'
author: kleinen
layout: page
---

# Reading Assignment for Friday, May 3rd 2013:

For this week's lecture and especially the exercise, you will need some knowledge about sequence diagrams, and the Patterns Strategy, Factory, Factory method, Abstract Factory and Template Method.

Here are some good sources:

 *  Sequence Diagrams: Sample Chapter from Fowler's UML distilled: [https://www.informit.com/articles/article.aspx?p=169507&seqNum=2 ][1]- Please read the full chapter.
 *  Strategy Pattern:  - make sure you understand the pattern.
 *  Template Method: we talked about that in class (Sandy Metz Ruby example!), but you can look it up here: 
 *  Factory Patterns: You don't need to read all of the following web pages, but make sure you understand the idea of Factories (german wikipedia might also be helpful with this) and the distinction between the different factory patterns.
 *  Factory, ,
 *  Factory Method[ https://www.oodesign.com/factory-method-pattern.html][2]
 *  Optional:
 *  Abstract Factory[ https://www.oodesign.com/abstract-factory-pattern.html][3]
 *  Abstract Factory from the GoF-Book 

Please read them before coming to class on Friday, as we will work with these topics in class.

# Assignment: Gilded Rose Refactoring and enhancement

Download and Install the source code for this exercise:

(removed)

you can import it as a new project into your Eclipse Workspace, either as Java Project or as a Maven Project.

It contains:

 *  the [original GildedRose implementation][4]
 *  [a stub for a GildedRose version with Inheritance][5]
 *  [a stub for a GildedRose version using the strategy pattern][6]
 *  [an abstract parameterized test class with subclasses for all three implementations][7]


Have a look at the provided classes and run the tests. The [GildedRoseTestOriginal][8] should pass, the others will fail as the stubs only implement a basic updateQuality.

## 1. Sequence Diagram

Draw a sequence diagram for GildedRoseTestOriginal starting with the test() method in GildedRoseTest.

## 2. Complete the Inheritance and Strategy Implementations

 Complete the inheritance and strategy implementation stubs **test driven**. That is, run the tests and implement the first failing test, until all tests pass.

## 3. Implement the Conjured Requirement in all three implementations

First, switch on the testing for conjured items by setting INCLUDE\\_CONJURED\\_TEST\_CASES to true in [GildedRoseTest][7] which adds three test cases for conjured items. Then implement the failing tests.

## 4. Reflection on implementations

 Draw sequence diagrams for both the inheritance and the strategy implementation starting at the call to GildedRose.updateQuality().

 Write a short reflection (3-4 sentences) on what you needed to do to implement the new requirement in the different implementations.

## 5. Patterns in the Gilded Rose

Apart from the Strategy Pattern in the Strategy Pattern implementation/refactoring, which patterns can you identify in the completed GildedRose implementations? There are at least 2 patterns, one of them in more than one place, in the source code provided, plus patterns you might have used.

# Submission

Upload a PDF with your answers to the questions and the sequence diagrams. There is no need to upload your source code.

[1]: https://www.informit.com/articles/article.aspx?p=169507&seqNum=2
[2]: https://www.oodesign.com/factory-method-pattern.html
[3]: https://www.oodesign.com/abstract-factory-pattern.html
