---
title: 'Exercise 12: Pick up and Carry'
author: kleinen
layout: lab
---

# Pre-lab

This week's lab work will finish up your project.

#### What to Bring to Lab

Please bring these exercises printed out or written out with you to lab. Please have your name on your page.

**P1**. Here are some informal specifications: A player must be able to pick up items from the current room. They can carry any number of items, but only up to a maximum weight limit. Some items are too heavy to be picked up. The player can drop one or all items in the current location. What changes are you going to have to make to your game? Don't program them yet, just specify the changes that need to be made to each class in writing.

**P2.** There are (at least) two ways to make an item too heavy to pick up. We can just make them very heavy, and define what the maximum weight a player can pick up is. Or we can have a Boolean field `canBePickedUp`. Which solution do you think is better? Why?

**P3.** What sort of a data structure are you going to use to keep track of all the items a player has? Why?

# Post-Lab, AKA  What To Turn In

Your completed assignment, submitted in Moodle as a pdf, should include:

- A description of what you did during the lab, including a record of what worked, what problems you encountered, and answers to the questions asked in the pre-lab. The focus is on the process!
- Include the final version of your source code.
- The names and roles of any collaborators in any parts of the exercise.
- A record of how long you needed for this lab and what you learned.

* ***and again:*** The lab report can be rather short. Is is mainly for yourself, to reflect and track your learning process. You don't have to note down every single step. Just take a couple of minutes to reflect on your learnings, and things you struggled with. And your co-workers :)

Lab assignments are due Sundays at 23.00, I want you to get some sleep the night before Monday class. They may, of course, be turned in earlier. You hand them in by preparing the report in PDF and submitting it to Moodle.
* * *

# Assignment

## Picking up Items

- If not already there, make sure there is an Item class in the project. Items have names, descriptions, and weights. Make sure you can print out an item's description.
- Implement a command "take" that has the name of the item as the second parameter. What happens if the item to be taken is not in the room?
- Implement the command "drop" to get rid of an item. "drop all" should do just that, drop all items currently carried.

## Carrying Items
1. Implement the field to store the items currently carried by the player. How is the maximum weight determined? Does "take" know how to deal with this? You will probably need a method to ask if the current item can be taken by the player.
2. Implement an "items" command that prints out all items currently carried with their weights, and the total weight.

##For the Bored

1. (For the bored) Add a magic cookie item to a room. Add an "eat cookie" command. If a player finds and eats the magic cookie, it increases the weight that the player can carry. You may adapt this to your game scenario
2. (For the bored) Add some form of time limit to your game. If a certain task is not completed in a specified time (or number of steps through the rooms), the player loses.
3. (For the bored) Implement a trapdoor - one that only goes one way. Don't forget to sort out what happens with "back" on this exit.
4. (For the really bored) Add a beamer to the game. It can be charged, that is, it remebers the location it was charged in. And it can be fired, returning the player automatically to the remembered location. Remember to sort out back :)
5. (To keep the bored busy over the spring break) Add locked doors. Players have to find the key and unlock them before they can continue. Add a transporter room that transports the player to a random room. Add non-playing characters to the game - they are similar to items, but they speak to you when you meet them in a room. They may give you help if you are nice to them. Add moving characters. Add monsters. Now fix theprocessCommand method, which is probably an unholy mess by now. Refactor and improve the design to make it easy to add new commands.

* * *

# Writeup
Submit your writeup as your post-lab to the Moodle area by the final date given on the schedule.
* * *
