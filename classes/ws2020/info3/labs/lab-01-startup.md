---
title: 'Exercise 01 - Lab Startup and JavaScript Finger Exercises'
author: kleinen
layout: page
---
![Workplace](../images/workplace.jpg "pumpkins")
<small class = "float-right">Nerd Workplace. Foto by [slworking2](https://www.flickr.com/photos/slworking/8539204081/)</small>

## PreLab

### 1. Prepare your work environment
The labs will be taught remote. You can either
* work on the [lab computers from remote](https://imi-bachelor.htw-berlin.de/studium/labore/hinweise/entfernter-zugriff-auf-labor-pcs-ueber-vpn-und-remote-desktop/) (make sure to chose the lab that is given on your schedule) 
* or just work on your own computer. 

If you decide to work on your own computer:
* [optonal] **I recomment you work on a Linux or MacOS System**. From my experience, [setting up Dual Boot Windows/Linux](https://www.groovypost.com/howto/dual-boot-windows-10-linux/) is less troublesome than trying to manage Node.js on Windows. All my instructions will be taylored to Linux and will probably work on MacOS. So if you haven't already, now is the time to get Linux :)
* Install and set up git (You will use git to hand in code - you will be added to the Info3 group when you get added on Moodle). You don't need a Git GUI, you can use it via the command line or git bash.
* Install the [Node Version Manager](https://github.com/nvm-sh/nvm/blob/master/README.md#installing-and-updating) (nvm). [This installation guide (for Ubuntu)](https://www.cyberithub.com/install-nvm-for-node-js/) can help. 
* Install Node.js using nvm: `nvm install`. 
* The [Node Package Manager](https://docs.npmjs.com/) (npm) comes with Node.js, so no need to install it separately. We will use npm to manage libraries we use for Node.js
* Install and set up a code editor suitable for JavaScript. I recommend [Atom](https://atom.io). 

### 2. Prepare your mind
* Review what you have learned about **JavaScript** so far. [This tutorial](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/JavaScript_basics) can help. Careful, the German version  of the tutorial is out of date! Use the English version! 
* Review what you know about **Git** so far. You can use [a cheatsheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet).

### 3. Prepare some more...
* Find a team of three and sign up for it using Moodle.
* Make sure you can sign in to [the IMI GitLab](https://gl-imi.f4.htw-berlin.de)

## Assignment
In this assignment you will program a "Hobby Matcher". "Hobby Matcher" should people help find other people with the same hobbies. Prof. Kleinen already thought of two [user stories](https://en.wikipedia.org/wiki/User_story). 

**Story 1:** As a user of the service I want to be able to enter my hobbies as a comma-separated list (eg. "Go, Geocaching, Stunt Kites, Bicycles").

**Story 2:** As a user of the service I want to see a list of people with whom I share hobbies including the hobbies we share, ordered by the number of shared hobbies (descending). ***UPDATE TEST CASE!!***

You'll learn about JavaScript Classes, field variables, getters and setters, methods, JavaScript Unit Testing, Test-driven development and review some git.

### Part 1: Set up the git repository

1. Clone the repository on [github](https://github.com/htw-imi-info3/lab-01-js-exercise). 
2. Rename the repository directory **locally** to "lab01-YOURGROUPID". Update **.git/description** and **package.json**.
3. Create a new repository "lab01-YOURGROUPID" in [this week's lab group](https://gl-imi.f4.htw-berlin.de/info3-wise2020/lab01).
4. Set the remote origin of your local repository to your newly created repository on the IMI GitLab Server: 
`git remote set origin https://gl-imi.f4.htw-berlin.de/info3-wise2020/lab01/lab01-YOURGROUPID.git`
5. Push your repository: 
```
git add .
git commit -m "initialize project"
git push
```

### Part 2: Practise JavaScript

6. Look at the tests in the given repository. They describe what the code is supposed to do - they correspond to the user stories mentioned above. For testing, the library [jest](https://jestjs.io/) has been used. Your first job is to run the tests.

* Open the root of the repository in the command line
* Install all the libraries (called "modules"): `npm ci`
* Run the tests: `npm run test`

7. You'll notice that the tests fail! In this lab you will employ [test-driven development](https://en.wikipedia.org/wiki/Test-driven_development). For each test, implement JS code in the class "Person" that will make the test run through. Remember: Making the test pass the simplest way possible is not enough here - you should implement it in a generic way using reflection on the method names. You can start by implement getters and setters for name and hobbies in the Person class. 

8. Don't forget to push your finished code.

# What to hand in
A link to your repository.
