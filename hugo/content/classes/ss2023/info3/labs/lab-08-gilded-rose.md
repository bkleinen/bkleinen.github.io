---
title: '8 - Gilded Rose'
author: kleinen
draft: true
weight: 80
---
[![The Gilded Rose](../images/The_Gilded_Rose.jpg)](../images/The_Gilded_Rose.webp)

<small class = "float-right">The Gilded Rose, Trade District, [World of Warcraft.](https://wowpedia.fandom.com/wiki/Gilded_Rose)</small>


# The Gilded Rose Kata

-- Working with Legacy Code and Refactoring to Patterns --

## Introduction
### About Coding Katas

The Term 'Kata' is a Metaphor taken from Martial Arts for a Pattern of Movements to Practice and Perfect those same Movements ([Wikipedia:Kata](https://en.wikipedia.org/wiki/Kata)). According to ([Wikipedia:Kata](https://en.wikipedia.org/wiki/Kata)), it was introduced as a practice to Software Craftsmanship by [Dave Thomas in his blog](http://codekata.com/), to practice developing software using techniques like TDD, Refactoring or the SOLID principles. There are several Code Kata Collections; see [Kata-Log](https://kata-log.rocks/gilded-rose-kata) for an example that can be browsed by topic and constraint.

### Solutions and Simplifications

You will find many solutions for (and variants of) this kata on the web. I recommend watching **[Sandi Metz' Talk "All the Little Things"](https://www.youtube.com/watch?v=8bZh5LMaSmE)** (RailsConf 2014) which demonstrates
the refactoring part while maintaining green tests. Be aware that she simplified the kata for the talk: the tests are already there, she works with a specification / test suite that only contains the happy path and last not least she changes the Item class, which is not allowed in this original Kata!

### Untested and Untestable Legacy Code

The original Gilded Rose Kata starts with a class in Java or C# where the item collection is private static - thus can't be modified. As the update() method takes no parameters, this class can't be tested without modifications. This would have required applying automatic refactorings
to make the code testable in the first place. Instead, I provide you with a ready test scaffold (see below) - you still need to write a test suite for the legacy code, which serve both as characterization tests to understand and assert the legacy behaviour and as regression tests to enable the refactoring.

### The Core: Refactoring to Patterns

The Core of the Kata to practice refactoring to patterns in order to enable the implentation of a new feature:

1. Refactor to make the Change Easy
2. Implement the Easy Change

And without further ado, here is what to do:

## Detailed Instructions

### 0. Preparation

1. Clone the [Gilded Rose Repository](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab05-js-gilded-rose-kata).
2. Set up the project [like we did it in the first lab](../lab-01-startup) (Part 1: Set up the git repository and project). Of course this is now lab05, put your project into the correct place on the gitlab server! Hint: If you like you can use [WebStorm](https://www.jetbrains.com/help/webstorm/installation-guide.html#snap) and it's automatic refactoring features. You can [get an educational license](https://www.jetbrains.com/community/education/#students).
3. Imagine you just joined a the company `Gilded Rose` as software developers. They wrote a requirements sheet for your first job. You can find the whole sheet [here](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab05-js-gilded-rose-kata/blob/master/GildedRoseRequirements.txt). Read through it. In this lab you will be working through it step by step.
4. Read the introduction again:
```
Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime location in a
prominent city ran by a friendly innkeeper named Allison. We also buy and sell only the finest goods.
Unfortunately, our goods are constantly degrading in quality as they approach their sell by date. We
have a system in place that updates our inventory for us. It was developed by a no-nonsense person named
Leeroy, who has moved on to new adventures.
```
### 1. Write Characterization Tests

In this first part and week you will develop a thourough test suite
for the gilded rose to be able to do the refactoring next week.

These are Characterization Tests, as they test the behaviour of the
app as is.

Start by developing them from the specification (remember Closed Box tests from the testing exercise?). If you do this thoroughly, that is, by identifying equivalence classes and testing the boundaries, you will find
things that do not correspond to the specification are at the least reveal things that are not specified clearly in the specification.

Wether these bugs or inconsistencies should be fixed or not is a design decision depending on the context.

### Mark Bugs and possible Bug Fixes
pytest offers a possiblity to deal with this uncertainity.

For each Test that you think should actually produce a different result, do the following:

annotate the test with xfail_original_bug.
create another test asserting the correct outcome and mark it with
xfail_bug_fix.

the test config (which must be imported from all tests) contains the configuration:

so you start with 

xfail_bug_fix = True
xfail_bug_in_original = False

which xfails the tests that show the desired, not yet implemented behaviour.

for refactoring, you have various options:
- open all 

xfail_bug_fix = True
xfail_bug_in_original = True

which xfails all of them, so for each pair you should get either one
xfail and one xpass.

this is the easiest option for refactoring as the suite stays green
no matter if you keep the bug or fix it during refactoring.

#### for a strict path, you would do the following steps:

xfail_bug_fix = True
xfail_bug_in_original = False

n xpass == n xfail

- refactor

xfail_bug_fix = True
xfail_bug_in_original = True

- fix bugs 
- test first: you can activate them one by one by introducing a third flag like:

xfail_bug_fix_done = False

- arrive at n xpass = xfail with the other set spassing


- let the bug fix tests fail by switching xfail off for them:

xfail_bug_fix = False
xfail_bug_in_original = True


but the bugs are actually hard to maintain in a more clean code, 
so going with 

xfail_bug_fix = True
xfail_bug_in_original = True

during the refactoring is fine.







(refactoring reproducing the original behaviour? remove the )

the template hsa an example. copy files for each item class so that you can work in parallel on the tests if you want to.

aged_brie_test.py ....





hierarchy:

QualityRestrictedItems
  Sulfuras
  AgingItems


../images/The_Gilded_Rose.webp