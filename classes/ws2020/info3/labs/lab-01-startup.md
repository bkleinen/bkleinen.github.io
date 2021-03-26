---
title: 'Exercise 01 - Lab Startup and JavaScript Finger Exercises'
author: kleinen
layout: page
---
![Workplace](../images/workplace.jpg "pumpkins")
<small class = "float-right">Nerd Workplace. Foto by [slworking2](https://www.flickr.com/photos/slworking/8539204081/)</small>

## Pre-Lab (Do this BEFORE the lab)

### 1. Prepare your work environment
The labs will be taught remote. You can either
* work on the [lab computers from remote](https://imi-bachelor.htw-berlin.de/studium/labore/hinweise/entfernter-zugriff-auf-labor-pcs-ueber-vpn-und-remote-desktop/) (make sure to chose the lab that is given on your schedule)
* or just work on your own computer.

If you decide to work on your own computer:
* [optional] **I recomment you work on a Linux or MacOS System**. From my experience, [setting up Dual Boot Windows/Linux](https://www.groovypost.com/howto/dual-boot-windows-10-linux/) is less troublesome than trying to manage Node.js on Windows. All my instructions will be taylored to Linux and will probably work on MacOS. So if you haven't already, now is the time to get Linux :)
* Install and set up git (You will use git to hand in code - you will be added to the Info3 group when you get added on Moodle). You don't need a Git GUI, you can use it via the command line or git bash.
* Install the [Node Version Manager](https://github.com/nvm-sh/nvm/blob/master/README.md#installing-and-updating) (nvm). [This installation guide (for Ubuntu)](https://www.cyberithub.com/install-nvm-for-node-js/) can help. We'll use Node.js so we can program JavaScript command line applications and don't need to use a browser console or even a front end (for now).
* Install Node.js using nvm: `nvm install node`. Verify you installed version 14.6.0 or higher [for compatibility reasons](https://node.green/): `node --version`.
* The [Node Package Manager](https://docs.npmjs.com/) (npm) comes with Node.js, so no need to install it separately. We will use npm to manage libraries we use for Node.js
* Install and set up a code editor suitable for JavaScript. I recommend [Atom](https://atom.io). [This guide](https://wiki.ubuntuusers.de/Atom/) can help you with the installation.

### 2. Prepare some more...
* Sign in to [the IMI GitLab](https://gl-imi.f4.htw-berlin.de) and give yourself a name with which I can recognize you (something else than your Matrikelnummer! A nickname is enough.)
* Find a team of three and sign up for it using Moodle. I'll not accept work that has not been done in a group.

## Assignment
In this assignment you will program a "Hobby Matcher". "Hobby Matcher" should help people find other people with the same hobbies. Prof. Kleinen already thought of two [user stories](https://en.wikipedia.org/wiki/User_story).

**Story 1:** As a user of the service I want to be able to enter my hobbies as a comma-separated list (eg. "Go, Geocaching, Stunt Kites, Bicycles").

**Story 2:** As a user of the service I want to see a list of people with whom I share hobbies including the hobbies we share, ordered by the number of shared hobbies (descending).

### Part 1: Set up the git repository and project
1. Clone the repository on [git lab](https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples/lab01-js-exercise).
2. Rename the repository directory **locally** to YOURGROUPID (it will be something like "lab01-group1-team1"). Update **.git/description** and **package.json**.
3. Create a new repository "YOURGROUPID" in [this week's lab group](https://gl-imi.f4.htw-berlin.de/info3-wise2020/lab01).
4. Look at the git project's "remotes": `git remote -v`. You should see an "origin" that is the url of the project you just cloned. Rename the "origin" to "upstream": `git remote rename origin upstream`. This way you keep a link to the project you cloned, while making space for your new project.
5. Set the remote origin of your local repository to YOUR newly created repository on the IMI GitLab Server:
`git remote add origin https://gl-imi.f4.htw-berlin.de/info3-wise2020/lab01/YOURGROUPID.git`
6. Push your repository:
```
git add .
git commit -m "initialize project"
git push
```
7. Install all the dependencies of the project: `npm ci`

### Part 2: Testing
8. Look at the tests in the given repository. They describe what the code is supposed to do - they correspond to the user stories mentioned above. For testing, the library [jest](https://jestjs.io/) has been used.
Your first job is to run the tests: `npm run test`.
You'll notice that (almost all) the tests fail! In this lab you will employ [test-driven development](https://en.wikipedia.org/wiki/Test-driven_development) to develop software.
Test regularly as you continue with the lab.

9. [ESLint](https://eslint.org/) with the [Babel-ESLint Parser](https://github.com/babel/babel/tree/master/eslint/babel-eslint-parser) is used to validate your JavaScript against rules. You will find the configuration file `.eslintrc.json` in the repo. ESLint should help you to write clean code. In professional development, linters are used to ensure that the code follows the same style everywhere.
Your next job is to run the linter: `npm run lint`.
Lint your code regularly as you proceed. If you can't fix some of the problems that ESLint tells you about, don't get caught up in that. Instead, ask a search engine or me for help.

### Part 3: Practise JavaScript
10. For each test in `initialzation.test.js`, implement JS code in the [class](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes) "Person" so the test runs through. Remember: Making the test pass the simplest way possible is not enough here - you should implement it in a generic way using reflection on the method names.
In `Person` a [private field](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes/Private_class_fields) has already been created to hold a name. We tell JS that a field should be private by starting it with `#`. The `#` [is accepted by NodeJS](https://node.green/#ESNEXT-candidate--stage-3--instance-class-fields), but careful when you develop for the browser - [not all browsers currently support it](https://caniuse.com/#feat=mdn-javascript_classes_private_class_fields).
Hint 1: You can start by implement getters and setters for the name in the `Person` class, proceeding with getters and setters for hobbies. Hint 2: To pass the test that checks whether `UnknownAttributeError` is thrown you will need to [extend `Error`](https://stackoverflow.com/questions/1382107/whats-a-good-way-to-extend-error-in-javascript).

11. Save your progress with git after you tested and linted it! (add, commit, [optionally] push). Ideally, each new feature you add (eg. a new function) gets it's own commit. Each working version of the code should be integrated to the main branch (a simple push, if you develop only on the "master" branch).

12. Now implement code to make the tests in `hobbymatching.test.js` pass. Hint: You might need to change the constructor. Finally, test - lint - add - commit - push your code.

## Results Submission
* Hand in a link to your repository
* Hand in a lab report
* Take part in the oral test on Oct. 29 2020

More info on the [Labs](..) page.
