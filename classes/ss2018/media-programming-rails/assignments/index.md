---
title: M1 Assignments
author: kleinen
layout: page
---

# Web frameworks

While developing the test application with your chosen framework, consider the following aspects of your chosen framework:

1. Routing and Architectural Patterns
2. How is HTML generated
3. Authentication
4. Persistency and Connectivity to Databases
5. Security

# Thema: Todo-Liste

## Backlog
1. As a user, I can create an Entry in the Todo List
1. As a user, I can delete an Entry
1. As a user, I can edit an Entry
1. As a user, I can mark an Entry as done
1. As a user, I can see a list of all Todo Entries.
1. As a user, I can filter all todo entries by 1. Category/Topic
1. As a user, I can mark an entry as important.
1. As a user, I can add a Category/Topic to an Todo 1. Entry
1. As a user, I can create a Category/Topic for Todo 1. Entries.
1. As a user, I can see Todos sorted by due date.
1. As a user, I can add a due date to a todo entry.


{% comment %}
# Week 1

## Project Start, The Rails World

### Working on your project
1. Write down your project vision.
2. Write down your product backlog.
3. Roughly prioritize it for business value. Don't hesitate to write down as many stories as you want, you don't have to implement them all.
3. Pick a user story that you can implement with simple CRUD operations.
4. Draw a scribble for the screens involved.
5. Draw a first sketch of the data model that is suffient for this story.
6. Install Ruby and Ruby on Rails on your computer. See [the rails guides](http://guides.rubyonrails.org/getting_started.html#installing-rails) and the [Ruby Homepage](https://www.ruby-lang.org/en/documentation/installation/) for instructions.

### Reading and preparation
Starting next week, You will work on your project within the lab.
I will publish the next assignment by monday, enabling you to
start working on it and have your questions ready in the lab.
For preparation, please read through

* [Getting started with Rails](http://guides.rubyonrails.org/getting_started.html)

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
of examples in the [Working with JavaScript in Rails](http://guides.rubyonrails.org/working_with_javascript_in_rails.html) Guide.

## Writeup and Report

Upload a PDF Report describing what you did (I don't want to have to figure out what
you did from your source code) including a link to the git repository (or, the
complete repository.)
make sure you have tagged all versions with the corresponding week, e.g.

    git tag week_5


    {% endcomment %}

{% comment %}
| 1    | 46 | Wed, 2017-11-15 | Project Start, The Rails World           | [Week1](../assignments/#week-1) |
| 2    | 47 | Wed, 2017-11-22 | Rails Dash, Active Record and Migrations | [Week2](../assignments/#week-2) |
| 3    | 48 | Wed, 2017-11-29 | Acceptance Testing and Ruby              | [Week3](../assignments/#week-3) |
| 4    | 49 | Wed, 2017-12-06 | Continuous Integration and Deployment    | [Week4](../assignments/#week-4) |
| 5    | 50 | Wed, 2017-12-13 | 3rd Party Libraries and APIs             | [Week5](../assignments/#week-5) |


# Week 2

## Active Record Associations, Migrations and Views

### Working on your project

6. Create a new rails application.
7. Generate your first model/view/controller using `rails generate scaffold`
8. Have a look at the generated html templates (find dem in app/views). Change and document one thing that makes sense within your application.
9. Next, pick a user story that requires to add a little bit of functionality to your app.
10. Implement it by at least creating a new controller action and route by hand.



1. Pick a story that requires you to introduce at least one new Resource to your Project.
2. Update your sketch of the data model, if needed.
3. Update your view sketches to integrate the new resource.
4. Create the new resource.
5. Declare the Association in the other Model class
6. Adapt/Extend the migrations as needed.
7. Adapt Model/Views/Controllers to new model
8. Implement some more

Document your work in your Report, you can use the example project as an
example. Maybe you also want to add new storys to your backlog. In any case,
include the backlog in your report marking the completed storys. Include either
a link to a repository or an zip with the source code.

If you include a link to a repository you're still working on, make sure to tag the version corresponding to your report with "week1", "week2" and so on:

    git tag week2

or, if you already have newer commits:

    git tag week2 <hash-of-commit>

And make sure that the tags are visible in the shared repository, pushing them explicitely if necessary, e.g. with:

    git push --tags origin master

### Reading and preparation

You'll find further information about Active Record Migrations, Associations and
Querying in the respective Rails Guides:
* [Active Record Associations](http://guides.rubyonrails.org/association_basics.html)
* [Active Record Migrations](http://guides.rubyonrails.org/active_record_migrations.html)
* [Active Record Query Interface](http://guides.rubyonrails.org/active_record_querying.html)

You don't need to read them in full, but it's useful to have a look at the contents
and use them to look up the things you need.

In week 3, we'll work on Ruby, and Rails Testing. Please read through the Rails Testing
Guide and have a look at the Capybara DSL which we will use to write end-to-end feature
tests.
* [A Guide to Testing Rails Applications](http://guides.rubyonrails.org/testing.html)
* [Capybara's DSL](https://github.com/jnicklas/capybara#the-dsl)
* Collect the Ruby idioms you've encountered so far. You can also start making your own notes/examples by cloning [https://github.com/media-programming-rails/ruby-learning/](https://github.com/media-programming-rails/ruby-learning/)
* Read through [From Java to Ruby](https://www.ruby-lang.org/en/documentation/ruby-from-other-languages/to-ruby-from-java/)
(or, if you're coming from another language, the appropriate guide)
* optional: have a look at further documentation on [https://www.ruby-lang.org](https://www.ruby-lang.org)


# Week 3

## Testing, Setting up a Deployment Workflow, and some Ruby

### Working on your project

again, see the [example project](../example-project/week-3) for clarification on what to do.

1. Create at least one happy-path feature test for each person on your team. Use Capybara.
2. Test cleanup
3. Create test data for the tests using fixtures.
4. Create a model test.
5. Create seed data for playing around in development mode, and also some if you need/want seed data in production.
6. Set up automated integration tests on travis ci for your project. Include a "build passing" button in your readme.
7. Set up an Automated Deployment to Heroku for your project.
8. For the bored: set up a build matrix testing both against postgres and sqlite on travis
9. Automatically Deploy every successful Build from Travis.

### Reading
For next week, read about rolling your own authentication in rails:
* [Michael Hartl's Rails Tutorial Chapter 8](https://www.railstutorial.org/book/basic_login)


# Week 4

## Authentication /Login & Logout

  1. Add a user model and set it up with encrypted password
  2. Add Sessions, Login and Logout to your application
  3. Restricting Access to Some Pages

Again, see the [example project](../example-project/week-4) for clarification on what to do.
Note that this is not a complete thing, as you don't need to implement signup. It's just about
getting an idea about how session management and login in rails might work. For a real life web
application you should use one of the available frameworks, like devise.

## Reading for next week

* [Working with JavaScript in Rails](http://guides.rubyonrails.org/working_with_javascript_in_rails.html)

# Week 5

## AJAX

Find a place where a little bit of JavaScript is useful in your Application. You find a couple
of examples in the [Working with JavaScript in Rails](http://guides.rubyonrails.org/working_with_javascript_in_rails.html) Guide.

See my [example project](../example-project/week-5).

Upload a PDF Report describing what you did (I don't want to have to figure out what
you did from your source code) including a link to the git repository (or, the
complete repository.)
make sure you have tagged all versions with the corresponding week, e.g.

    git tag week5
{% endcomment %}
