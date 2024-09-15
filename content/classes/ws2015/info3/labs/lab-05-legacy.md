---
title: 'Assignment 05 - Legacy Code - Refactoring to Patterns'
author: kleinen
layout: page
---


![The Gilded Rose](../images/The_Gilded_Rose.jpg)
<small class = "float-right">The Gilded Rose, Trade District, [World of Warcraft.](https://wowwiki-archive.fandom.com/wiki/Gilded_Rose)</small>

## Assignment: Gilded Rose Kata

Source Code: There are three versions. Choose one. Have brief look at the
readme and the GuildedRose class.


* Ruby Version: [https://github.com/htw-imi-info3-archive/lab-05-ruby-gilded-rose-kata](https://github.com/htw-imi-info3-archive/lab-05-ruby-gilded-rose-kata)
* Java/Eclipse Version with Test Stub: [https://github.com/htw-imi-info3-archive/lab-05-JavaEclipseGildedRose](https://github.com/htw-imi-info3-archive/lab-05-JavaEclipseGildedRose)
* Original Version using Maven: [https://github.com/htw-imi-info3-archive/lab-05-JavaMavenGildedRose](https://github.com/htw-imi-info3-archive/lab-05-JavaMavenGildedRose)

### Write Characterization Tests

To be able to add the new functionality as requested you should write
Characterization tests first.
You will not yet refactor or add the required new functionality!



### Install and Run Tests
First, you need to install the Software and run the tests.
Download and Install the source code for this exercise. Upon request, you can do this exercise either in Ruby or in Java. (Or both).
In any case, you should have a look at the provided tests in both versions:

* the Java Version uses [Parameterized Tests](https://junit.sourceforge.net/javadoc_40/org/junit/runners/Parameterized.html) that makes the individual test cases very compact.

In both cases, you'll need to use a code coverage tool to make sure you have all
branches covered with your tests.

#### Ruby Version

* see instructions in the repo readme:  [https://github.com/htw-imi-info3-archive/lab-05-ruby-gilded-rose-kata](https://github.com/htw-imi-info3-archive/lab-05-ruby-gilded-rose-kata)

Bundler will install simplecov. After running rspec, you'll find the html coverage report in

    coverage/

#### Java Version

I did the java version using Eclipse and [ECLEmma](https://eclemma.org/)
as a code coverage tool. In Eclipse, use Help->Install new software with to install
it. Copy this update site url into the box:

    https://update.eclemma.org/

If you prefer to use another ide & code coverage tool, you can of course do so.

Get the repository from

 * [https://github.com/htw-imi-info3-archive/lab-05-JavaEclipseGildedRose](https://github.com/htw-imi-info3-archive/lab-05-JavaEclipseGildedRose)


and import it (Import->General->Existing Projects into Workspace) to Eclipse.

I've already added a JUnit test stub to get you started quickly. We'll have a
look at it in the lab.

If you want to use Maven, you might want to use the original version:

* [https://github.com/htw-imi-info3-archive/lab-05-JavaMavenGildedRose](https://github.com/htw-imi-info3-archive/lab-05-JavaMavenGildedRose)

### Write Characterization Tests
In both the Ruby & Java Version I've already provided a stub for the tests.
All you have to do is add testcases for all requirements in the documentation.

You can split up the work within your group / even with other groups and then put
them all together.

There might be cases where the given implementation doesn't work as described in the
specification or the specification is ambiguous. Document these cases (e.g. in a
comment next to the test case) and make a sensible decision how to handle them.

Then use the code coverage tool to check wether your tests hit all the branches
in the updateQuality method. Add more test cases if needed.

### Refactor.

A straightforward Solution for refactoring the GildedRose would be an Item
Hierarchy with each item  "knowing" how to update it's quality.
Unfortunately, you can't do that because the Item class belongs to the Goblin.

Thus, you will need another Solution without the need to change the Item class. Are there any patterns that might help adding different behaviour without needing to change the Item class itself?
We will discuss possible solutions in the lab.

### Add the new functionality.

If you adapted the design correctly in the refactoring, it should be easy to add
the newly required functionality. Don't forget to add test cases first - practice
Test Driven Development.

# Submission

Upload your source code together with a brief lab report (PDF) describing the
design of your refactored application with design patterns used.
