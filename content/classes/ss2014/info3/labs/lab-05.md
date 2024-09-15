---
title: 'Exercise 05 - Sequence Diagrams and Ruby Finger Exercises'
author: kleinen
layout: page
---

# Part 1: Sequence Diagrams

![Launch Sequence](../../images/sequence.jpg)
<small class = "float-right">Pelican launch sequence. [Foto by Don McCullough ](https://www.flickr.com/photos/69214385@N04/9172233502)</small>

## Prelab


Martin Fowler's Chapter about Sequence Diagrams from the book "UML Distilled" [is available as a sample chapter online.](https://www.informit.com/articles/article.aspx?p=169507)

Read it as a preparation for the lab.

## Assignment

1. As a finger exercise for Sequence Diagrams, pick one of the following example projects from the first semester and draw a sequence diagram for the main use case:
    * The [Clock Display](https://github.com/htw-imi-info1/chapter03/tree/master/clock-display-with-GUI) / Use case:         timeTick() is called
    * [Auction](https://github.com/htw-imi-info1/chapter04/tree/master/auction) / Use case: makeABid() is called
    * [Tech Support](https://github.com/htw-imi-info1/exercise07-archived/tree/master/tech-support) / Use case: user command is         entered (start() method in SupportSystem)
    * The [Zuul Project](https://github.com/htw-imi-info1/exercise10) /         Use case: user enters command (method: play() in Game.java)

2. Now take your scenarios from [the second exercise](../lab-02)  and have a good look at them. There are a number of processes that you should have detailed in your scenarios - if not, now you learn how to be thorough :) You need to draw sequence diagrams for the following use cases:
    * Ordering a Pumpkin/Treat
    * one other use case of your choosing

If you feel like it, you can continue with a sequence diagram for additional use cases.

# Part 2: Ruby Finger Exercises

You'll find Stubs, Tests and examples for this exercise on [github](https://github.com/htw-imi-info3-archive/ruby-exercise).


## 1. Hobby Matcher

Program a class "Person" that implements matching Persons for their hobbies, implementing those two user stories:

Vision/Goal: As a User of the Service, I want to be able to find other People with the same hobbies as I do.

Story 1: As a User of the Service I want to be able to enter my Hobbies as a comma-separated list.

Story 2: As a User of the Service I want to see a list with People with whom I share hobbies including the hobbies we share, ordered by the number of shared hobbies (descending).

Implement this in a Ruby-Class "Person" (use [Person](https://github.com/htw-imi-info3-archive/ruby-exercise/blob/master/lib/person.rb) as a starting point), holding the name and a list of hobbies
in an Array of a single person.

It should be possible to pass the list of hobbies as a single comma-seperated String
("Go, Geocaching, Stunt Kites, Bicycles")
to a setter method and be stored internally as an Array. (String#split might be useful for this.).

Write one method returning the common hobbies of two persons.
Write another Method finding all other people with similar hobbies.

You'll already find some prepared specs for this in spec/person_hobbies_spec.rb


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

Your report is due at 23.00 the day before the next lab and should include all materials (including copies of the scenarios used), properly marked with the authors of these scenarios. Don't forget to include your own names on your report, and post the materials in the Moodle area for each team member.
