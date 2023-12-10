---
title: 'Exercise 10: Use Inheritance for Commands'
author: kleinen
source: https://github.com/htw-imi-info1/exercise09
draft: true
---

This week&#8217;s lab work will continue a larger project that will occupy us until the end of the semester.

The Game class has become longer and longer every time you added a new command! Also, if you add a new CommandWord you need to add the new CommandWord in several places. As we expect even more Commands to be implemented, the Project should be refactored to ease the addition of new Commands. 

First, we will move all Command stuff to Command and CommandWord.
Then, we will introduce an inheritance hierarchy for the Command implementation.
# Pre-lab

Prepare your prelab before coming to class! Doing the pre-lab will save you time during the lab.

**P1**. Which classes did you have to change in your last lab to introduce new commands?

**P2.** To execute commands, there are two responsibilities: checking if an input is a valid command, and executing the command. Which classes in the Zuul project should take care of these responsibilities? Where are they implemented now?

**P3.** Create an overview of all the places that "know" about valid command words.

**P4.** Some commands - currently only the "go" command, but there will be more - alter the state of the game, which is for now only the players location. Where is this state stored? Is this a good place for it if you consider that we will add further information to that state, esp. Items a player carries at the moment?


##  What To Hand In
Please hand in:
* zip-folder with your code
* Your lab report as a pdf. For more Information on the report see [the Labs and Exercises page](../).

* * *

# Assignment



## 1. Preparation
1. Make sure that you have test cases for your new commands from the last lab (eat, look, etc) before you start the refactoring.
They should be green, of course, before you start to change anything!

2. It is a good idea to save intermediate stages. You can simply copy the whole your_zuul folder for every step to save the last working solution. (eg your_zuul_01, your_zuul_02 etc). 

## 2. Refactoring


### Refactoring: Preparation
1. If you haven't already done so in the last lab, copy the CommandWords Enum to your project. You find it in the subfolder {{< source path = "additions_01_CommandWords_Enum" >}}.


2. Change the type of the `commandWord` field in `Command` from String to CommandWord and fix the resulting Compile errors. 
Hint: you will need a static method in CommandWord that maps a String to a command Word. As it is the reverse of toString you can name it `fromString`. Check that your tests are still running.

3. As some commands change the game status, introduce a Player class that holds the currentRoom of the player.

It is sufficient to do only the steps that are necessary to make the code compile and the tests green again. E.g. the switch statement may still contain the literal strings. (case "help": etc).
While this should be changed to complete this refactoring, you do not need to do so as the switch becomes obsolete in the last part, anyway!

### Refactoring Part 1: Move the Command Implementations from Game to Command

Move the processCommand method and all command implementation methods (the methods that are called from processCommand) from Game to Command.

This will not compile. Have a look at all the resulting compile errors. They have two causes, can you identify them? Read this instructions first before you start to fix them:
    
1. `currentRoom` is not available in `Command`
2. `command` is now `this`
    
To fix this, pass the Player object to processCommand and all command implementation methods (goRoom, printHelp, quit, etc) and remove the command parameter. The command parameter is no longer needed, as we are within the Command class. Thus, processCommand should start like this:

```java
public String processCommand(Player player) 
    {
        Command command = this;
```

and all command implementations:

```java
  private String goRoom(Player player) 
    {
        Command command = this;
        Room currentRoom = player.getCurrentRoom();
        ....
    }
```

Most command implementations do not need the Player parameter. Add it anyway to have the same interface.

#### Change currentRoom to player in Game

Last not least, you need to call the new processCommand method in Command
from Game. It should look like this:

```java 
String output = command.processCommand(player);
```

Change the remaining occurrences of currentRoom in Game to a new field `Player player`.

Now, everything should work again - be sure to run the automated test!

### Refactoring Part 2: Refactor Command to Command Hierarchy

Although the code is better than before, we actually just moved the growth of the Game class and the switch statement to the Command class if we continue to add more Commands. 

Now we are finally tackling the large and larger-to-be switch statement.

