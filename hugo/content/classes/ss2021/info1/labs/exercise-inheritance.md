---
title: 'Exercise Drölf: Inheritance'
author: fernsel
layout: lab
---

This week's lab work is intended give you practice working with inheritance. It combines content from various chapters in the book, including this week's chapter, chapter 12.

# Post-Lab, AKA  What To Turn In

* A report of your completed assignment, submitted in Moodle as a pdf
* Your BlueJ project as a zip file

Lab assignments are due on Thursday at 22:00.

* * *

# Assignment

## Pokemon

You are part of the team that develops the logic behind a Pokemon game.

0) Download and a look at what your team created so far: [lab-inheritance](https://github.com/htw-imi-info1/lab-inheritance). Execute the tests.

1) Check what class inherits from what class. Is the class that is inherited from abstract? If so, why might that be? Which class has which methods available? When is "super()" used and what does it do?

2) As you can see, only one Pokemon exists so far: Charmander. Add [Squirtle](https://bulbapedia.bulbagarden.net/wiki/Squirtle_\(Pok%C3%A9mon)). You will need to add a new category of Pokemon "Water", that also inherits from Pokemon.
You might need to add another inheritance hierarchy in form of a "Category" class in order to avoid duplicate code in the Fire and Water class! Thing abstractly: What do both classes have in common?

3) Write a test class for Squirtle to make sure everything works as expected. You can copy and adapt the test class of Charmander for that.

4) Challenge (please try this, but don't worry if it doesn't work out): Imagine you needed to add yet another Pokemon: [Bulbasaur](https://bulbapedia.bulbagarden.net/wiki/Bulbasaur_(Pok%C3%A9mon)). Draw out the class diagram you can see in BlueJ and change it on paper in order to fit Bubasaur in. Careful, this Pokemon has two types! But in Java a class can not inherit from two classes at once! Think about how you might solve this - it might help to brainstorm with a partner! Put your notes and diagram in the report, even if you did not find a solution.

5) For the bored: Extend the Pokemon game so that two Pokemon can fight each other. Add Power Points for that!
6) For the bored: Extend the game so that Pokemon level up when they gain enough Experience Points and learn new attacks.
