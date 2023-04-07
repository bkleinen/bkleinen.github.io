---
title: 'Exercise 06 - Ruby Exercise'
author: kleinen
layout: page
---

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

or, in the new fancy hash syntax:

    Person.new(name: "Donald", hobbies: "Money, Bathing")

With the fields - name and hobbies in this case - set to the values in the Hash.

Both cases make use of the fact that you can omit the {} if you pass a Hash
as last argument to a method.

This exercise is to implement this part of functionality by generically
calling the appropriate setter methods for each key in the hash - if the setter
is present.

Again, you'll find a test case in person_init_spec.rb which you should use for
developing this test-driven - but remember: making the
test pass the simplest way possible is not enough here; you should implement
it in a generic way using reflection on the method names.

## 3. For the bored:

Have a look at `template.rb`
- can you explain what it does and how it works?

# Lab Report

The lab report should include a report on what you did, preferably short, in pdf
format, including the names of all people in your group/that worked on the report,
and a zip with the sourcecode.
