---
title: 'Info2: Exercise 11: Scrabble Cheater - Basic Edition '
author: kleinen
layout: lab
---

 ![Scrabble](./../images/scrabble_4468636695_2434bc60ff_b.jpg "scrabble tile rack")
Foto by [Mags_cat](https://www.flickr.com/photos/mk1971/4468636695)

{% comment %}
- Permutation#equals method should check on equal words, not on equality based on permutation.

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
{% endcomment %}

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
2. Implement the getNormalized() and equals() methods in [Permutation](https://github.com/htw-imi-info2/ScrabbleCheater/blob/master/src/scrabble/util/Permutation.java). Two Permutations should be equal if one is a permutation of the other - regardless of the actual words they represent. Having a look at the provided test cases and making them run might help with the implementation.
3. To make the tests for Permutation work, also implement the methods that create Permutations in [PermutationUtilities](https://github.com/htw-imi-info2/ScrabbleCheater/blob/master/src/scrabble/util/PermutationUtilities.java)
4. now implement the validWordsUsingAllTiles() method in SimpleWordList that returns a Set of
all the Words that are permutations of a given tile rack. That is, all words of the
same length of the tile rack that can be build with it and that are in the word list,
thus valid scrabble words.
5. How can you use the Permutation class to make looking up the validWordsUsingAllTiles() more efficient? (Hint: how often will normalize() be called a) for initialisation and
b) for a lookup in your WordList?)
6. Now, provide a second implementation of WordList using a HashMap as the underlying collection for storing the words. Note that you need to make sure that equals() and hashCode() work correctly on permutations in order to store Permutations at the same place in the HashMap.
{% comment %}
1. In preparation of the final ScrabbleCheater, which will also find shorter words that can be built with the tile rack, implement the method "subsets" in PermutationUtilities which should determine all of the Strings that are substrings in the sense that they only contain letters from the given String, with multiples only up to the number of multiples available. The order of the letters is irrelevant, so this is a bag. For example with 4 letters "JAVA" this would be {"AAJV", "AJV", "AAJ", "AAV", "AA", "AJ", "AV", "JV"}.
{% endcomment %}
3. you might want to add a main method or some sort of interface to input words that should be looked up by your scrabble cheater. (e.g. taking a parameter or reading in tile racks from standard in)
4. (for the bored) measure the time improvement introduced by the HashMap implementation.
5. (for the very bored) implement an own hashmap and hash function for storing the Permutations.


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
