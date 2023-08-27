---
title: 'Exercise 10: The World of You'
author: kleinen
source: https://github.com/htw-imi-info1/exercise10
bk_ok_to_publish: false
source_ok: false
solution_pushed: false
draft: false
---
<!--<span class = "attention">Not yet reviewed and published for SoSe 2021 Term!</span>-->

This week&#8217;s lab work will begin a larger project that will occupy us until the end of the semester. The groups you form today will stay groups for the remaining part of the semester!

# Pre-lab

Prepare your prelab before coming to class! Doing the pre-lab will save you time during the lab.

**P0**. Invent your own game scenario away from the computer. Don&#8217;t worry about implementation or classes or programming. Just try and come up with something interesting. It needs to be the basic structure of a player moving through different locations. Possible examples:

*   White blood cells traveling through the body in search of viruses to attack
*   Finding the exit in a big shopping mall
*   A mole must find the food hidden in one of his burrows before winter comes
*   An adventurer is looking for a monster in a series of dungeons
*   The bomb squad must find the room with the bomb before it goes off.
*   The NSA is looking for Ed Snowdon and going from country to country.

Be creative! Give your game a name.

**P1**. What is the goal of your game, that is, when does the player win?

**P2.** What could you add to the game to make it interesting? Trap doors, treasure, monsters, &#8230;

**P3.** Draw a map of your game layout.

# What To Hand In
Please hand in:
* zip-folder with your code.
* Your lab report as a pdf. For more Information on the report see [the Labs and Exercises page](../).

Lab assignments are due the day before your next lab at 10pm. That will be after the winter holidays in about three weeks!

# Assignment

**World of You**

0.  Start with the bad Zuul game with tests - [your-zuul](https://github.com/htw-imi-info1/exercise10) -  and refactor it as discussed in the lectures. If you are doing mole burrows instead of rooms, you can change the variable names as needed. Don't forget to update the test cases whenever needed.

1.  Draw an  [object diagram](https://www.agilemodeling.com/artifacts/objectDiagram.htm) showing the state of your system just after it has been started. Does it change if you issue a &#8220;go&#8221; command?  (An [object diagram](https://www.agilemodeling.com/artifacts/objectDiagram.htm) shows the active instances of classes - objects - at a given time in the execution of a program, as opposed to a [class diagram](https://agilemodeling.com/artifacts/classDiagram.htm) that shows the classes defined in the program source code).

2.  Add a &#8220;look&#8221; command to your game.
3.  Add an additional command (such as &#8220;eat&#8221;, which for now just prints out &#8220;You have eaten now and are not hungry any more&#8221;. In the next exercise, when we have added items, you can make it so that you can only eat if you have found food.
4.  Implement an improved version of printing out the command words.
5.  Add another command &#8211; did you have to change the Game class? Why or Why not?

6. (For the bored) Prepare a multi-lingual version and use enums. You find the CommandWord.java enum and the adapted CommandWords.java classes in the subfolder [enums](https://github.com/htw-imi-info1/exercise10/tree/master/enums) in the repository.

7. (*Special Challenge* / For the bored) What is an model-view-controller architecture? Adapt your code to follow this architecture pattern.
