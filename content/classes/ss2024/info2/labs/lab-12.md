---
title: 'Lab 12: Scrabble Cheater - Basic Edition '
author: kleinen
layout: lab
draft: draft # with improvements for next round
weight: 120
---

 ![Scrabble](./../images/scrabble_4468636695_2434bc60ff_b.jpg "scrabble tile rack")
Foto by [Mags_cat](https://www.flickr.com/photos/mk1971/4468636695)

TBD!!!!
- Permutation#equals method should check on equal words, not on equality based on permutation.

<!--

debbies version:
Review the rules of Scrabble, if you have never played it before.
What would the exact data structure be for a hash table that stores Strings and chains the collisions?
What would a normalization function for words look like for a hash? That is, "JAVA" and "VAJA" are permutations, what would a normalized permutation look like?
How do you determine if two strings are permutations of each other?
Review the construction of a hash function. Note that you will need prime numbers. Does your isPrime method work? If not, fix it now.
Can you find lists of valid words for Scrabble in English online? Are there perhaps any sorted by number of letters in the word? Or maybe one file for each word size? Note down the URLs!
In class:
Write a dictionary class that upon instantiation reads in a file of words and creates a hash table for storing them. Use chaining of collisions in your hash table. How many entries does your table have? How many collisions were there? What is the longest chain in your hash table? It might be useful to implement some statistical methods in order to see if your hash table is "okay". Can you fix your hash function in order to only have chains of 16 or less?
(For the bored) Can you make a perfect hash? Describe how you went about finding a perfect hash!
You will need to have a lookup method in your class that takes a word (i.e. a String) and returns an array of Strings corresponding to all the words at the hash location, if any. You may need to normalize the word to look up, depending on your hash function.
Now make the basic Scrabble cheater: construct a 7-letter-word hash dictionary, set a String to 7 letters, and output the array of Strings found that might be permutations of these 7 letters. Your users can check if there is a permutation to be found. Or you can implement isPermutation and only output the ones that are permutations.
-->

## Pre-Lab

***P1.*** Review the rules of [Scrabble](https://en.wikipedia.org/wiki/Scrabble), if you have never played it before.

***P2.*** What is a permutation?

***P3.*** What would a normalization function for different permutations of words look like? That is, "JAVA" and "VAJA" are permutations, what would a normalized permutation look like?

***P4.*** How do you determine if two Strings are permutations of each other?

***P5.*** For the bored: How can you generate all permutations of the characters in a String? See [Back to Back SWE "How To Permute A String - Generate All Permutations Of A String"](https://www.youtube.com/watch?v=GCm7m5671Ps) for a clear explanation of a backtracking solution. See [Sedgewick 1977](https://dl.acm.org/doi/10.1145/356689.356692) (available with VPN) for theoretical details on several different solutions. What if some of the letters are the same?  Hint: Look at the [multinomial coefficient](https://de.wikipedia.org/wiki/Multinomialkoeffizient).

## Assignment

You will implement a simple scrabble cheater that will read in words from a scrabble word list, and find all permutations for a 7-letter tile rack.

There is a lot to do, so you might want to split up the work in your group.

0. Use the prepared scaffold for the interfaces. It also contains some testcases. You can find it on GitHub [https://github.com/htw-imi-info2/ScrabbleCheater](https://github.com/htw-imi-info2/ScrabbleCheater).

1. Implement *initFromFile* in *[SimpleWordList](https://github.com/htw-imi-info2/ScrabbleCheater/blob/master/src/scrabble/data/SimpleWordList.java)* that
initializes the ScrabbleCheater from a given file. For now, simply store the words in a suitable Collection of the Java Collections Framework.

2. Implement the *getNormalized* and *equals* methods in *[Permutation](https://github.com/htw-imi-info2/ScrabbleCheater/blob/master/src/scrabble/util/Permutation.java)*. Two Permutation instances should be equal if one is a permutation of the other - regardless of the actual words they represent. Having a look at the provided test cases and making them run might help with the implementation.

3. Implement the *validWordsUsingAllTiles* method in *SimpleWordList* that returns a Set of all the Words that are permutations of a given tile rack. That is, all words of the same length of the tile rack that can be build with it and that are in the word list, thus valid scrabble words.

5. Use the Permutation class to make looking up the *validWordsUsingAllTiles()* more efficient.
Hint: how often will *normalize()* be called a) for initialisation and b) for a lookup in your WordList?

6. Provide a second implementation of *WordList* using a HashMap as the underlying collection for storing the words. Note that you need to make sure that *equals()* and *hashCode()* work correctly on permutations in order to store Permutations at the same place in the HashMap.

7. Add a main method or some sort of interface to input words that should be looked up by your scrabble cheater (e.g. taking a parameter or reading in tile racks from standard in).

8. *For the bored*: Measure the time improvement introduced by the HashMap implementation. The measured time might be small, so chose an adequate unit or use a loop to execute the code often.

## Lab Report
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

<!--
now part of lab 13:
1. In preparation of the final ScrabbleCheater, which will also find shorter words that can be built with the tile rack, implement the method "subsets" in PermutationUtilities which should determine all of the Strings that are substrings in the sense that they only contain letters from the given String, with multiples only up to the number of multiples available. The order of the letters is irrelevant, so this is a bag. For example with 4 letters "JAVA" this would be {"AAJV", "AJV", "AAJ", "AAV", "AA", "AJ", "AV", "JV"}.
-->
