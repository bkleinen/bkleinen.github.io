---
title: 'Exercise 11: Keeping Track of Stuff'
author: kleinen
layout: lab
---

# Pre-lab

This week&#8217;s lab work will continue a larger project that will occupy us until the end of the semester.

#### What to Bring to Lab

Please bring these exercises printed out or written out with you to lab.

**P1**. What items could be kept in the locations in your game? Come up with a list of at least 10 items. How heavy is each item?

**P2.** What will the starting position of the items be? List which items are going to be in which place.


# Post-Lab, AKA  What To Turn In

Your completed lab report, submitted in Moodle as a pdf,
should include:

*   A description of what you did during the lab, including a record of
    * what worked, what problems you encountered, and
    * answers to the questions asked in P1 &#8211; P2.
    * Answers to questions in the assignment
*   The names and roles of any collaborators in any parts of the exercise.
*   A record of how long you needed for this lab and what you learned.

Upload the source code in a ZIP Archive.

Lab assignments are due the night before the next lab at 22:00, I want you to get some sleep the night before the next class. They may, of course, be turned
in earlier.
* * *

# Assignment

**Adding Items**

1. If you haven't already done so in the last lab, refactor Zuul further to hold the command words in just one place: the CommandWord enum as discussed in class. You find the CommandWord.java enum and the adapted CommandWords.java classes in the subfolder [enums](https://github.com/htw-imi-info1/exercise10/tree/master/enums) in the repository.
2.  Extend your project so that a room can contain a single item. Items have descriptions and weights. When creating rooms and setting their exits, items for this game should also be created. When a player enters a room, information about an item present in this room should be displayed.
3.  How should the information about an item present in a room be produced? Which class should produce the string describing the item? Which class should print it? Why? If answering this exercise makes you feel you should change your implementation, go ahead and do so &#8211; and explain in your report why.
4.  Modify the project so that a room can hold any number of items. Use a collection to do this! Make sure the room has an `addItem` method that places an item into the room. Make sure all items get shown when a player enters a room. Set up a fixture to thoroughly test this!
5.  Implement a &#8220;back&#8221; command that does not have a second word and takes the player back into the previous location. Test this! What happens if a second word is given?
6.  (For the bored) What happens if you type &#8220;back&#8221; twice? Is this behavior sensible? Implement it so that using it repeatedly takes you back several rooms, all to the beginning of the game if used often enough. Use a Stack data structure, even if we don&#8217;t know about them yet. You can read about them in the [API][1].
7.  (for the bored): Add at least two specialized Items to the game, using inheritance. For instance, add Food, Weapons and Clothing in a classical Role-Playing-Game. Each of these specializations (Subclasses) should have at least one special field.


 [1]: https://docs.oracle.com/javase/8/docs/api/java/util/Stack.html
