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

1. Clone the [Gilded Rose Repository](https://github.com/htw-imi-info3/gilded-rose).
2. Set up the project in your IDE. Make sure to find a convenient way to 
   automatically re-run the test suite after a code change. 
3. Imagine you just joined a the company `Gilded Rose` as software developers. They wrote a requirements sheet for your first job. You can find the whole sheet [here](https://github.com/htw-imi-info3/gilded-rose/blob/main/GildedRoseRequirements.txt). Read through it. In this lab you will be working through it step by step.
4. Read the introduction again:
```
Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime location in a
prominent city ran by a friendly innkeeper named Allison. We also buy and sell only the finest goods.
Unfortunately, our goods are constantly degrading in quality as they approach their sell by date. We
have a system in place that updates our inventory for us. It was developed by a no-nonsense person named
Leeroy, who has moved on to new adventures.
```
### 1. Write Characterization Tests

#### Closed-Box Tests

5. Read again what the system is currently supposed to be doing, according to the `Team Gilded Rose`'s Requirements Sheet:

```
Your task is to add the new feature to our system so that
we can begin selling a new category of items. First an introduction to our system:

	- All items have a SellIn value which denotes the number of days we have to sell the item
	- All items have a Quality value which denotes how valuable the item is
	- At the end of each day our system lowers both values for every item

Pretty simple, right? Well this is where it gets interesting:

	- Once the sell by date has passed, Quality degrades twice as fast
	- The Quality of an item is never negative
	- "Aged Brie" actually increases in Quality the older it gets
	- The Quality of an item is never more than 50
	- "Sulfuras", being a legendary item, never has to be sold or decreases in Quality
	- "Backstage passes", like aged brie, increases in Quality as its SellIn value approaches;
	Quality increases by 2 when there are 10 days or less and by 3 when there are 5 days or less but
	Quality drops to 0 after the concert
```


6. Look at [the stubs for the tests](https://github.com/htw-imi-info3/gilded-rose/tree/main/tests) and run them in a loop. There is a testloop.sh script that can be used on *nix systems, or you may want to use your IDE.

7. Start with Close-Box Tests guided by the Specification. You can split up writing the tests by splitting them up for the different items (e.g. normal_test.py, aged_brie_test.py etc.) - these are [Characterization Tests](https://en.wikipedia.org/wiki/Characterization_test) (also known as "Approval Tests"). That is, write tests that pass with the current behavior of the app. What are the Equivalence Classes of the Gilded Rose and according Edge Cases you need to test?

#### How to handle Encountered Bugs

8. Is the current system functionality different from the requirements sheet or are the specifications ambiguous somewhere? If you find such cases, you are allowed to fix them during the refactoring. Here's a way how this can be done while keeping the test suite green at all times:

Annotate the test using the `@pytest.mark.xfail` annotation. This will cause pytest to list the test as xfailed if it fails while the suite is still green. If the test assertion happens to succeed, an xpass will be shown instead.

For example, if a `buggy_function` returns 43 and according to the specification it should return 42, write a test that asserts the **current behaviour** and mark it with 

```python 
@pytest.mark.xfail(xfail_bug_in_original, reason="42 bug: found in buggy_function, this should return 42!")
```

Then, write a test that asserts the **correct behaviour** and mark it with 

```python 
@pytest.mark.xfail(xfail_bug_fix, reason="42 bug: test for bug fix")
```

Now, you have two test cases, one of them xpassing and one xfailing. While you refactor and fix the bugs (you will find that this is actually easier than maintaining them) eventually the other test will
xfail / xpass.

By toggling the xfail_bug_in_original and xfail_bug_fix flags in [tests/settings.py](https://github.com/htw-imi-info3/gilded-rose/blob/main/tests/settings.py) you can alter the test suite to actually fail.

See [tests/gilded_rose_example_test.py](https://github.com/htw-imi-info3/gilded-rose/blob/main/) for the complete example.


#### White Box Tests / Coverage

9. When you cannot think of further tests, run a test coverage tool, e.g. [pytest-cov](https://pytest-cov.readthedocs.io/en/latest/) to check wether your tests hit all the branches in the `updateQuality` method:

        pytest --cov-report term-missing --cov gilded_rose tests
    
    for a brief summary in the terminal or for a visual output:

        pytest --cov-report html:term-missing --cov gilded_rose tests
        open term-missing/index.html 
    
    






pytest --cov gilded_rose tests
pytest --cov-report term-missing --cov gilded_rose tests

In this first part and week you will develop a thourough test suite
for the gilded rose to be able to do the refactoring later.

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