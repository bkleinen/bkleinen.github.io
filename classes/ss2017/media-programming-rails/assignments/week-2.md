---
title: Week 2 - Active Record Associations, Migrations and Views
author: kleinen
layout: page
---


# Week 2

## ongoing: Contribute to the Ruby-Learning project

If you haven't already, contribute to the ruby learning project:

[https://github.com/htw-imi-m1-ss2017/ruby-learning](https://github.com/htw-imi-m1-ss2017/ruby-learning)

Finish one topic per person. Please send me your github login to add you as a contributor for the project.

## Active Record Associations, Migrations and Views

### Reading and preparation

You should have enough background information for working on this week's assignment based
on the [Getting started with Rails](https://guides.rubyonrails.org/getting_started.html) you worked through last week.

You'll find further information about Active Record Migrations, Associations and
Querying in the respective Rails Guides:
* [Active Record Associations](https://guides.rubyonrails.org/association_basics.html)
* [Active Record Migrations](https://guides.rubyonrails.org/active_record_migrations.html)
* [Active Record Query Interface](https://guides.rubyonrails.org/active_record_querying.html)

You don't need to read them in full, but it's useful to have a look at the contents
and use them to look up the things you need.

### Working on your project

1. Pick a story or two stories that require you to introduce at least two Resources to your Project.
2. Draw a simple sketch of the data model.
3. Draw sketches of a few views. We will do an example in class
4. Create the needed resources. You can use the scaffold generator.
5. Declare the Associationsin the Model classes.
6. Adapt/Extend the Migrations as needed.
7. Adapt Model/Views/Controllers to new model to match your view designs.
8. Implement some more

See the [example project](../../example-project) for examples on what to do.

Document your work in your Report, you can use the example project as an
example. Maybe you also want to add new storys to your backlog. In any case,
include the backlog in your report marking the completed storys. Include either
a link to a repository or an zip with the source code.

### Writeup

This week, you need to upload a report to moodle before 23:00 the night before the next lab.
It should include the following:

* The name of all team members (2-3) as well as a title for your project
* Your product vision
* the backlog with the story/ies that you ch
* the data model
* the view sketches
* a link to the source code repository, e.g. on github or somewhere else where I can git clone it from
* tag your "week-2 done" version with week-2
* a brief reflection on what worked well and what problems you encountered

#### how to tag

If you include a link to a repository you're still working on, make sure to tag the version corresponding to your report with "week1", "week2" and so on:

    git tag week2

or, if you already have newer commits:

    git tag week2 <hash-of-commit>

And make sure that the tags are visible in the shared repository, pushing them explicitely if necessary, e.g. with:

    git push --tags origin master

## Reading for next week
In preperation of next week, read through the [reading material](../week-3/#reading).
