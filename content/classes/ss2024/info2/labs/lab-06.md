---
title: 'Lab 06: Execution times'
author: kleinen
layout: lab
draft: false
weight: 60
params:
  math: true
---

## Learning Goals


After this lab you should be able to agree with each of the following statements.

I can evaluate the efficiency of algorithms:
* I understand the correlation between input and running time for different program structures
* I can use big-o-notation to describe the running time of algorithms
* I can calculate the running time of algorithms by adding up running times of different structures
* I can compare running times based on their running time in big-o-notation

## Pre-Lab

***P1.*** Programs A and B are analyzed and are found to have worst-case running times no greater than $150 N \log N$ and  $N^2$, respectively. Answer the following questions, if possible:

a) Which program has the better guarantee on the running time for large values of $N (N > 10 000)$?

b) Which program has the better guarantee on the running time for small values of $N (N < 100)$?

c) Which program will run faster on average for $N = 1000$?

d) Is it possible that program B will run faster than program A on all possible inputs?

***P2.*** An algorithm takes 0.5 ms for input size 100. How long will it take for input size 500 if the running time is the following:

a) linear

b) $O(N \log N)$

c) quadratic

d) 4. cubic

***P3.*** An algorithm takes 0.5 ms for input size 100. How large a problem can be solved in 1 min if the running time is the following:

a) linear

b) $O(N \log N)$

c) quadratic

d) cubic

***P4.*** Order the following functions by growth rate, and indicate which, if any, grow at the same rate.:
- $N$
- $\sqrt{N}$
- $N^{1.5}$
- $N^2$
- $N \log N$
- $N \log \log N$
- $N \log^2 N$
- $N \log (N^2)$
- $\frac{2}{N}$
- $2N$
- $\frac{2N}{2}$
- $37$
- $N^3$
- $N^2 \log N$


## Assignment

### Part 1: Analysis of Algorithms
For each of the following seven program fragments, do the following:

1. Do a Big-Oh analysis of the running time.
2. Implement the code in a simple main class and run it for several interesting values of N.

#### Code Fragments
```java
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
    
    // Fragment #8
    int i = n;
    while (i > 1) {
        i = i / 2;
        sum++;
    }
```
### Part 2: Prime Numbers
A  *prime number* has no factors besides 1 and itself. Do the following:

1. Write a simple method `public static bool isPrime (int n) {...}` to determine if a positive integer N is prime.
2. In terms of N, what is the worst-case running time of your program?
3. Let B equal the number of bits in the binary representation of N. What is relationship between B and N?
4. In terms of B, what is the worst-case running time of your program?

5. Compare the running times needed to determine if a 20-bit number and a 40-bit number are prime by running 100 examples of each through your program.

### For the bored:

The Sieve of Eratosthenes is a method used to compute all primes less than N. Begin by making a table of integers 2 to N.
Find the smallest integer i that is not crossed out - i is prime! (you might want to print it here to see the progress, but really you shouln't mix output within the algorithm) - and cross out all multiples of i (i , 2i , 3i , ....)
Terminate when i is greater than the square root of N. The running time has been shown to be O (N log log N). Write a program to implement the Sieve and verify that the running time is as claimed. If you are *really* bored, animate this with a GUI like on the Wikipedia!

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

Also answer the following questions in your report.

Additional questions for part 1:
- Which are interesting values for N?
- Compare your analysis with the actual number of steps (i.e. the value of sum after the loop).

