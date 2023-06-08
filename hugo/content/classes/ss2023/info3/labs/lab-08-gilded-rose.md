---
title: '9 - Legacy Code -Characterization Tests'
author: kleinen
draft: true
weight: 90
---
[![The Gilded Rose](../images/The_Gilded_Rose.jpg)](../images/The_Gilded_Rose.webp)

<small class = "float-right">The Gilded Rose, Trade District, [World of Warcraft.](https://wowpedia.fandom.com/wiki/Gilded_Rose)</small>


# The Gilded Rose Kata

... about Coding Katas

You will find many solutions for (and variants of) this kata on the web. I recommend watching **[Sandi Metz' Talk "All the Little Things"](https://www.youtube.com/watch?v=8bZh5LMaSmE)** (RailsConf 2014) which demonstrates
the refactoring part while maintaining green tests. Be aware that she simplified the kata for the talk: the tests are already there, she changes the Item class, and she works with a specification / test suite that only contains the happy path

the tests are already there, but with a reduced scope covering only the happy path, and she changes the Item class, which is not allowed in this Kata!

Additionaly to the Item class owned by the Goblin, 

The original Gilded Rose Kata starts with a class in Java or C# where the item collection is private static - thus can't be modified. As the update() method takes no parameters, this class can't be tested without modifications.

 holds the Items as well as the update method in private static variables making them unreachable for automated tests. So the first steps would be to only apply automatic refactorings (using your ide) to make the code testable, which would be an "extract method" refactoring for a method that takes one item as argument and updates its sell_in and quality fields.

As python does not encapsulate object fields, this can be transfered to python. Most versions 

Michael Feathers ...




- include untestable GildedRose
- 



## Write Characterization Tests

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