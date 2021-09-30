---
title: 'Info2: Exercise 08: Eight Queens'
author: kleinen
layout: lab
---
## Pre-Lab
1. This is one of the standard exercises that all computer science students have to solve at least once in their lifetimes! If you have never played chess, find someone who does or find a book and look up how a Queen moves and threatens in chess. Find out what a chess board looks like.
2. Define a matrix (two-dimensional array) of integers in Java. Write a method to put a -1 in every cell of the matrix.
3. Given two cells in a matrix, (r1, c1) and (r2, c2). How can you determine if
      1. the cells are in the same row?
      2. the cells are in the same column?
      3. the cells are in the same ascending diagonal?
      4. the cells are in the same descending diagonal?
4. Implement the recursive solution to the Towers of Hanoi so that you can review how recursion works using the debugger.

## Assignment
9. Our goal is to write a program to determine if eight queens can be placed on an 8 x 8 chess board without them threatening each other! Start by deciding how to represent a chess board with a data structure. Don't worry about the colors of the board yet. Write a Chessboard class! What methods  will you need?
9. Write a method for determining if the current board  state contains a queen that is threatening another one. What is the complexity of your method in terms  of N, the number of rows on the board? If your algorithm is worse than linear, you might want to look for something better.
9. We speak of "backtracking" when we go back to a previous state and try a different branch. Use some coins on a paper chess board to figure out what to do when you reach a state in which one queen is threatened by another. There are iterative, recursive, and random solutions to this problem. Try and implement a recursive solution!
9. Now implement a search routine that looks for a state in which the queens don't threaten each other. If there is a solution, print it to System.out. If there is more than one solution, print them as well.  What is the complexity of your algorithm? Does your program work for 10 queens on a 10 x 10 board? 13 on a 13 x 13 board?
9. (For the bored) Design a Chessboard GUI with a queen figure. Output the result of the program using your Chessboard GUI.
9. (For the really bored) Animate the search by showing the positions as they are tested, illuminating the threats. How long does it take to show such an attempt? How long will the program need for the exhaustive search?
9. (If you are already finished with all of this and have time on your hands) How many knights can be put on an 8 x 8 board without threatening each other?
9. (For the mathematically curious) For which N is it possible to put N queens on an N x N board? Example: 2 queens cannot be placed on a 2 x 2 board, 3 cannot be placed on a 3 x 3 board. But 4 queens can be placed on a 4 x 4 board, for example at B1, D2, A3, C4. Can you prove this?


## Lab Report / What to turn in


Your report is due the day before your next lab (for exact times, please refer to moodle).

Submit a Report in PDF Format and the Source Code as Zipped file.

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.
Both of you need to upload the same report in PDF format to Moodle before the
deadline.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.

----

based on [Exercise 13](https://people.f4.htw-berlin.de/~weberwu/info2/labs/ExerD.shtml) by DWW
