---
title: 'Exercise 01 - Lab Startup and JavaScript Finger Exercises'
author: kleinen
layout: page
---
![Workplace](../images/workplace.jpg "pumpkins")
<small class = "float-right">Nerd Workplace. Foto by [slworking2](https://www.flickr.com/photos/slworking/8539204081/)</small>

## PreLab
The labs will be taught remote. You can either work on the [lab computers from remote](https://imi-bachelor.htw-berlin.de/studium/labore/hinweise/entfernter-zugriff-auf-labor-pcs-ueber-vpn-und-remote-desktop/) (make sure to chose the lab that is given on your schedule) or just work on your own computer. If you decide to work on your own computer:
* I recommend installing Firefox. Eventually you might also need Chrome. 
* Install and set up git (You will use  to hand in code - you will be added to the Info3 group when you get added on Moodle). You don't need a Git GUI, you can use it via the command line or git bash.
* Install and set up a code editor suitable for JavaScript. I recommend [Atom](https://atom.io). 

In any case:
* Find a team of three and sign up for it using Moodle.
* Make sure you can sign in to [the IMI GitLab](https://gl-imi.f4.htw-berlin.de)
* Review what you have learned about **JavaScript** so far. [This tutorial](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/JavaScript_basics) can help. Careful, the German version  of the tutorial is out of date! Use the English version! 
* Review what you know about **Git** so far. You can use [a cheatsheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet).

## Assignment: JavaScript Practise
In this assignment you will program a "Hobby Matcher". "Hobby Matcher" should people help find other people with the same hobbies. Prof. Kleinen already thought of two [user stories](https://en.wikipedia.org/wiki/User_story). 

**Story 1:** As a user of the service I want to be able to enter my hobbies as a comma-separated list (eg. "Go, Geocaching, Stunt Kites, Bicycles").

**Story 2:** As a user of the service I want to see a list with people with whom I share hobbies including the hobbies we share, ordered by the number of shared hobbies (descending).

1. In this lab you will employ [test-driven development](https://en.wikipedia.org/wiki/Test-driven_development). Look at the tests at [github](https://github.com/htw-imi-info3/lab-01-js-exercise). They describe what the code is supposed to do - they correspond to the user stories mentioned above.

<!-- sth like * Get to know the web development tools of Firefox (open them with Right Click > "Inspect Element"). We are especially interested in the tabs "Console" and "Debugger". "Console" is where JavaScript will print to and using the "Debugger" you can debug your JavaScript. -->

2. For each test, implement JS code in the class "Person" that will make the test run through. Remember: Making the test pass the simplest way possible is not enough here - you should implement it in a generic way using reflection on the method names. You can start by making the "Person" class be able to hold a name and an array of hobbies.

# What to hand in

* Your code as described on the lab page.
