---
title: 'Info2: Exercise 13: Scrabble Cheater - Deluxe'
author: kleinen
layout: lab
---
## Pre-Lab

 ![Scrabble](../../images/scrabble_331161309_a8e6c6c3fd_o.jpg "scrabble 1")
Foto by [Piotr](https://www.flickr.com/photos/derbeth/331161309/)


1. What would the exact data structure be for a hash table that stores  Strings and chains the collisions?
1. Review the construction of a hash function. Note that you will need prime numbers. Does your isPrime method work? If not, fix it now.

## Assignment

This week we will improve the Scrabble Cheater by storing the Words in a Hash Map,
making the lookup of permutations way more efficient.

1. Get out your solution to Exercise 12 (The basic edition of the scrabble cheater) - or borrow a working one from someone. Remember to give them credit.
1. create a new implementation of the WordList interface - maybe call it HashWordList - that creates a hash table for storing the words. Use chaining of collisions. How many entries does your table have? How many collisions were there? What is the longest chain in your hash table? Some statistical methods might be nice. Can you fix your hash function to have chains of 16 or less?
1.   Implement the permutations() method in your HashWordList.
1. Implement words() in both your SimpleWordList as well as the HashWordList:
based on the tile rack with 7 letters, split them into collections of 7-, then 6-, then 5-, ... words contained in the input bag of letters using the subset function you implemented last week. Look up each word in each collection add it to the result.
1. (for the bored) run some performance tests to see if and how much better the Hash-Implementation works.
1.   (For the bored) Generate your random selection on the Scrabble distribution for English.
1.   (For the bored) Can you make a perfect hash? Describe how you went about finding a perfect hash for an extra star.
1.   (For the really bored) Check out https://www.morewords.com and see that you can use wild cards such as "-" for matching any one character and "\*" for matching any string. Can you replicate this behavior (even if it is much slower than morewords)?

Now look back to the shapes exercise last semester - You have come a long way in Java! And you have survived!
## Lab Report / What to turn in


Your report is due the day before your next lab (for exact times, please refer to moodle).

Submit a Report in PDF Format and the Source Code as Zipped file.

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.
Both of you need to upload the same report in PDF and zipped source format to Moodle before the
deadline.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.
