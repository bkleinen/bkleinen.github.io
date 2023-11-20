---
title: 'Exercise 07: Lotto and Technical Support'
author: kleinen
layout: lab
---
<span class = "attention">Not yet reviewed and published for WS 2019/20 Term!</span>
<figure class = "figure">
   <img class="figure-img img-fluid" src="../../images/lotto.jpg"  alt="Lotto">
  <figcaption class="figure-caption text-right">German Lotto Slip, <a href="https://www.flickr.com/photos/rene-germany/98668296">Foto by ReneS</a></figcaption>
</figure>

This week's lab work is intended give you practice using the Random class and HashMaps.

* * *

# Pre-Lab

Please bring these exercises and their solutions printed out or written out with you to the lab.

**P0** How do you generate random numbers between 1 and 10 with Java? In what package is the library?

**P1** How do you define an array that can count how often the numbers between 1 and 10 are generated? We call this a frequency table.

**P2** Where can you find information about the lotto numbers that have been picked in Germany on the Internet?

**P3** Where can you find information about javadoc on the Internet?

* * *

# What To Hand In
Please hand in:
* zip-folder with your Lotto and (documented) TechSupport code
* lab report as pdf (max. 5 pages)

The lab report should have: 
* Answers to the questions in the assignment below
* Complete transparency on who did what
* The strategy you chose for working in a team & how it worked out *(OR if you worked alone: ) a reflection on your own working strategy*
* Details on which challenges you encountered, how you tried to solve them & their solution *(OR if you did not encounter any challenges: ) a reflection on the exercises themselves*
* A summary of what you did & learned in the lab
* For practise: A description of how you tested your solutions

Lab assignments are due the day before your next lab at 10pm.

* * *

# Assignment

## Lotto

0. Create a class that will be doing some testing of random numbers. Create a method that picks six numbers between 1 and 49 - the lotto numbers for next saturday. Note that no two numbers may be the same! Which collection type will you need to use?
1. Expand the method to count how often each number is picked. Use an array like in P1.
2. Now pick the 6 lotto numbers 1000 times (write a method to do this for you). Print out the frequencies from your array.
3. Repeat 10,000 times. And 100,000 times. And 1,000,000 times. Put your results in a nice table and attach it to your report (the table doesn't count as pages for the report).

## Technical Support
0. [Open the basic TechSupport project](https://github.com/htw-imi-info1/exercise07-archived). Expand it to give random responses as we did in class.
1. Now use the method `split` from `String` and a `HashMap` to give appropriate answers for keywords found in the questions/input. Make up lots of cool responses.
2. How can you deal with punctuation marks? What if there is more than one space between words? Can your tech support system deal with this?
3. Document your code with javadoc!

4. (For the bored) There are often synonyms that should provoke the same response. Can you figure out how to store only one response even if there are a number of different words that trigger this response?
5. (For the really bored) Make your answers multilingual. At first you can just set the language at any point, but then you want to read the locale form the local machine to determine how to answer.
