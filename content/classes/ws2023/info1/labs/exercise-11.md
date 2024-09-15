---
title: 'Exercise 11: Keeping Track of Stuff'
author: kleinen
draft: false
---

![Game Items](./game-items.jpg)
[Image by upklyak](https://www.freepik.com/free-vector/game-icons-with-signs-key-playing-cards-money_26689359.htm#query=game%20items&position=0&from_view=keyword&track=ais&uuid=bc732565-c659-4120-85ff-8cea9a1bf92a)
on Freepik

**update: re-check this page for JSONWorld additions. They will be optional.**

This week&#8217;s lab work will continue a larger project that will occupy us until the end of the semester.

# Pre-lab

Prepare your pre-lab before coming to class! Doing the pre-lab will save you time during the lab.

**P1**. What items could be kept in the locations in your game? Come up with a list of at least 10 items. How heavy is each item?

**P2.** What will the starting position of the items be? List which items are going to be in which place.


# What To Hand In
Please hand in:
* zip-folder with your code
* Your lab report as a pdf. For more Information on the report see [the Labs and Exercises page](../).


* * *

# Assignment

**Adding Items**

1. If you haven't already done so in the last lab, refactor Zuul further to hold the command words in just one place: the CommandWord enum as discussed in class. 

2.  Extend your project so that a room can contain a single item. Items have descriptions and weights. When creating rooms and setting their exits, items for this game should also be created. When a player enters a room, information about an item present in this room should be displayed.
3.  How should the information about an item present in a room be produced? Which class should produce the string describing the item? Which class should print it? Why? If answering this exercise makes you feel you should change your implementation, go ahead and do so &#8211; and explain in your report why.
4.  Modify the project so that a room can hold any number of items. Use a collection to do this! Make sure the room has an `addItem` method that places an item into the room. Make sure all items get shown when a player enters a room. Create Test Cases and set up a fixture to thoroughly test this!

5.  Implement a &#8220;back&#8221; command that does not have a second word and takes the player back into the previous location. Test this! What happens if a second word is given?

6.  (*Special Challenge*) What happens if you type &#8220;back&#8221; twice? Is this behavior sensible? Implement it so that using it repeatedly takes you back several rooms, all to the beginning of the game if used often enough. Use a Stack data structure, even if we don&#8217;t know about them yet. You can read about them in the [API][1].
7.  (for the bored): Add at least two specialized Items to the game, using inheritance. For instance, add Food, Weapons and Clothing in a classical Role-Playing-Game. Each of these specializations (Subclasses) should have at least one special field.


 [1]: https://docs.oracle.com/javase/8/docs/api/java/util/Stack.html
