---
title: 'Info2: Exercise 05: Execution times'
author: kleinen
layout: lab
---

## Pre-Lab

Please have these completed before coming to the lab. BTW, I like questions like this on the exam...

1. Programs A and B are analyzed and are found to have worst-case running times no greater than 150 N log N and N<sup>2</sup> , respectively. Answer the following questions, if possible:

  1. Which program has the better guarantee on the running time for large values of N (N > 10 000)?
  2. Which program has the better guarantee on the running time for small values of N (N < 100)?
  3. Which program will run faster on average for N = 1000?
  4.  Is it possible that program B will run faster than program A on all possible inputs?

2. An algorithm takes 0.5 ms for input size 100. How long will it take for input size 500 if the running time is the following:

  1. linear
  2. O (N log N)
  3. quadratic
  4. cubic

3. An algorithm takes 0.5 ms for input size 100. How large a problem can be solved in 1 min if the running time is the following:

  1. linear
  2. O (N log N)
  3. quadratic
  4. cubic

4. Order the following functions by growth rate, and indicate which, if any, grow at the same rate.:
N, square root of N, N<sup>1.5</sup>, N<sup>2</sup> , N log N, N log log N, N log2 N, N log (N<sup>2</sup>), 2/N, 2N, 2N/2, 37,N<sup>3</sup>, N<sup>2</sup> log N



## Lab exercise:

These are the required exercises for this week. Work in groups of two, and turn in just one report for the group.

### Part 1: Analysis of Algorithms
For each of the following seven program fragments, do the following:

1. Give a Big-Oh analysis of the running time (you can even do this before you come to lab!)
2. Implement the code in a simple main class and run it for several interesting values of N. What are interesting values?
3. Compare your analysis with the actual number of steps (i.e. the value of sum after the loop) for your report.

#### Code Fragments

     // Fragment #1
     for ( int i = 0; i < n; i ++)
         sum++;

     // Fragment #2
     for ( int i = 0; i < n; i ++)
         for ( int j = 0; j < n; j ++)
             sum++;

     // Fragment #3
     for ( int i = 0; i < n; i ++)
         for ( int j = i; j < n; j ++)
             sum++;

     // Fragment #4
     for ( int i = 0; i < n; i ++)
         sum ++;
         for ( int j = 0; j < n; j ++)
             sum ++;

     // Fragment #5
     for ( int i = 0; i < n; i ++)
         for ( int j = 0; j < n*n; j ++)
         sum++;

     // Fragment #6
     for ( int i = 0; i < n; i ++)
         for ( int j = 0; j < i; j ++)
             sum++;

     // Fragment #7
     for ( int i = 1; i < n; i ++)
         for ( int j = 0; j < n*n; j ++)
             if (j % i == 0)
                for (int k = 0; k < j; k++)
                    sum++;

### Part 2: Prime Numbers

A  ***prime number*** has no factors besides 1 and itself. Do the following:

1. Write a simple method `public static bool isPrime (int n) {...}` to determine if a positive integer N is prime.
2. In terms of N, what is the worst-case running time of your program?
3. Let B equal the number of bits in the binary representation of N. What is relationship between B and N?
4. In terms of B, what is the worst-case running time of your program?
5. Compare the running times needed to determine if a 20-bit number and a 40-bit number are prime by running 100 examples of each through your program. Report on the results in your lab report. You can use Excel to make some diagrams if you wish.

### For the bored:

The Sieve of Eratosthenes is a method used to compute all primes less than N. Begin by making a table of integers 2 to N.
Find the smallest integer i that is not crossed out. Print i (it is prime!) and cross out i , 2i , 3i , ....
Terminate when i is greater than the square root of N. The running time has been shown to be O (N log log N). Write a program to implement the Sieve and verify that the running time is as claimed. If you are ***really*** bored, animate this with a GUI like on the Wikipedia!

## Lab Report / What to turn in

Your report is due by 10.00 am on Monday after the lab (for Groups 1&2.)

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise. How many lines of code did you write for each exercise? Record this in your report.
Both of you need to upload the same report in PDF format to Moodle before the deadline.


