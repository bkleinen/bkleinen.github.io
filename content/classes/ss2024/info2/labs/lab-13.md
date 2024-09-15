---
title: 'Lab 13: Scrabble Cheater - Deluxe'
author: kleinen
layout: lab
draft: true
---

## Pre-Lab

 ![Scrabble](../../images/scrabble_331161309_a8e6c6c3fd_o.jpg "scrabble 1")
Foto by [Piotr](https://www.flickr.com/photos/derbeth/331161309/)

1. What would the exact data structure be for a hash map that stores  Strings and chains the collisions?
1. Review the construction of a hash function. Note that you will need prime numbers. Does your isPrime method work? If not, fix it now.

## Assignment

This week we will improve the Scrabble Cheater by finding matches for shorter
Words that can be build with your tile rack (method allValidWords()).

Also, you will add an *own* Hash Map implementation trying to optimize the hash function
and maybe be able to make the lookup even more efficient.

1. Get out your solution to Exercise 12 (The basic edition of the scrabble cheater) - or borrow a working one from someone. Remember to give them credit.
1. create a new implementation of the WordList interface - maybe call it OwnHashWordList - that creates a hash map for storing the words. Use chaining of collisions. How many entries does your map have? How many collisions were there? What is the longest chain in your hash map? Some statistical methods might be nice. Can you fix your hash function to have chains of 16 or less?
1.   Implement the validWordsUsingAllTiles() method in your OwnHashWordList.
1. Implement allValidWords() in both your SimpleWordList as well as the OwnHashWordList:
based on the tile rack with 7 letters, split them into collections of 7-, then 6-, then 5-, ... words contained in the input bag of letters using the subset function you implemented last week. Look up each word in each collection and add it to the result.
1. (for the bored) run some performance tests to see if and how much better the Hash-Implementation works.
1.   (For the bored) Generate your random selection on the Scrabble distribution for English.
1.   (For the bored) Can you make a perfect hash? Describe how you went about finding a perfect hash for an extra star.
1.   (For the really bored) Check out https://www.morewords.com and see that you can use wild cards such as "-" for matching any one character and "\*" for matching any string. Can you replicate this behavior (even if it is much slower than morewords)?

Now look back to the shapes exercise last semester - You have come a long way in Java! And you have survived!

## Lab Report / What to turn in

All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.
