---
title: 'Exercise 06: Lotto and Technical Support'
author: kleinen
source: https://github.com/htw-imi-info1/exercise06-technical-support
draft: false
---

<figure class = "figure">
   <img class="figure-img img-fluid" src="../../images/lotto.jpg"  alt="Lotto">
  <figcaption class="figure-caption text-right">German Lotto Slip, <a href="https://www.flickr.com/photos/rene-germany/98668296">Foto by ReneS</a></figcaption>
</figure>

This week's lab work is intended give you practice using more classes from the Java API: the Random class, Sets and Maps.

* * *

# Pre-Lab

Prepare your prelab before coming to class! Doing the pre-lab will save you time during the lab.

**P1**. How do you generate random numbers between 1 and 10 with Java? In what package is the library?

**P2.** How do you define an array that can count how often the numbers between 1 and 10 are generated? We call this a frequency table.

**P3.** Where can you find information about the lotto numbers that have been picked in Germany on the Internet?

**P4.** Where can you find information about javadoc on the Internet?

**P5** Try out http://med-ai.com/models/eliza.html. Experiment a little. Can you trick the bot? How might this program work?

* * *

# Post-Lab, AKA  What To Turn In

* pdf: the lab report, including a table with your frequencies for the Lotto numbers picked. For more Information on the report see [the Labs and Exercises page](../).
* zip: the final version of your Lotto code, properly and thoroughly documented with javadoc.

Lab assignments are due at 22:00 before your next lab.

* * *

# Assignment

Code for both Assignments: {{< source >}}

## Lotto

1. Create a class that will be doing some testing of random numbers. Make a method that picks the six numbers for next Saturday between 1 and 49. Note that no two numbers may be the same! How do you avoid this?
2. Expand the method to count how often each number is picked.
3. Now pick the 6 lotto numbers 1000 times. Print out the frequencies.
4. Repeat for 10,000 times. And 100,000 times. And 1,000,000 times. Put your results in a nice table and include it in your report.

## Technical Support

0. Open the book chapter 6.2 for a refresher - this exercise is based on it. Open the basic TechSupport project. Expand it to give random responses as is done in the book.
1. Now use the method `split` from `String` and a `HashMap` to give appropriate answers for keywords found in the questions/input. Make up lots of cool responses.
2. How can you deal with punctuation marks? What if there is more than one space between words? Can your tech support system deal with this?
3. Document your code with javadoc!

4. (For the bored) There are often synonyms that should provoke the same response. Can you figure out how to store only one response even if there are a number of different words that trigger this response?
5. (For the really bored) Make your answers multilingual. At first you can just set the language at any point, but then you want to read the locale form the local machine to determine how to answer.
