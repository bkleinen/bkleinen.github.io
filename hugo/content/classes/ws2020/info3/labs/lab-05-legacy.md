---
title: 'Assignment 05 - Legacy Code - Refactoring to Patterns'
author: kleinen
layout: page
---
![The Gilded Rose](../images/The_Gilded_Rose.jpg)
<small class = "float-right">The Gilded Rose, Trade District, [World of Warcraft.](https://wowwiki-archive.fandom.com/wiki/Gilded_Rose)</small>

## Assignment: Gilded Rose Kata

### Preparation
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

### Part 1: Characterization Tests
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
6. Look at [the stubs for the tests](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab05-js-gilded-rose-kata/tree/master/test) and run them with coverage `npm run coverage`.
7. Implement [Characterization Tests](https://en.wikipedia.org/wiki/Characterization_test) (also known as "Approval Tests"). That is, write tests that pass with the current behavior of the app.
Is the current system functionality different from the requirements sheet or are the specifications ambiguous somewhere? Document these cases in comments next to your test cases. As the current system is what `Gilded Rose` has used so far you can expect that it behaves in a way that works for them, so don't change the current behavior. While you implement your tests run them with coverage (`npm run coverage`) to check wether your tests hit all the branches in the `updateQuality` method.
Hint: [This section](https://www.valentinog.com/blog/jest/#code-coverage-in-jest) of Valentino Gagliardi's tutorial on Jest might help you learn more about effective code coverage with Jest
Hint: You can use [Jest's "describe.each"](https://jestjs.io/docs/en/api#describeeachtablename-fn-timeout) to simplify your tests.
For the bored: [Snapshot Testing](https://jestjs.io/docs/en/snapshot-testing) can make it easier to understand what the legacy code is actually doing and write the appropriate tests (see also [a video on how the Snapshot method is used with Java](https://youtu.be/zyM2Ep28ED8)).

### Part 2: Refactoring
8. Have another look at the part of the `Gilded Rose`'s Requirements sheet that concerns refactoring and limitations you face:

```
Feel free to make any changes to the UpdateQuality method and add any new code as long as everything
still works correctly. However, do not alter the Item class or Items property as those belong to the
goblin in the corner who will insta-rage and one-shot you as he doesn't believe in shared code
ownership (you can make the UpdateQuality method and Items property static if you like, we'll cover
for you).
```
9. Now refactor the available legacy code. Don't forget to do this step by step and to test often.
Hint: A straightforward solution for refactoring the Gilded Rose would be an item hierarchy with each item "knowing" how to update it's quality. Unfortunately, you can't do that because the Item class belongs to the goblin. Thus, you will need another solution without the need to change the Item class. Which *programming patterns* can help adding different behaviour without needing to change the Item class itself?
10. Lint and improve your code: `npm run lint .`

### Part 3: Adding new functionality
11. Read again the new requirements you are supposed to implement:


```
We have recently signed a supplier of conjured items. This requires an update to our system:

	- "Conjured" items degrade in Quality twice as fast as normal items

Feel free to make any changes to the UpdateQuality method and add any new code as long as everything still works correctly. However, do not alter the Item class or Items property as those belong to the goblin in the corner who will insta-rage and one-shot you as he doesn't believe in shared code ownership (you can make the UpdateQuality method and Items property static if you like, we'll cover for you).

Just for clarification, an item can never have its Quality increase above 50, however "Sulfuras" is a legendary item and as such its Quality is 80 and it never alters.
```
12. Add test cases for the newly required functionality.
13. Implement the new functionality so your tests pass.
14. Don't forget to lint and improve your code.

## Results Submission
* Hand in a link to your repository
* Hand in a lab report until Dec. 17, 11pm
* Take part in the peer review activity on <s>Dec. 17 2020</s> Jan. 7 2021 (rescheduled)

More info on the [Labs](..) page.
