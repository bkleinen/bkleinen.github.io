---
title: 'Exercise 07: Lotto and Technical Support'
author: kleinen
layout: lab
---

![Lotto](../../images/lotto.jpg)
<small class = "float-right">German Lotto Slip, [Foto by ReneS](https://www.flickr.com/photos/rene-germany/98668296)</small>

This week's lab work is intended give you practice using the Random class and HashMaps.

#### What to Bring to Lab

Please bring these exercises printed out or written out with you to lab. Please have your name on your page.

**P1**. How do you generate random numbers between 1 and 10 with Java? In what package is the library?

**P2.** How do you define an array that can count how often the numbers between 1 and 10 are generated? We call this a frequency table.

**P3.** Where can you find information about the lotto numbers that have been picked in Germany on the Internet?

**P4.** Where can you find information about javadoc on the Internet?

# Post-Lab, AKA  What To Turn In
Your completed assignment, submitted in Moodle as a pdf,
should include:

- A description of what you did during the lab, including a record of what worked, what problems you encountered, and answers to the questions as asked.
- A table with your frequencies for the Lotto numbers picked.
- A copy of the final version of your TechSupport code, properly and thoroughly documented with javadoc.
- The names and roles of any collaborators in any parts of the exercise.
- A record of how long you needed for this lab and what you learned.

Lab assignments are due the night before your next class at 23.00. They may, of course, be turned in earlier. You hand them in by preparing the report in **PDF**  and the source code as **ZIP** and submitting it to Moodle.

As always, you can and should work on the exercise in small teams of 2-3, definitely not more than 4 people. Prepare the report together, and each of you hands in **the same report** and source code in moodle, stating the name of every member of the team somewhere in the beginning of the report.

* * *

##Assignment

###Lotto

1. Create a class that will be doing some testing of random numbers. Make a method that picks the six numbers for next Saturday between 1 and 49. Note that no two numbers may be the same! How do you avoid this?
2. Expand the method to count how often each number is picked.
3. Now pick the 6 lotto numbers 1000 times. Print out the frequencies.
4. Repeat for 10,000 times. And 100,000 times. And 1,000,000 times. Put your results in a nice table.

###Technical Support
1. [Open the basic TechSupport project](https://github.com/htw-imi-info1/exercise07-archived). Expand it to give random responses as we did in class.
2. Now use the method `split` from `String` and a `HashMap` to give appropriate answers. Make up lots of cool responses.
3. How can you deal with punctuation marks? What if there is more than one space between words? Can your tech support system deal with this?
4. Document your code with javadoc!
5. (For the bored) There are often synonyms that should provoke the same response. Can you figure out how to store only one response even if there are a number of different words that trigger this response?
6. (For the really bored) Make your answers multilingual. At first you can just set the language at any point, but then you want to read the locale form the local machine to determine how to answer.
