---
title: 'Exercise 09: The World of You'
author: kleinen
source: https://github.com/htw-imi-info1/exercise09-zuul
draft: false
---

This week&#8217;s lab work will begin a larger project that will occupy us until the end of the semester.

Source code for this exercise: {{< source >}}

# Pre-lab

Prepare your prelab before coming to class! Doing the pre-lab will save you time during the lab.

**P0**. Invent your own game scenario away from the computer. Don't worry about implementation or classes or programming. Just try and come up with something interesting. It needs to be the basic structure of a player moving through different locations. Possible examples:

*   White blood cells traveling through the body in search of viruses to attack
*   Finding the exit in a big shopping mall
*   A mole must find the food hidden in one of his burrows before winter comes
*   An adventurer is looking for a monster in a series of dungeons
*   The bomb squad must find the room with the bomb before it goes off.
*   The NSA is looking for Ed Snowdon and going from country to country.

Be creative! Give your game a name.

**P1**. What is the goal of your game, that is, when does the player win?

**P2.** What could you add to the game to make it interesting? Trap doors, treasures, monsters, &#8230;

**P3.** Draw a map of your game layout.

# What To Hand In
Please hand in:
* zip-folder with your code - just the your-zuul directory zipped.
* Your lab report as a pdf. For more Information on the report see [the Labs and Exercises page](../).

## What should be in the lab report

Now, that you advanced a bit in programming, you do not need to describe every little step anymore. Specifically for this lab, you should include:
- a description of your world as done in the prelab.
- screenshots/output of the start of your game and if applicable 1-2 other relevant parts.
- the source code (screen shots or other) of your new commands and getCommandWords implementation.
- Answers to any questions asked in the assignment below.

# Assignment

**World of You**

0.  Start with the bad Zuul game with tests - {{< source path = "your-zuul" >}} -  and **refactor it as discussed in the lectures**. If you are doing mole burrows instead of rooms, you can change the variable names as needed. Don't forget to update the test cases whenever needed.
    
    Note: depending on the Map implementation you choose for the Room::exit field, the order of exits may be different. [LinkedHashMap](https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/LinkedHashMap.html) retains the order of insertion - the SortableMap I chose in class, [TreeMap](https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/TreeMap.html), sorts them alphabetically.

1.  Draw an  [object diagram](https://www.agilemodeling.com/artifacts/objectDiagram.htm) showing the state of your system just after it has been started. Does it change if you issue a `go` command?  (An [object diagram](https://www.agilemodeling.com/artifacts/objectDiagram.htm) shows the active instances of classes - objects - at a given time in the execution of a program, as opposed to a [class diagram](https://agilemodeling.com/artifacts/classDiagram.htm) that shows the classes defined in the program source code).

2.  Add a `look` command to your game. It should show the room description
again. Add a test for it.

3.  Add an additional command such as `eat`, which for now just prints out "You have eaten now and are not hungry any more". In the next exercise, when we have added items, you can make it so that you can only eat if you have found food.
Add a test for it.

4.  Implement an improved version of printing out the command words. This should be a static method in CommandWord:
```java
public static String getCommandWords(){...}
```
5.  Add another command -- did you have to change the Game class? Why or Why not?

6. Are there any code duplications left after your refactoring and introduction of the `getCommandWords`` method?

7. (For the bored) Prepare a multi-lingual version and use enums. You find an Enum version of `CommandWords.java` in the subfolder {{< source path = "additions_01_CommandWords_Enum" >}}.

8. (*Special Challenge* / For the bored) What is an model-view-controller architecture? Adapt your code to follow this architecture pattern.


{{<mermaid>}} 
classDiagram
    class Game{
        Room currentRoom
        +play()
        +String processInputLine(String line) // for testing
        - processCommand(Command)
        - printHelp()
        - goRoom(Command)
        - quit(Command)
    }

    class Room{
        northExit
        southExit
        eastExit
        westExit
    setExits()
    getDescription()
    }
    class Command{
    -String commandWord
    -String secondWord

    +Command(commandWord, secondWord)
    +String getCommandWord()
   
    +String getSecondWord()
   
    +boolean isUnknown()
   
    +boolean hasSecondWord()
}


class CommandWord{
    GO QUIT HELP
  +boolean isCommand(String)

}
<<enum>> CommandWord

class Parser{
    Command getCommand() 
    Command getCommand(String) // for testing
}
{{</mermaid>}} 