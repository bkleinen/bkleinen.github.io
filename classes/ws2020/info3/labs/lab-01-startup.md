---
title: 'Exercise 01 - Lab Startup and Ruby Finger Exercises'
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
* Make sure you can sign in to [the IMI GitLab](https://gl-imi.f4.htw-berlin.de)
* Get to know the web development tools of Firefox (open them with Right Click > "Inspect Element"). We are especially interested in the tabs "Console" and "Debugger". "Console" is where JavaScript will print to and using the "Debugger" you can debug your JavaScript.
* Review what you have learned about JavaScript so far
* Have a look at [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet). Markdown is a language that you can use to format your readme.md files on the GitLab server.

<!--
## Assignment

## Git

This is to be done in the lab, or, alternatively, with all people sitting next to each other. The objective is to practice exchanging  text files via git and github.

Build Teams, create a central repository within each team and add the team members as collaborators on github (you may use another provider for git repositories, e.g. the FB4 Projekteserver - see [the git part in the installation instructions](../lab-01-startup-installation). The team size is up to you - it has to be at least two, the more you are the more complicated it gets. Make sure each one of you has successfully committed at least one change to the repository. You can set up a repository for the Ruby Finger Exercise right away.



# Part 3: Ruby Finger Exercises

You'll find Stubs, Tests and examples for this exercise on [github](https://github.com/htw-imi-info3/lab-01-ruby-exercise).

## 1. Hobby Matcher

"Hobby Matcher" should people help find other people with the same hobbies.

Program (or extend) a class "Person" that implements matching Persons for their hobbies by implementing those two user stories:

**Story 1:** As a User of the Service I want to be able to enter my Hobbies as a comma-separated list.

**Story 2:** As a User of the Service I want to see a list with People with whom I share hobbies including the hobbies we share, ordered by the number of shared hobbies (descending).

Implement this in a ruby class "Person" (use [Person](https://github.com/htw-imi-info3/lab-01-ruby-exercise/blob/master/lib/person.rb) as a starting point), holding the name and a list of hobbies in an Array of a single person.

It should be possible to pass the list of hobbies as a single comma-seperated String
("Go, Geocaching, Stunt Kites, Bicycles")
to a ***setter method*** and they should be stored ***internally as an Array***. (String#split might be useful for this.).

Write one method returning the common hobbies of two persons.
Write another method finding all other people with similar hobbies.
Check out ***the provided spec*** for the exact method signatures! (spec/person_hobbies_spec.rb)


## 2. Initialization from a hash

You'll see later that models in Rails (ActiveRecords) can be initialized like
that:

    Person.new(:name => "Donald",:hobbies => "Money, Bathing")

or, using the new fancy hash syntax:

    Person.new(name: "Donald", hobbies: "Money, Bathing")

With the fields - name and hobbies in this case - set to the values in the Hash.

Both cases make use of the fact that you can omit the {} if you pass a Hash
as last argument to a method.

This exercise is to implement this part of functionality by **generically**
calling the appropriate setter methods for each key in the hash - if the setter
is present.

Again, you'll find a test case in person_init_spec.rb which you should use for
developing this test-driven - but remember: making the
test pass the simplest way possible is not enough here; you should implement
it in a generic way using reflection on the method names.


# Report - what to hand in

Your lab report is due at 22.00 the day before the next lab and should include a written report on what you've tried, what worked and what didn't - for both parts: the installation and the ruby finger exercises. Don't forget to include your own names on your report, and that each member of the team has to post the report.
-->
