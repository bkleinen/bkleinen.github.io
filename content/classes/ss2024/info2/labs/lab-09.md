---
title: 'Lab 09: Eight Queens'
author: kleinen
layout: lab
draft: false
weight: 90
---

## Pre-Lab
***P1.*** Make a chess board and mark how a Queen moves and threatens.

***P2.*** Define a matrix (two-dimensional array) of integers in Java. Write a method to put a *-1* in every cell of the matrix.

***P3.*** Given two cells in a matrix, (r1, c1) and (r2, c2). How can you determine if
      a) the cells are in the same row?
      b) the cells are in the same column?
      c) the cells are in the same ascending diagonal (lower left to upper right)?
      d) the cells are in the same descending diagonal (upper left to lower right)?

***P4.*** Implement or [review](https://github.com/htw-imi-info2/su09-recursion) the recursive solution to the *Towers of Hanoi* so that you can review how recursion works using the debugger.

## Assignment
Our goal is to write a program to determine if 8 queens can be placed on an 8 x 8 chess board without them threatening each other!

1. Decide how to represent a chess board with a data structure. Don't worry about the colors of the board yet. Write a Chessboard class. What methods will you need?

2. Write a method for determining if the current board state contains a queen that is threatening another one. If the complexity in terms of N (rows on the board) of your algorithm is worse than linear, try to improve your algorithm.

3. We speak of "backtracking" when we go back to a previous state and try a different branch. Use some coins on your paper chess board to figure out what to do when you reach a state in which one queen is threatened by another. There are iterative, recursive, and random solutions to this problem. Try and implement a recursive solution.

4. Now implement a search routine that looks for a state in which the queens don't threaten each other. If there is a solution, print it to System.out. If there is more than one solution, print them as well.

## For the bored
5. Design a Chessboard GUI with a queen figure. Output the result of the program using your Chessboard GUI.

6. Animate the search by showing the positions as they are tested, illuminating the threats. How long does it take to show such an attempt? How long will the program need for the exhaustive search?

7. How many knights can be put on an 8 x 8 board without threatening each other?

8. For which N is it possible to put N queens on an N x N board? Example: 2 queens cannot be placed on a 2 x 2 board, 3 cannot be placed on a 3 x 3 board. But 4 queens can be placed on a 4 x 4 board, for example at B1, D2, A3, C4. Can you prove this?

## Lab Report / What to turn in

All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

Also answer the following questions in your report:

* Ex. 2: What is the complexity of your final method in terms of N (the number of rows on the board)? Did you need to improve your algorithm?

* Ex. 4: Does your program work for 10 queens on a 10 x 10 board? 13 on a 13 x 13 board?

----
