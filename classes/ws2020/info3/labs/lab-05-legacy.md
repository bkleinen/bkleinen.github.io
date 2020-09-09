---
title: 'Assignment 05 - Legacy Code - Refactoring to Patterns'
author: kleinen
layout: page
---
![The Gilded Rose](../images/The_Gilded_Rose.jpg)
<small class = "float-right">The Gilded Rose, Trade District, [World of Warcraft.](http://www.wowwiki.com/Gilded_Rose)</small>

## Assignment: Gilded Rose Kata

### Preparation
1. Clone the [Gilded Rose Repository](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab05-js-gilded-rose-kata)
2. Set up the project [like we did it in the first lab](lab-01-startup.md#part-1-set-up-the-git-repository-and-project). Of course this is now lab05, put your project into the correct place on the gitlab server!
3. Read [the requirements](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab05-js-gilded-rose-kata/blob/master/GildedRoseRequirements.txt) carefully.

### Part 1: Characterization Tests
4. Look at [the stubs for the tests](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab05-js-gilded-rose-kata/tree/master/test) and run them with coverage `npm run coverage`.

To be able to add the new functionality as requested in [the requirements](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab05-js-gilded-rose-kata/blob/master/GildedRoseRequirements.txt) you should write Characterization Tests first.
Do NOT yet refactor or add the required new functionality!

There is already a stub for the tests. All you have to do is add testcases for all requirements in the documentation. You can split up the work within your group / even with other groups and then put them all together.

There might be cases where the given implementation doesn't work as described in the
specification or the specification is ambiguous. Document these cases (e.g. in a
comment next to the test case) and make a sensible decision how to handle them.

Then use the code coverage tool to check wether your tests hit all the branches
in the updateQuality method. Add more test cases if needed. 

### Part 2: Refactoring
6. Now refactor the available legacy code. Don't forget to do this step by step and to test often. Hint: A straightforward solution for refactoring the Gilded Rose would be an item hierarchy with each item "knowing" how to update it's quality. Unfortunately, you can't do that because the Item class belongs to the goblin. Thus, you will need another solution without the need to change the Item class. Are there any patterns that might help adding different behaviour without needing to change the Item class itself?
7. Lint and improve your code: `npm run lint .`

### Part 3: Adding new functionality
8. Add test cases for the newly required functionality (see [the requirements](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab05-js-gilded-rose-kata/blob/master/GildedRoseRequirements.txt)).
9. Implement the new functionality so your tests pass. 
10. Don't forget to lint and improve your code.

## What to hand in
A link to your repository.
