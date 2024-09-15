---
title: M1 Assignments
author: kleinen
layout: page
---

# Week 1

## Project Start, The Rails World

### Working on your project
1. Write down your project vision.
2. Write down your product backlog.
3. Roughly prioritize it for business value. Don't hesitate to write down as many stories as you want, you don't have to implement them all.
3. Pick a user story that you can implement with simple CRUD operations.
4. Draw a scribble for the screens involved.
5. Draw a first sketch of the data model that is suffient for this story.
6. Install Ruby and Ruby on Rails on your computer. See [the rails guides](https://guides.rubyonrails.org/getting_started.html#installing-rails) and the [Ruby Homepage](https://www.ruby-lang.org/en/documentation/installation/) for instructions.

### Reading and preparation
Starting next week, You will work on your project within the lab.
I will publish the next assignment by monday, enabling you to
start working on it and have your questions ready in the lab.
For preparation, please read through

* [Getting started with Rails](https://guides.rubyonrails.org/getting_started.html)

Note that you don't need to implement everything that's described there, or in your backlog, but
it will help you understand what you need to do for this exercise as well as for
the next.

# Week 2

## Rails Dash, Active Record and Migrations

### Working on your project

1. Implement your first User story from week 1 with Rails.
2. Find one or more user storys that gives you the opportunity to implement an association
    between two model classes.
3. Draw Screen Mocks / a simple paper prototype for these storys.
4. Draw a Class diagram showing the relevant model classes (and, if you want to, some more)
5. Implement the user story
6. make sure that you use a migration to create the table for the new model and possibly adding foreign keys (or more new columns) to the existing table(s)

### Reading and preparation for next week

Reading for next week:

* Chapter "Introduction to Ruby" (in Moodle)
* [RSpec Expectations](https://relishapp.com/rspec/rspec-expectations/docs)
* [Capybara - The DSL](https://github.com/teamcapybara/capybara#the-dsl)

# Week 3

If you haven't already done so, publish your work on github (or an equivalent service).
Before you begin, tag the state of your work until now with "week_2".

## Assignment:

1. Write at least one Happy Path feature test for every story you've implemented.
2. Implement one other story test driven.
3. Set up Travis CI for your project as shown in class.

Briefly describe what you've done, include all names of your team and a link to the github repository in your Report and submit to moodle in PDF format.

<span class = "attention">Every Team member has to upload themselves - ideally the exact same file</span>

Tag your work with 'week_3'

## Testing Docs

* [RSpec Rails Doc](https://relishapp.com/rspec/rspec-rails/v/3-6/docs/feature-specs/feature-spec)
* [Capybara](https://github.com/teamcapybara/capybara)
* [Using Capybara with RSpec](https://github.com/teamcapybara/capybara#using-capybara-with-rspec)
* [Building a Ruby Project with Travis](https://docs.travis-ci.com/user/languages/ruby/)

# Week 4

## Assignment: Add continuous Deployment for your app.

1. Choose a deployment option from the list of supported Providers on the
   [Travis Deployment Page](https://docs.travis-ci.com/user/deployment)
2. and follow the instructions there to set up an automated deployment after
   a successful buildt
3. Describe the steps you did, what worked and what you've learned what didn't
   work in your report.
4. Implement one (ore more) additional stories and enjoy the automatic test and
   deployment. Include the updated backlog with the story clearly marked in your
   report.
5. Tag your finished work with 'week_4' and make sure the url of your git repo
   is included in the report.
6. Include the link to the deployed app in your report.
6. Upload the report as PDF to Moodle.

   <span class = "attention">Every Team member has to upload the report - ideally the exact same file</span>

# Week 5

## 3rd Party APIs *or* Javascript

This week is about enhancing your app a bit - either by using some JavaScript
on the site or by using a third party API. (You can, however, do both if you want
to, but one topic is sufficient)

### Option a: 3rd Party API

Find a third party API that you can use in your application and use it. We will
talk about good ways to work with external APIs in class.

### Option b: Add a bit of Javascript

Find a place where a little bit of JavaScript is useful in your Application. You find a couple
of examples in the [Working with JavaScript in Rails](https://guides.rubyonrails.org/working_with_javascript_in_rails.html) Guide.

## Writeup and Report

Upload a PDF Report describing what you did (I don't want to have to figure out what
you did from your source code) including a link to the git repository (or, the
complete repository.)
make sure you have tagged all versions with the corresponding week, e.g.

    git tag week_5

    
