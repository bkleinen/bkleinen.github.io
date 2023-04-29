---
title: 'Info2: Exercise 12: Scrabble Cheater - Basic Edition '
author: kleinen
layout: lab
---

 ![Scrabble](./../images/scrabble_4468636695_2434bc60ff_b.jpg "scrabble tile rack")
Foto by [Mags_cat](https://www.flickr.com/photos/mk1971/4468636695)



## Pre-Lab

1. Review the rules of [Scrabble](https://en.wikipedia.org/wiki/Scrabble), if you have never played it before.
1. What was a permutation?
1. What would a normalization function for different permutations of characters words look like? That is, "JAVA" and "VAJA" are permutations, what would a normalized permutation look like?
1. How do you determine if two strings are permutations of each other?
2. How can you generate all permutations of the characters in a String? What if some of the letters are the same. Hint: Look at the binomial coefficient.
1. how many different 2,3,4,5 and 6-letter subsets are there for each 7-letters?
1. Can you find lists of valid words for Scrabble in English online? Are there perhaps any sorted by number of letters in the word? Or maybe one file for each word size? Note down the URLs!

## Assignment

This week you will implement a simple scrabble cheater that will read in words from a scrabble word list, and find all permutations for a 7 letter tile rack.
Next week you will extend this cheater by also searching for subsets (that is, shorter words) as well as optimizing the underlying data structure for performance.

There is a lot to do, so you might want to split up the work in your group.
I've prepared a scaffold for the interfaces along with some testcases. You
can find them on github [https://github.com/htw-imi-info2/ScrabbleCheater](https://github.com/htw-imi-info2/ScrabbleCheater)

1. Implement initFromFile in [SimpleWordList](https://github.com/htw-imi-info2/ScrabbleCheater/blob/master/src/scrabble/data/SimpleWordList.java) that
initializes the ScrabbleCheater from a given file. For now, simply store the
words in a suitable Collection of the Java Collections Framework.
2. Implement the getNormalized() and equals() methods in [Permutation](https://github.com/htw-imi-info2/ScrabbleCheater/blob/master/src/scrabble/util/Permutation.java). Two Permutation instances should be equal if one is a permutation of the other - regardless of the actual words they represent. Having a look at the provided test cases and making them run might help with the implementation.
<s>3. To make the tests for Permutation work, also implement the methods that create Permutations in [PermutationUtilities](https://github.com/htw-imi-info2/ScrabbleCheater/blob/version01/src/scrabble/util/PermutationUtilities.java)</s>
4. now implement the validWordsUsingAllTiles() method in SimpleWordList that returns a Set of
all the Words that are permutations of a given tile rack. That is, all words of the
same length of the tile rack that can be build with it and that are in the word list,
thus valid scrabble words.
5. How can you use the Permutation class to make looking up the validWordsUsingAllTiles() more efficient? (Hint: how often will normalize() be called a) for initialisation and
b) for a lookup in your WordList?)
6. Now, provide a second implementation of WordList using a HashMap as the underlying collection for storing the words. Note that you need to make sure that equals() and hashCode() work correctly on permutations in order to store Permutations at the same place in the HashMap.
3. you might want to add a main method or some sort of interface to input words that should be looked up by your scrabble cheater. (e.g. taking a parameter or reading in tile racks from standard in)
4. (for the bored) measure the time improvement introduced by the HashMap implementation.


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
