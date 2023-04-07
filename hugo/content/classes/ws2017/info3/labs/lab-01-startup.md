---
title: 'Exercise 01 - Lab Startup and Ruby Finger Exercises'
author: kleinen
layout: page
---



![Workplace](../images/workplace.jpg "pumpkins")
<small class = "float-right">Nerd Workplace. Foto by [slworking2](https://www.flickr.com/photos/slworking/8539204081/)</small>

## PreLab

* if you plan on using your own computer in the lab, you should do the software installation of at least ruby and a decent editor **before coming to lab**.

# Part 1: Setting up your environment

Make sure that you have

- ruby,
- rails,
- git,
- a decent text editor

 installed on the computer you intend to use (or know how to run all these on the lab machines).

**[Here are detailled instructions](../lab-01-startup-installation)**.

# Part 2: Git

## Git

This is to be done in the lab, or, alternatively, with all people sitting next to each other. The objective is to practice exchanging  text files via git and github.

Build Teams, create a central repository within each team and add the team members as collaborators on github (you may use another provider for git repositories, e.g. the FB4 Projekteserver - see [the git part in the installation instructions](../lab-01-startup-installation). The team size is up to you - it has to be at least two, the more you are the more complicated it gets. Make sure each one of you has successfully committed at least one change to the repository. You can set up a repository for the Ruby Finger Exercise right away.



# Part 3: Ruby Finger Exercises

You'll find Stubs, Tests and examples for this exercise on [github](https://github.com/htw-imi-info3-archive/lab-01-ruby-exercise).

## 1. Hobby Matcher

"Hobby Matcher" should people help find other people with the same hobbies.

Program (or extend) a class "Person" that implements matching Persons for their hobbies by implementing those two user stories:

**Story 1:** As a User of the Service I want to be able to enter my Hobbies as a comma-separated list.

**Story 2:** As a User of the Service I want to see a list with People with whom I share hobbies including the hobbies we share, ordered by the number of shared hobbies (descending).

Implement this in a ruby class "Person" (use [Person](https://github.com/htw-imi-info3-archive/lab-01-ruby-exercise/blob/master/lib/person.rb) as a starting point), holding the name and a list of hobbies in an Array of a single person.

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
