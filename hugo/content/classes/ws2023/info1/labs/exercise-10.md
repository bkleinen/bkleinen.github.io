---
title: 'Exercise 10: Use Inheritance for Commands'
author: kleinen
source: https://github.com/htw-imi-info1/exercise09
draft: true
---

This week&#8217;s lab work will continue a larger project that will occupy us until the end of the semester.

# Pre-lab

Prepare your prelab before coming to class! Doing the pre-lab will save you time during the lab.

**P1**. Which classes did you have to change in your last lab to introduce new commands?

**P2.** To execute commands, there are two responsibilities: checking if an input was a valid command, and executing the command. Which classes in the Zuul project should take care of these responsibilities.

**P3.** Create an overview of all the places that "know" about valid command words.

**P4.** Some commands - currently only the "go" command, but there will be more - alter the state of the game - for now, only the players location. Where is this state stored? Is this a good place for that if you consider that we will further information to that state, esp. Items a player carries at the moment.


# What To Hand In
Please hand in:
* zip-folder with your code
* Your lab report as a pdf. For more Information on the report see [the Labs and Exercises page](../).

Lab assignments are due the day before your next lab at 10pm.

* * *

# Assignment

**Refactor Command Identification and Execution**

1. If you haven't already done so in the last lab, copy the CommandWords Enum to your project. You find it in the subfolder {{< source path = "additions_01_CommandWords_Enum" >}}.

2. Make sure that you have test cases for your new commands (eat, look, etc) before you start the refactoring.

2. Change the type of the `commandWord` field in `Command` from String to CommandWord and fix the resulting Compile errors. 
Hint: you will need a static method in CommandWord that maps a String to a command Word. As it is the reverse of toString you can name it `fromString`. Check that your tests are still running.

### Move the Command Implementations from Game to Command

```java
  private String goRoom(Player player) 
    {
        Command command = this;
        Room currentRoom = player.getCurrentRoom();
        ....
    }
```


1. Preparation: as some commands change the game status, introduce a Player class that holds the currentRoom of the player.

3. Move the processCommand method and all command implementation methods from Game to Command.

2.  Extend your project so that a room can contain a single item. Items have descriptions and weights. When creating rooms and setting their exits, items for this game should also be created. When a player enters a room, information about an item present in this room should be displayed.
3.  How should the information about an item present in a room be produced? Which class should produce the string describing the item? Which class should print it? Why? If answering this exercise makes you feel you should change your implementation, go ahead and do so &#8211; and explain in your report why.
4.  Modify the project so that a room can hold any number of items. Use a collection to do this! Make sure the room has an `addItem` method that places an item into the room. Make sure all items get shown when a player enters a room. Set up a fixture to thoroughly test this!

5.  Implement a &#8220;back&#8221; command that does not have a second word and takes the player back into the previous location. Test this! What happens if a second word is given?

6.  (*Special Challenge*) What happens if you type &#8220;back&#8221; twice? Is this behavior sensible? Implement it so that using it repeatedly takes you back several rooms, all to the beginning of the game if used often enough. Use a Stack data structure, even if we don&#8217;t know about them yet. You can read about them in the [API][1].
7.  (for the bored): Add at least two specialized Items to the game, using inheritance. For instance, add Food, Weapons and Clothing in a classical Role-Playing-Game. Each of these specializations (Subclasses) should have at least one special field.


 [1]: https://docs.oracle.com/javase/8/docs/api/java/util/Stack.html
