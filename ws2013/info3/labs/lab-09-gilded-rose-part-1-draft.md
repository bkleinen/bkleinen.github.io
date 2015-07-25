---
title: 'Exercise 09 - Legacy Code - Refactoring to Patterns Part 1'
author: kleinen
layout: page
---


![The Gilded Rose](../images/The_Gilded_Rose.jpg)
<small class = "float-right">The Gilded Rose, Trade District, [World of Warcraft.](http://www.wowwiki.com/Gilded_Rose)</small>

## Assignment: Gilded Rose Characterization Tests

In this first part of the two Gilded Rose exercises you will write characterization tests for the given gilded rose implementation. You will not yet refactor or add the required new functionality! This will be next week's exercise.


### Install and Run Tests
First, you need to install the Software and run the tests.
Download and Install the source code for this exercise. Upon request, you can do this exercise either in Ruby or in Java. (Or both).
In any case, you should have a look at the provided tests in both versions:

* the Ruby spec uses as Test DSL by Jim Weirich called [rspec-given](https://github.com/jimweirich/rspec-given)
* the Java Version uses [Parameterized Tests](http://junit.sourceforge.net/javadoc_40/org/junit/runners/Parameterized.html) that makes the individual test cases very compact.


### Ruby Version

* see instructions in the repo readme: [https://github.com/htw-imi-info3/gilded-rose-kata](https://github.com/htw-imi-info3/gilded-rose-kata)

Bundler will install simplecov. You'll find the html coverage report in

    coverage/index.html

### Java Version


http://update.eclemma.org/


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

First, switch on the testing for conjured items by setting INCLUDE\\_CONJURED\\_TEST\_CASES to true in [GildedRoseTest][7] which adds three test cases for conjured items. Then implement the failing tests.

## 4. Reflection on implementations

 Draw sequence diagrams for both the inheritance and the strategy implementation starting at the call to GildedRose.updateQuality().

 Write a short reflection (3-4 sentences) on what you needed to do to implement the new requirement in the different implementations.

## 5. Patterns in the Gilded Rose

Apart from the Strategy Pattern in the Strategy Pattern implementation/refactoring, which patterns can you identify in the completed GildedRose implementations? There are at least 2 patterns, one of them in more than one place, in the source code provided, plus patterns you might have used.

# Submission

Upload a PDF with your answers to the questions and the sequence diagrams. There is no need to upload your source code.

[1]: http://www.informit.com/articles/article.aspx?p=169507&seqNum=2
[2]: http://www.oodesign.com/factory-method-pattern.html
[3]: http://www.oodesign.com/abstract-factory-pattern.html
[4]: https://github.com/info3/assignment\_3/blob/master/GildedRoseWithTest/src/main/java/gildedrose/original/GildedRose.java
[5]: https://github.com/info3/assignment\_3/tree/master/GildedRoseWithTest/src/main/java/gildedrose/inheritance
[6]: https://github.com/info3/assignment\_3/tree/master/GildedRoseWithTest/src/main/java/gildedrose/strategy
[7]: https://github.com/info3/assignment\_3/blob/master/GildedRoseWithTest/src/test/java/gildedrose/GildedRoseTest.java
[8]: https://github.com/info3/assignment\_3/blob/master/GildedRoseWithTest/src/test/java/gildedrose/GildedRoseTestOriginal.java




## nothing here yet
{% comment %}

How did you approach the Gilded Rose Kata? What problems did you experience? What did you learn? (Note that it is not necessary to have the Kata completed, just write up what you've achieved in the lab).
{% endcomment %}
