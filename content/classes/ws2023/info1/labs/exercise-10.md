---
title: 'Exercise 10: Use Inheritance for Commands'
author: kleinen
source: https://github.com/htw-imi-info1/exercise09-zuul
draft: false
toc: true
--- 

This week&#8217;s lab work will continue the zuul project.

{{<mermaid>}} 
classDiagram

    Command <|-- Go
    Command <|-- Quit
    Command <|-- Help
    Command <|-- Look
    Command <|-- Eat
    <<abstract>> Command
    class Command{
      processCommand(Player)*
    }
    
    class Go{
      processCommand(Player)
    }
    class Quit{
      processCommand(Player)
    }
    class Help{
      processCommand(Player)
    }
    class Look{
      processCommand(Player)
    }
    class Eat{
      processCommand(Player)
    }
{{</ mermaid>}}

The Class Hierarchy for Commands.

### Update 28/12/2023

As the refactoring described below - even with the provided parts - is still quite difficult as you might get a lot of compilation errors along the way,
here's a third alternative:
Re-do the last lab - the refactoring described in Chapter 08, Designing Classes, again (or for the first time, as a lot of you have missed that part! ) based on this version that already has the Command Hierarchy:
{{< source path = "your-zuul-command-hierarchy" >}}.

Note that your commands must be built in following the new design!

### Overview

The Game class has become longer and longer every time we added a new command! Also, if you add a new Command, you need to add the new CommandWord in several places. As we expect even more Commands to be implemented, the Project should be refactored to ease the addition of new Commands. 

First, all functionality concerning commands is moved to Command and CommandWord.
Then, an inheritance hierarchy for the Command implementations is created.

This will be quite a lot of refactoring. You can decide if you want to do everything yourself, or copy the classes from the addition_01 - addition_03 subfolders in the repo {{<source >}}, or anything in-between (do the refactoring, but use the files in additions as hints or copy parts of it to speed up the process). The repo contains instructions how to copy the classes and the necessary adjustments: {{< source path = "additions-readme.md" >}}

# Pre-lab

Prepare your prelab before coming to class! Doing the pre-lab will save you time during the lab.

**P1**. Which classes did you have to change in your last lab to introduce new commands?

**P2.** To execute commands, there are two responsibilities: checking if an input is a valid command, and executing the command. Which classes in the Zuul project should take care of these responsibilities? Where are they implemented now?

**P3.** Create an overview of all the places that "know" about valid command words.

**P4.** Some commands - currently only the "go" command, but there will be more - alter the state of the game, which is for now only the players location. Where is this state stored? Is this a good place for it if you consider that we will add further information to that state, esp. Items a player carries?


##  What To Hand In

Please hand in:
* zip-folder with your code
* Your lab report as a pdf. For more Information on the report see [the Labs and Exercises page](../).

* * *

# Assignment:  Refactoring

(as stated above, you can copy the classes in the additions_0n.. subfolders instead of implementing everything yourself. Do read through the description, though.)

### General Preparation
1. Make sure that you have test cases for your new commands from the last lab (eat, look, etc) before you start the refactoring.
They should be green, of course, before you start to change anything!

2. It is a good idea to save intermediate stages. You can simply copy the whole your_zuul folder for every step to save the last working solution. (eg your_zuul_01, your_zuul_02 etc). 

### Code Preparation

The following steps make the refactoring easier. (You can skip them for now, but will encounter that you need them during the following steps.)

1. If you haven't already done so in the last lab, copy the CommandWords Enum to your project. 

2. Change the type of the `commandWord` field in `Command` from String to CommandWord and fix the resulting Compile errors. 
Hint: you will need a static method in CommandWord that maps a String to a command Word. As it is the reverse of toString you can name it `fromString`. Check that your tests are still running.

3. As some commands change the game status, introduce a Player class that holds the currentRoom of the player.

You can copy most of this preparation from the subfolder {{< source path = "additions_02_player_parser" >}}.

You can fix the resulting error in `Game` like this:

```diff
-        String commandWord = command.getCommandWord();
+        String commandWord = command.getCommandWord().toString();
```

Do no more than is necessary to make the code compile and the tests green again. E.g. the switch statement may still contain the literal strings. (case "help": etc).
While this should be changed to complete this refactoring, you do not need to do so as the switch becomes obsolete in the next parts, anyway!


### Refactoring Part 1: Move the Command Implementations from Game to Command

Move the processCommand method and all command implementation methods (the methods that are called from processCommand) from Game to Command.

This will not compile. Have a look at all the resulting compile errors. They have two causes, can you identify them? Read this instructions first before you start to fix them:
    
