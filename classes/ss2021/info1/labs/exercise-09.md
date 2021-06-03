---
title: 'Exercise 09: Technical Support'
author: kleinen
layout: lab
---
<span class = "attention">Not yet reviewed and published for SoSe 2021 Term!</span>
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
* zip-folder with your (documented) TechSupport code
* lab report as pdf

Lab assignments are due on thursday at 10pm.

* * *

# Assignment - Technical Support
0. Open the book chapter 6.2 for a refresher - this exercise is based on it. [Open the basic TechSupport project](https://github.com/htw-imi-info1/exercise07). Expand it to give random responses as is done in the book.
1. Now use the method `split` from `String` and a `HashMap` to give appropriate answers for keywords found in the questions/input. Make up lots of cool responses.
2. How can you deal with punctuation marks? What if there is more than one space between words? Can your tech support system deal with this?
3. Document your code with javadoc!

4. (For the bored) There are often synonyms that should provoke the same response. Can you figure out how to store only one response even if there are a number of different words that trigger this response?
5. (For the really bored) Make your answers multilingual. At first you can just set the language at any point, but then you want to read the locale form the local machine to determine how to answer.
