---
title: 'Exercise 12 b: Adding Commands'
author: kleinen
layout: lab
draft: true
---
- not yet released -
<!--
# Pre-lab

This week&#8217;s lab work will begin a larger project that will occupy us until the end of the semester.

#### What to Bring to Lab

Please bring these exercises printed out or written out with you to lab.

**P1**. What are enums in Java? which special methods does an enum have?

**P2**. What is switch statement? Write down an example.

# Post-Lab, AKA  What To Turn In

Your completed lab report, submitted in Moodle as a pdf,
should include:

*   A description of what you did during the lab, including a record of
    * what worked, what problems you encountered,
    * Answers to questions in the assignment
*   The names and roles of any collaborators in any parts of the exercise.
*   A record of how long you needed for this lab and what you learned.

Upload the source code in a ZIP Archive.

Lab assignments are due the night before the next lab at 22:00, I want you to get some sleep the night before the next class. They may, of course, be turned
in earlier.

* * *

# Assignment

**Adding Commands**

1. Refactor your Zuul to localize information about available commands in an enum called `CommandWord` - do this by replacing or renaming `CommandWords`.
   CommandWord should be the only class holding information about available commands words.
2. Implement an improved version of printing out the command words.
3. Make sure all your tests pass before moving on.
4. Now, move the command implementations from Game to the Command class. Use a switch statement to choose the implementation based on the CommandWord given. As the processing of each command produces an output of type String and possibly determines a new currentRoom, Game needs two values back. For this, you can either add new fields (output and nextRoom) to Command, or introduce a new class GameState that holds both information (lastOutput and nextRoom).
5. Add an additional command (such as &#8220;eat&#8221;, which for now just prints out &#8220;You have eaten now and are not hungry any more&#8221;. In the next exercise, when we have added items, you can make it so that you can only eat if you have found food.
6. Add another command &#8211; did you have to change the Game class? Why or Why not?
7. (for the bored): Command should really be a (rather flat) inheritance hierarchy, eliminating the need for a switch statement. Give it a try and sketch or do the refactoring.
{% endcomment %}
-->
