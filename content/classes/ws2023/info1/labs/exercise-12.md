---
title: 'Exercise 12: Pick up and Carry'
author: kleinen
draft: false
---

This week's lab work will finish up your project.

# Pre-lab

Prepare your prelab before coming to class! Doing the pre-lab will save you time during the lab.

**P0**. Here are some informal specifications: A player must be able to pick up items from the current room. They can carry any number of items, but only up to a maximum weight limit. Some items are too heavy to be picked up. The player can drop one or all items in the current location. What changes are you going to have to make to your game? Don't program them yet, just specify the changes that need to be made to each class in writing.

**P1.** There are (at least) two ways to make an item too heavy to pick up. We can just make them very heavy, and define what the maximum weight a player can pick up is. Or we can have a Boolean field `canBePickedUp`. Which solution do you think is better? Why?

**P2.** What sort of a data structure are you going to use to keep track of all the items a player has? Why?

# What To Hand In
Please hand in:
* zip-folder with your code.
* Your lab report as a pdf. For more Information on the report see [the Labs and Exercises page](../).

Lab assignments are due the day before your next lab at 10pm.

# Assignment

## Picking up Items
0. If not already there, make sure there is an Item class in the project. Items have names, descriptions, and weights. Make sure you can ~~print out~~ generate an item's description to be printed out by the main loop.
1. Implement a command "take" that has the name of the item as the second parameter. What happens if the item to be taken is not in the room?
2. Implement the command "drop" to get rid of an item. "drop all" should do just that, drop all items currently carried.

## Carrying Items
0. Implement the field to store the items currently carried by the player. How is the maximum weight determined? Does "take" know how to deal with this? You will probably need a method to ask if the current item can be taken by the player.
1. Implement an "inventory" command that prints out all items currently carried with their weights, and the total weight.

## For the Bored
0. (For the bored) Add a magic cookie item to a room. Add an "eat cookie" command. If a player finds and eats the magic cookie, it increases the weight that the player can carry. You may adapt this to your game scenario
1. (*Special Challenge* / For the bored) Add some form of time limit to your game. If a certain task is not completed in a specified time (or number of steps through the rooms), the player loses.
2. (For the bored) Implement a trapdoor - one that only goes one way. Don't forget to sort out what happens with "back" on this exit.
3. (For the really bored) Add a beamer to the game. It can be charged, that is, it remembers the location it was charged in. And it can be fired, returning the player automatically to the remembered location. Remember to sort out back :)
4. (To keep the bored busy over the spring break) Add locked doors. Players have to find the key and unlock them before they can continue. Add a transporter room that transports the player to a random room. Add non-playing characters to the game - they are similar to items, but they speak to you when you meet them in a room. They may give you help if you are nice to them. Add moving characters. Add monsters. Now fix theprocessCommand method, which is probably an unholy mess by now. Refactor and improve the design to make it easy to add new commands.
