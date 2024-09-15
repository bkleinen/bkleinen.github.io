---
title: 'Exercise 10: The World of You'
author: kleinen
layout: lab
---


<span class = "attention">This exercise has been split up in parts A & B and is not valid in WS2016/17!</span>
<span class = "attention">See the [Schedule]({{ site.BaseURL }}/classes/ws2016/info1/schedule/)
or [Lab Index]({{ site.BaseURL }}/classes/ws2016/info1/labs/) for the correct exercises.</span>

# Pre-lab

This week&#8217;s lab work will begin a larger project that will occupy us until the end of the semester.

#### What to Bring to Lab

Please bring these exercises printed out or written out with you to lab.

**P1**. Design your own game scenario away from the computer. Don&#8217;t worry about implementation or classes or programming. Just try and come up with something interesting. It needs to be the basic structure of a player moving through different locations. Possible examples:

*   White blood cells traveling through the body in search of viruses to attack
*   Finding the exit in a big shopping mall
*   A mole must find the food hidden in one of his burrows before winter comes
*   An adventurer is looking for a monster in a series of dungeons
*   The bomb squad must find the room with the bomb before it goes off.

Be creative! Give your game a name.

**P2**. What is the goal of your game, that is, when does the player win?

**P3.** What could you add to the game to make it interesting? Trap doors, treasure, monsters, &#8230;

**P4.** Draw a map of your game layout.

# Post-Lab, AKA  What To Turn In

Your completed lab report, submitted in Moodle as a pdf,
should include:

* Your game description done in the PreLab.
*   A description of what you did during the lab, including a record of
    * what worked, what problems you encountered, and
    * answers to the questions asked in P1 &#8211; P4.
    * Answers to questions in the assignment
    * the object diagram.
*   The names and roles of any collaborators in any parts of the exercise.
*   A record of how long you needed for this lab and what you learned.

Upload the source code in a ZIP Archive, and the report as a separate PDF file.

Lab assignments are due the night before the next lab at 23.00, I want you to get some sleep the night before the next class. They may, of course, be turned
in earlier.

* * *

# Assignment

**World of You**

1.  Start with the bad Zuul game with tests - [your-zuul](https://github.com/htw-imi-info1/exercise10) -  and refactor it as discussed in the lectures.
    If you are doing mole burrows instead of rooms, you can change the variable names as needed.
    The bored can prepare a multi-lingual version and use enums. You find the CommandWord.java enum and the adapted CommandWords.java classes in the subfolder [command-words-after-refactoring](https://github.com/htw-imi-info1/exercise10/tree/master/command-words-after-refactoring).
    There is also a version using an inheritance hierarchy for the Commands in the branch [inheritance](https://github.com/htw-imi-info1/exercise10/tree/inheritance) - you can use that if you like. It doesn't have any other refactorings. I might add a better tests before we start with this exercise, so look out for that.
2.  Draw an object diagram showing the state of your system just after it has been started. Does it change if you issue a &#8220;go&#8221; command?
3.  Add a &#8220;look&#8221; command to your game.
4.  Add an additional command (such as &#8220;eat&#8221;, which for now just prints out &#8220;You have eaten now and are not hungry any more&#8221;. In the next exercise, when we have added items, you can make it so that you can only eat if you have found food.
5.  Implement an improved version of printing out the command words.
6.  Add another command &#8211; did you have to change the Game class? Why or Why not?
7.  (For the bored) What is an model-view-controller architecture? Adapt your code to follow this architecture pattern.
