---
title: 'Exercise 10 a: The World of You'
author: kleinen
layout: lab
---

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

**P3.** What could you add to the game to make it interesting? Trap doors, treasure, monsters, &#8230;..

**P4.** Draw a map of your game layout.

# Post-Lab, AKA  What To Turn In

Your completed lab report, submitted in Moodle as a pdf,
should include:

*   Your game description done in the PreLab.
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

1.  Start with the bad Zuul game with tests - [your-zuul](https://github.com/htw-imi-info1/exercise10) .
2.  Change the `private void createRooms()` method in Game to create your own world. If your game design includes new direction, leave them out for now. If you are doing mole burrows instead of rooms, you can change the variable names as needed.
3.  Draw an [object diagram](https://www.agilemodeling.com/artifacts/objectDiagram.htm) showing the state of your system just after it has been started. Does it change if you issue a &#8220;go&#8221; command? (An [object diagram](https://www.agilemodeling.com/artifacts/objectDiagram.htm) shows the active instances of classes - objects - at a given time in the execution of a program, as opposed to a [class diagram](https://agilemodeling.com/artifacts/classDiagram.htm) that shows the classes defined in the program source code).
4.  Adapt the tests in GameSystemTest to work with and test your world. You can
throw tests away, but you must have a complete walkthrough of your world in some way.
5.  Refactor the program to localize the information about possible directions in Room. Hint: set the field `northExit` in Room to private, let the compiler find all 3 spots where Game lists the four directions and move the code to Room. Then refactor Room to store arbitrary directions in a `HashMap<String,Room>`.
6. Add at least one new direction to your world: as a first step, add one or more new test cases to GameSystemTest to test that this direction/passage between rooms is available. This test will fail.
Them implement the new connection. If you did the refactoring right, you should only need to adapt the
`createRooms()` method in Game.
