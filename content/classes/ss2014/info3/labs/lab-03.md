---
title: 'Assignment 03 - GIT and State Machine Diagrams'
author: kleinen
layout: page
---
----------------


![Machine](../../images/machine.jpg "machine")
Foto by [Jeff Kubina](/broken_link)


# Pre-Lab
## Git & GitHub

* [Git](https://git-scm.com/) is the state-of-the-art Source Code Management Tool. Install the command line client for your platform, and maybe also a GUI Client, [which can all be found here](https://git-scm.com/download/).
* Sign up on [GitHub](https://github.com/) if you haven't already done so. See also
[Setting up Git](https://help.github.com/articles/set-up-git) from GitHub for a comprehensive documentation.
* For other projects, you might want to use the HTW [Projekteserver](https://studi.f4.htw-berlin.de/www/) which offers you private repositorys, or any other service offering
central repositories. Github also offers free private repositories for students.
* Github translates markdown files automatically to HTML - That's how the README.md files you see in most repositories work. Read through the [Markdown](https://help.github.com/articles/markdown-basics) and maybe also the [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown) documentation.

## State Machines

Please read through this intro to state machines.

* [UML 2 State Machine Diagramming Guidelines](https://www.agilemodeling.com/style/stateChartDiagram.htm)

I will only give a brief intro/Q&A to State Machine Diagrams in the lab.


# Assignment
## Git

This exercise is for getting aquaintained with git and github (and markdown) with the practical application of creating online notes collaboratively. This gives you the opportunity to practice using git and github collaboration features with a bunch of plain text files before moving on to managing heaps of source code.
### Create a Note Repository

Choose a subject you want to compile notes on. This might be git and github itself
while you're trying it out, or anything else.

Build Teams, create a central repository within each team and add the team members as collaborators on github. The team size is up to you - it has to be at least two, the more you are the less documentation each of you has to write, but the cooperation overhead increases, too. To pass this exercise, each teammember must have more than one commit in the repository.

### First Round of Notes

Divide the topic(s) between you and start writing notes each. Usually it's not a great idea if two people work on the same file at the same time.

### Second Round

Start exchanging the files using git and github. That is, commit your changes locally and then push them to the github repository, after pulling changes from the others.

### Merge Conflicts

If you feel confident exchanging files with git and github, deliberately create a merge conflict and resolve it. Each one of you should have resolved a merge conflict - you'll be happy that you've done that before if you happen to get huge merge conflicts the night before the deadline of a project.

### Pull Requests

Last, exchange the repository urls with another team. You can just swap them, or exchange them in circles.

Review the notes of the other team (by looking at the repository online, then forking and cloning it). Each of you should send the other team at least one pull request. Always create a new branch for a pull request. Send the other team enough pull request such that each team member can merge a pull request.



## State Machine Diagrams

Your job in this exercise is to model all of the following systems (2 points per system for 1-3, 4 points for system 4):

1. Model the modified goat/cabbage/wolf problem: The farmer is in Schöneweide and wants to get his goat, his cabbage and his wolf over to Oberschöneweide. Only one thing can fit in his boat at a time beside himself. He cannot leave the cabbage and the goat or the goat and the wolf alone on the same side of the river, for obvious reasons. Is it possible for him to get all three possessions across the Spree? Draw a State Machine Diagram modelling a solution to this problem.
2. Model the states an IMI student passes through from the first until the sixth semester. (Special prize for the most humorous model that is not offensive.)
3. Model an algorithm that determines if a given string is a proper floating-point number, i.e.

        [sign] integerpart dot fractional part [E exponent]
4. Model the states in an Pumpkin order in the HTW system can be in.


## Lab Report / What to turn in

Write up a report describing your experiences sharing files with git and github. If you've created a note page in your repository listing the git commands you used you can refer to that.

The State Machine Diagram part should include reflections on the process of producing the diagrams and.

**List the names of all people on the team together with their github handles** and include the link to your github repository.

You can do your writeup as PDF or markdown file, one for each team is sufficient.

***

State Machine Part based on [Exercise04][3] by [Prof. Dr. Debora Weber-Wulff][4]

[3]: https://people.f4.htw-berlin.de/~weberwu/se/Labs/Ex4.shtml
[4]: https://www.f4.htw-berlin.de/~weberwu/
