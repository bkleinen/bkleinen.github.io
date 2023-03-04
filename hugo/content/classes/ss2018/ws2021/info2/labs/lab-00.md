---
title: 'Info2: Exercise 00: Programming & Tools'
author: Linda Fernsel
layout: lab
draft: false
---

## Learning Goals
After this lab you should be able to agree with each of the following statements

I am familiar with programming in IntelliJ:
* I can create a new Java project in IntelliJ 
* I remember most of the concepts from A1 Ex1 
* I can run my new Java project in IntelliJ 

I am ready to use Git:
* I can clone an online repository 
* I can create an empty repository on GitLab 
* I can update my local repository's remotes 
* I can add changes to be committed 
* I can commit changes 
* I can push changes 


## Pre-Lab (Do this BEFORE the lab)

### 1. Prepare your work environment
The labs will be taught on campus. You can either
* work on a lab computer
* or work on the [lab computers from remote](https://imi-bachelor.htw-berlin.de/studium/labore/hinweise/entfernter-zugriff-auf-labor-pcs-ueber-vpn-und-remote-desktop/) (make sure to chose the lab that is given on your schedule)
* or just work on your own laptop that you bring to class

If you decide to work on your own computer:
* Install and set up git (You will use git to hand in code - you will be added to the Info2 group when you get added on Moodle). You don't need a Git GUI, you can use it via the command line or git bash.
* Install and set up [IntelliJ](https://www.jetbrains.com/de-de/idea/download/). Get an [educational license](https://www.jetbrains.com/community/education/#students).

### 2. Prepare some more...
* Sign in to [the IMI GitLab](https://gl-imi.f4.htw-berlin.de) and give yourself a name with which I can recognize you (something else than your Matrikelnummer! A nickname is enough.). You can only reach the IMI GitLab from at home if you use [VPN](https://rz.htw-berlin.de/anleitungen/vpn/).
* Read through the entire info page on the labs and note down any questions.
* Bring headphones to the first lab - you will watch a video.

## Lab

### Assignment 1 - IntelliJ
In this assignment you will get to know the IDE we will be using: IntelliJ.

1) Work through IntelliJ's [Create your first Java Program with IntelliJ](https://www.jetbrains.com/help/idea/creating-and-running-your-first-java-application.html). It will have a few new concepts or ones that you have not looked at in detail before! Find out the answers to the following questions:

  a) What is an "IDE"?

  b) What is a "JDK"?

  c) What is a "package"?

  d) What is a "library"?

  e) Recap: What is the "main()" method in Java?

  f) What is a "compiler"?

g) What is a "JAR"?

2) Compare your answers with those of other people. What did they find out? Do you agree? Post any open questions in the class' Moodle Forum. If you see any questions in the forum that you can answer, please answer them!

### Assignment 2 - Git
In this assignment you will take first steps with git and learn about how to hand in code for the lab.

3) [Clone](https://www.jetbrains.com/help/idea/set-up-a-git-repository.html#clone-repo) the repository on [git lab](https://gl-imi.f4.htw-berlin.de/info2-code-stubs-and-samples/lab00). Now you have a **local** clone of the template repository.
4) Rename the repository directory **locally** to lab00-YOURLSFGROUP-YOURSTUDENTID (it will be something like "lab01-group1-s0123456"). Update **.git/description**.
5) Create a **new** empty repository lab00-YOURLSFGROUP-YOURSTUDENTID online in [this week's lab group](https://gl-imi.f4.htw-berlin.de/info2-wise2021/lab00-programming-tools).
6) Look at your **local** git project's "remotes": `git remote -v` in the root folder of the project. You should see an "origin" that is the url of the project you just cloned in ex. 3. Rename the "origin" to "upstream": `git remote rename origin upstream`. This way you keep a link to the project you cloned, while making space for a link to the new project your created in ex 5.
7) Set the remote origin of your local repository to YOUR newly created repository on the IMI GitLab Server:
`git remote add origin https://gl-imi.f4.htw-berlin.de/info2-wise2021/lab00-programming-tools/lab00-YOURLSFGROUP-YOURSTUDENTID.git`
8) Check the status of your local repository: `git status`. Do you have any uncommitted changes? If so, [commit](https://www.jetbrains.com/help/idea/commit-and-push-changes.html#commit) them: `git commit -m "my commit message"`.
9) Push your repository:
```
git add .
git commit -m "initialize project"
git push
```
(You might need to vary the previous command to something like `git push -u origin main`)

10) Update the message printed by the Java program using IntelliJ!
11) Commit your changes and push your committed changes.
13) Did it work? You should now see your project files online and locally, and be able to push any changes you make locally. If anything is not working, ask your peers.
14) Answer the following questions:

  a) What does it mean to clone a repository?

  b) What is a "remote" of a repository?

  c) What does it mean to "commit changes"?

  d) What happens if you "push" committed changes?

15) Post any open questions in the Moodle Forum. See any questions there you can answer? Please try and answer them!

## Submission
Submit your lab report and the link to your repository on Moodle. Make sure that the link is put in the available text field.
Deadline is 10pm before your next lab.
