---
title: 'Info2: Exercise 01: Application Design'
author: kleinen
draft: false
---
{{< figure src="/images/classes/info2/crc-cards.jpg" caption="CRC Cards">}}

## Learning Goals

After this lab you should be able to agree with each of the following statements.

I can use CRC Cards to design an application:
* Using the underline methods, I can identify candidates for classes, methods and fields. 
* By working through scenarios I can identify cases where a class needs to be split up. 
* By working through scenarios I can identify cases where classes need to be merged. 
* By working through scenarios I can identify cases where additional classes need to be added. 
* By working through scenarios I can identify what data needs to be stored. 

## Pre-Lab

Remember to do all the necessary steps listed on the [Labs](..) page, including the following exercises:

***P1.*** Refamiliarize yourself with the Zuul Project in Info1.

***P2.*** Recall the Responsibilities of the given classes. What was the point
         of the refactoring(s)?

***P3.*** Find out what the *Class-Responsibility-Collaboration Card method* is, what the use of CRC Cards is and how they are created. The following resources can be of help:
* [The method of CRC cards and the context of OOP](http://c2.com/doc/oopsla89/paper.html)
* [Example CRC cards and how to create CRC Cards](http://agilemodeling.com/artifacts/crcModel.htm)

***P4.*** For the bored or curious: Check out [TubMud](http://www.tubmud.de/)

## Assignment: CRC Cards

### 1. Background and Requirements

A Startup had found the Zuul Example and decided to make a cool real
[multi-user dungeon](https://en.wikipedia.org/wiki/MUD) game based on it.
You've been hired to do the programming, and
there have been several meetings to talk about what should be added to the
simple Zuul Project. The outcome is a description about the desired functionality.
(We won't be concerned with how that happens in detail, this is called Requirements
 Engineering and will be discussed in the third semester in Info3.)

Assume that this is the description written:  
(this is a lot, read through all of it, but you won't need to work on everything.)

#### Cool Zuul

CoolZuul is based on a already extended version done in the labs or programming
assignments: Rooms have been refactored to not contain hard-coded assumptions
about the setup of the World, Commands have been refactored, and Items been added.
Also, a class "GameStatus" has been introduced to store the status of the game
during play, which is the current room and the item inventory carried by the
sole player. Items can be picked up and dropped in Rooms.

1.  **Multiple Players**  
    The CoolZuul game should be extended to allow for multiple players.
    Each player has their own inventory of items.
    Players see other players in the same room and can talk to them.
    There should also be a "shout" command which enables players to communicate
    with all other players. (Note that you will not be able/know how to implement
    this until later - don't worry about that!)

2. **History of Visited Rooms**  
   There should be a history of visited Rooms stored for each player enabling
   the player to go back more than one step.

3. **Options**
   Choose one of these Options to do CRC cards on.

    1.  **Option A: Quests**  
       The game should support Quests. Active quests get notified of actions in the game,
       or by the player, to be able to determine the progress and completion of a Quest.
       Quests will be advertised on a billboard within the game, and players need to
       actively start a quest to play and complete it. Players can see a list of
       started and completed quests.

               ... there is a huge billboard...
               > read billboard
               You read the billboard - it contains a list of quests!
               - teddy: find Teddybear: find the lost Teddybear in the Forest.
               - supper: collect Mushrooms: collect enough Mushrooms for supper.
                    Be careful not to use poisonous ones!
               > start supper
               You've started Quest "supper"
                ...
                Congratulations! You successfully made supper.               

    42. **Option B: Special Items**  

        1. **Interaction with Items**
        there should be special items which allow for interaction, e.g. books that can
        be read, boxes that can be opened. Items can be contained in other items.

                Some Room Description...
                Items:
                - strange box
                > open box
                There is a key in the box!
                (key is moved to inventory of player.)

                Some Room Description...
                Items:
                - a book
                > read book
                     ... quest description or hint follows...

        4. **Hidden Items**  
        There should be Items which are not immediately visible. A command "examine"
        should be introduced to reveal these items.
        e.g enabling this interaction:

                 ....
                 There is a strange blob on the wall
                 > examine blob
                 You examine the blob closer. It is an old chewing gum with a key hidden under it!
                 Items:
                   - key
                 > take key

    5. **Option C: Closed Doors and blocked passages**  
       Exits to other Rooms can be blocked by Doors, which may be easy to open or
       locked with a key. They may also be blocked by something or otherwise hidden.
       They are similar to items or hidden items, in such that the room description
       should contain a hint that they are there, and can be interacted with.
       Some examples:

               There is a door to the north.
               > open door
               You open the door.
               > go north

               There is a door to the south.
               > open door
               You dont have a key.
               > use key on door
               You open the door.
               > go south

               You see a forest. There is a big stone.
               > examine stone
               You examine the stone closer and manage to move it.
               There is a hidden passage down!
               Exits:
               - down
               > go down


    7. **Option D: Clothing**
        There should be clothing to wear. Clothing can be found in rooms like
        other items. After picking up the clothing item it can be worn with the
        command "wear" and taken off again with "remove". Only one sort of
        clothing can be worn, e.g. one pair of trousers, one shirt, one armour,
        one pair of shoes, one helmet.

                ...
                > wear helmet
                You wear your helmet.
                > wear boots
                You are already wearing sandals.
                > remove sandals
                You take off your boots.
                > wear boots
                You are wearing your boots.
                > inventory
                You are wearing your helmet.
                You are wearing your boots.
                Inventory:
                  - a key



        [Non-Person-Characters](https://en.wikipedia.org/wiki/Non-player_character)
        in the game.
    7. **Option E: NPCs** (for the bored)  
        There should be
        [Non-Person-Characters](https://en.wikipedia.org/wiki/Non-player_character)
        in the game.


### 2. Identify Class and Method Candidates

The first step is to discover some candidate classes and methods.

A simple method to discover candidates for classes, introduced by Abbott (1983),
and later popularized by Booch (e.g. Booch 2004, P 136) is the following:

  * Underline all the nouns (in an English language text) in one color, such as blue
  * Underline all the verbs in another color, such as red
  * Underline all the adjectives in a third color, such as green.

The nouns are candidates for classes, the verbs for methods and the adjectives for attributes/fields.

Be aware that this method has later been critized for not beeing a rigourous approach and only being useful for simple problems, and that you get possible *candidates* for classes and methods - not every noun will be a class name in your application!


### 3. CRC Cards

#### Preparation

Get a pack of A6 index cards or simply cut A4 papers twice.
Make CRC cards for each of the existing classes as well as of your candidate classes.
Only put down the class names for now.

It is really important that you use individual cards! You will need and want to
move them, discard them, replace them. See the picture above!

***Note: The above requirements are a lot! Only work on one of the marked
parts*** - you may, of course, do more if you want to.

#### Work through the Scenarios

The examples above how it should be able to interact with CoolZuul constitute
scenarios. Work through them and refine your CRC cards based on what you discover.
Ask these questions:

How is this done, exactly?
What data is going to have to be stored? Where?
If you feel the need to create a new class, feel free to do so!
If you discover that a class needs to be split in two - make two new cards and rip up the old one.
If two need to be merged, do so.
Keep a list of things you want to keep track of.

Some of the requirements may need to be clarified by writing down an interaction
example first.

#### Dont't worry about the Implementation!

Don't worry if you are unsure how to implement certain things - e.g. the
persistence part or differentiating the input from multiple players.

This assignment is about design - you just need to identify that there is
something that needs to be taken care of somewhere; without making decisions
about the implementation just yet.

## Repository for this Lab

[https://github.com/htw-imi-info2/lab02-cool-zuul](https://github.com/htw-imi-info2/lab02-cool-zuul)

## Lab Report / What to turn in

All info on the lab reports can be found on the [Labs]({{<ref "../labs" >}}) page.

Additional requirements for this lab:
* Please submit your final CRC cards and a description of the process you went through for creating them.