1. `currentRoom` is not available in `Command`
2. `command` is now `this`
    
To fix this, add a Player parameter to processCommand and the command implementation methods (goRoom, printHelp, quit, etc) that need the currentRoom and remove the command parameter. The command parameter is no longer needed, as we are within the Command class. Thus, processCommand in Command should start like this:

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

Most command implementations do not need the Player parameter. You can add it anyway because they will need have the same interface later.

Make sure that Command compiles.

#### Change currentRoom to player in Game

Last not least, you need to call the new processCommand method in Command
from Game. It should look like this:

```java 
String output = command.processCommand(player);
```
For this, Game needs a field `Player` that replaces `currentRoom`.
Change the remaining occurrences of currentRoom in Game to use the new field.

Now, everything should work again - be sure to run the automated tests!

### Refactoring Part 2: Introduce Command Inheritance Hierarchy

Although the code is already better than before, we actually just moved the growth of the Game class and the switch statement to the Command class.
Now this class will become more and more complex if we continue to add more Commands, as well as the switch statement in processCommand.

The switch statements distinguishes the different types of command. We will change that to split up the implementation into a separate Command subclass for each command.

#### 2.a Add Temporary Subclass 

To start and ease the refactoring process, we start by creating a temporary subclass that holds all the commands we have not migrated yet.
move everything you moved from Game to this new Class, named e.g. `AllCommands` like in the example below, starting with processCommand, including all methods called by processCommand, which happen to be the command implementations.


```java
public class AllCommands extends Command
{
    public AllCommands(CommandWord firstWord, String secondWord){
        super(firstWord, secondWord);
    }
```


#### 2.b Make Command abstract

As all actual Commands will be Subclasses of Command, Command itself should be abstract.
To do so, add the abstract keyword to the class definition and add an abstract method processCommand:

```java
public abstract class Command
{
    // ...
    public abstract String processCommand(Player player);
}
```

#### 2.c move Command instantiation to CommandWord
This results in a compile error in Parser, like this:

![](./command-creation.jpg)

This can no longer work, as now the correct subclass of command needs to be chosen depending on the firstWord/word1.
Also, this should be done in CommandWord, as
CommandWord is the class that holds the responsibility of knowing the correct command words for the commands and vice versa. Thus, the selection and creation of the correct command subclass should be delegated to CommandWord like this:

```java
return CommandWord.buildCommand(word1, word2)
```

Again, you can use prepared classes. Make sure to at least copy the new version of `CommandWord` with the buildCommand implementation. The bored can check out how this works, but you don't need to.
See {{< source path = "additions_03_Command_Hierarchy" >}}.

#### 2.d move Command implementations to Command subclasses

Now, move the Command implementations command by command to the Command Subclasses. To do so, 
- move the implementation method (e.g. `goRoom(Player)`) from AllCommands to the/a subclass,
and change the signature to 

```java
@Override
public String processCommand(Player player) 
```
- replace AllCommands with the new class in the `commandFactories` HashMap in 
  `CommandWord` such that the `buildCommand` method instantiates the new Subclass, `Go`:

```diff
- commandFactories.put(GO, (w1,w2)-> new AllCommands(w1,w2));
+ commandFactories.put(GO, (w1,w2)-> new Go(w1,w2));
```
- Run the tests again to check wether the refactored command works.

#### 2.e Remove the Temporary Command Subclass.

After migrating all command implementations, the `AllCommands` 
(the temporary class) class should be empty and can be removed.

### Create a new command

Now, try out your refactored Zuul by creating a new command!

## Writeup - your report

For your report, you don't need to describe the whole refactoring - 
just describe what you needed to do to move your commands into the new 
design.

Reflection Question: Try to answer this question:

Why is it necessary to add a Player class/field and pass this to processCommand
instead of simply passing the former currentRoom field?

# For the bored: further refactoring

There are two commands that are hidden in the original implementation:
Generating the output for `Unknown` and `Welcome`. `Quit` is implemented like the other commands, but it's output text is defined somewhere else.

1. Unknown commands
The handling of unknown commands is scattered over the Project.
I've already included 'Unknown' in the Commands and CommandWord enumeration.
Use this command to encapsulate the handling of unknown commands.

2. Welcome text
`Game.java` still contains the welcome method, which could be implemented as a command that is executed at the start of the Game for consistency. 

2. Quitting
The Quit functionality is also distributed - null is returned, and the Command output is in the main game loop. Refactor this. You will need to add a boolean flag to 
Player to indicate that Quit was called.



