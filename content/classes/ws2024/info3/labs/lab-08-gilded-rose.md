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



#### Open Box Tests / Coverage

9. When you cannot think of further tests, run a test coverage tool, e.g. [pytest-cov](https://pytest-cov.readthedocs.io/en/latest/) to check wether your tests hit all the branches in the `updateQuality` method:

        pytest --cov-report term-missing --cov gilded_rose tests
    
    for a brief summary in the terminal or for a visual output:

        pytest --cov-report html:term-missing --cov gilded_rose tests
        open term-missing/index.html 
    
Note that ensuring every branch is hit is effectively the same as Open Box Testing. If needed, add missing test cases.

#### Ensure Bug Toggles Work Correctly

10. Before you start refactoring, make sure that your bug tests work correctly by switching xfail off for the 
characterisation tests. Now the test should still be green, and you see only xfailing and no xpassing tests.
```python
xfail_bug_fix = True
xfail_bug_in_original = False
```

### 2. Refactor to make the Change Easy

11. Now refactor `GuildedRose`. Do this in the [gilded_rose/refactored](https://github.com/htw-imi-info3/gilded-rose/tree/main/gilded_rose/refactored) directory (which initially contains a copy of gilded_rose/original).

- Sketch a design that makes the needed change easy, e.g. such that you will only need to add one tiny new class.
    But first, 
    have another look at the part of the `Gilded Rose`'s Requirements sheet that concerns refactoring and limitations you face:

```
Feel free to make any changes to the UpdateQuality method and add any new code as long as everything
still works correctly. However, do not alter the Item class or Items property as those belong to the
goblin in the corner who will insta-rage and one-shot you as he doesn't believe in shared code
ownership (you can make the UpdateQuality method and Items property static if you like, we'll cover
for you).

Just for clarification, an item can never have its Quality increase above 50, however 
"Sulfuras" is a legendary item and as such its Quality is 80 and it never alters.
```

- Hint: A straightforward solution for refactoring the Gilded Rose would be an item hierarchy with each item "knowing" how to update it's quality. Unfortunately, you can't do that because the Item class belongs to the goblin. Thus, you will need another solution without the need to change the Item class. Which *programming patterns* can help adding different behaviour without needing to change the Item class itself?

- do the Refactoring. Remember to 

	- do this in tiny steps, keeping the test suite green at all times. 
	- commit often to be able to revert without loosing too much if you mess things up (see the [Baby Steps](https://kata-log.rocks/baby-steps) constraint)

- as mentioned above, you may find that it is easier change some behaviour towards a more consistent behaviour   during refactoring. Make sure that both flags are set to True during refactoring, so these changes in behaviour do not cause the tests to fail:
```python
xfail_bug_fix = True
xfail_bug_in_original = True
```

#### Consolidate Bugs and Bug fixes

With both variants - bug and no bug - set to xfail, you now cannot be certain of the behaviour of your code without examining the test result very closely. Thus you should

12. Consolidate the tests. If all bug characterization tests marked with `xfail_bug_in_original`
fail and all marked with `xfail_bug_fix` succeed, you are good and can simple remove the old characterization tests.

- let the bug fix tests fail by switching xfail off for them:

```python
xfail_bug_fix = False
xfail_bug_in_original = True
```

If you have fixed all bugs, the test suite should now pass with only xfailing tests for the original bugs. 

If not, decide on how to handle each case  - maybe
it wasn't a bug after all, maybe your refactoring is missing something - and handle it.

Last not least, you can remove the now obsolete bug characterization tests (all marked with  `xfail_bug_in_original`) as they are no longer needed.
Although, as this is a practice exercise, you may want to keep them around instead without needing to dig in your git history. You may want to skip them now instead:
For this, you can skip them with skipif() or gather them in a file to be able to skip them all using [skip module](https://docs.pytest.org/en/7.3.x/how-to/skipping.html#skip-all-test-functions-of-a-class-or-module) to exclude them from the test suite) (see [fix_bug branch](https://github.com/htw-imi-info3/gilded-rose/tree/fix_bug/tests) for an example)

### 3. Implement the Easy Change

13. Now, finally, it should be very easy to implement the change, as easy to change is the definition of good design. Read again the new requirements you are supposed to implement, together with the restraints:


```
We have recently signed a supplier of conjured items. This requires an update to our system:

	- "Conjured" items degrade in Quality twice as fast as normal items

Feel free to make any changes to the UpdateQuality method and add any new code as long as everything still 
works correctly. However, do not alter the Item class or Items property as those belong to the goblin in the
corner who will insta-rage and one-shot you as he doesn't believe in shared code ownership (you can make the
UpdateQuality method and Items property static if you like, we'll cover for you).

Just for clarification, an item can never have its Quality increase above 50, however 
"Sulfuras" is a legendary item and as such its Quality is 80 and it never alters.
```
14. Add test cases for the newly required functionality, mark them with 
    ```python
	@pytest.mark.xfail(xfail_new_features, reason="new feature: ... ")
	```
	
15. Implement the new functionality so your tests xpass.

 Did your new design allow for adding the new requirement by just adding new code, without changing existing code?
    (Open-Closed Principle) 

## Results Submission

* Hand in a lab report. This can be short this time, only 
  containing answers to the questions in the instructions above. 
  (You may want to safe this page for your records, don't include all the steps in the report!)

  Here they are the questions again for your report:

  - Equivalence Classes for Gilded Rose
  - Found Bugs / Inconsistencies, wether you kept or fixed them
  - New Design: Class Diagram, Patterns
  - What did you need to add/change to add the Conjured Items?
  - Last not least, a link to your repository.
   

More info on the [Labs](..) page.





