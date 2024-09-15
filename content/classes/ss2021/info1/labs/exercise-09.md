---
title: 'Exercise 09: Technical Support'
author: kleinen
layout: lab
---

This week's lab work is intended give you practice using the Random class and HashMaps.

* * *

# Pre-Lab

**P0** Try out http://med-ai.com/models/eliza.html. Experiment a little. Can you trick the bot? How might this program work?

* * *

# What To Hand In
Please hand in:
* zip-folder with your (documented) TechSupport code
* lab report as pdf

Lab assignments are due on thursday at 10pm.

* * *

# Assignment - Technical Support
0. Open the book chapter 6.2 for a refresher - this exercise is based on it. [Open the basic TechSupport project](https://github.com/htw-imi-info1/exercise07-archived). Expand it to give random responses as is done in the book.
1. Now use the method `split` from `String` and a `HashMap` to give appropriate answers for keywords found in the questions/input. Make up lots of cool responses.
2. How can you deal with punctuation marks? What if there is more than one space between words? Can your tech support system deal with this?
3. Document your code with javadoc!

4. (For the bored) There are often synonyms that should provoke the same response. Can you figure out how to store only one response even if there are a number of different words that trigger this response?
5. (For the really bored) Make your answers multilingual. At first you can just set the language at any point, but then you want to read the locale form the local machine to determine how to answer.
