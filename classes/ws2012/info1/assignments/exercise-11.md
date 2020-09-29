---
title: 'Exercise 11: Keeping Track of Stuff'
author: kleinen
layout: page
---
# Pre-lab

This week&#8217;s lab work will continue a larger project that will occupy us until the end of the semester.

#### What to Bring to Lab

Please bring these exercises printed out or written out with you to lab.

**P1**. What items could be kept in the locations in your game? Come up with a list of at least 10 items. How heavy is each item?

**P2.** What will the starting position of the items be? List which items are going to be in which place.

# Post-Lab,  
AKA  What To Turn In

Your completed assignment, submitted in Moodle as a pdf,  
should include:

*   A description of what you did during the lab, including a record of what worked, what problems you encountered, and answers to the questions asked in the pre-lab. The focus is on the process!
*   Include a description of the game you are now working on. Were there any problems you encountered reading someone else&#8217;s code?
*   Include the current version of your source code.
*   The names and roles of any collaborators in any parts of the exercise.
*   A record of how long you needed for this lab and what you learned.

* * *

# Assignment

**Adding Items**

1.  Implement an improved version of printing out the command words. (Moved from Exercise 10).<del> (Start with your game by exchanging your game from the last exercise with someone else. This will be done on Wednesday, 14.12.2011 in class! If groups from Exercise 09 aren&#8217;t there, they will be assigned a random other project, you can&#8217;t start working on this exercise before you have received a different project. Read through the code and documentation and see if you can understand what the game is about. Write a short description in your report.)</del>
2.  Extend that project so that a room can contain a single item. Items have descriptions and weights. When creating rooms and setting their exits, items for this game should also be created. When a player enters a room, information about an item present in this room should be displayed.
3.  How should the information about an item present in a room be produced? Which class should produce the string describing the item? Which class should print it? Why? If answering this exercise makes you feel you should change your implementation, go ahead and do so &#8211; and explain in your report why.
4.  Modify the project so that a room can hold any number of items. Use a collection to do this! Make sure the room has an iddItem method that places an item into the room. Make sure all items get shown when a player enters a room. Set up a fixture to thoroughly test this!
5.  Implement a &#8220;back&#8221; command that does not have a second word and takes the player back into the previous location. Test this! What happens if a second word is given?
6.  (For the bored) What happens if you type &#8220;back&#8221; twice? Is this behavior sensible? Implement it so that using it repeatedly takes you back several rooms, all to the beginning of the game if used often enough. Use a Stack data structure, even if we don&#8217;t know about them yet. You can read about them in the [API][1].
7.  (for the bored): Add at least two specialized Items to the game, using inheritance. For instance, add Food, Weapons and Clothing in a classical Role-Playing-Game. Each of these specializations (Subclasses) should have at least one special field.

# Writeup

Submit your writeup as your post-lab to the Moodle area by 23.00 the day before the next lab.

 [1]: https://docs.oracle.com/javase/7/docs/api/java/util/Stack.html