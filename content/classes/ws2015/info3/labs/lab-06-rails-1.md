---
title: 'Assignment 06 - Rails - First Steps'
author: kleinen
layout: page
---

 ![Pumpkins](../images/pumpkins-wide.jpg "pumpkins")
Foto by [Pedro J. Ferreira](https://www.flickr.com/photos/pedroferrer/3615212504)
# Prelab

1. Read through two Rails Guides:
    1. https://guides.rubyonrails.org/active_record_basics.html
    2. https://guides.rubyonrails.org/association_basics.html

# Assignment

## Part 0: Show the Customer with it's Name

On the orders#show page, show the associated customer with its name rather than the ID -
Test driven! You can use the :order1 factory for
this, see Part 1 for more info on FactoryGirl test
data.

## Part 1: Creating Testdata

You should never be attached to manually created test data living in your development or test database. Instead, you should have scripts that generate and re-generate this test data on demand.

I've prepared such a script for you using [FactoryGirl](https://rubygems.org/gems/factory_girl) and a [rake task](https://github.com/htw-imi-info3-archive/lab-06-railsapp-HTW/blob/master/lib/tasks/db.rake).

You can use the task with

    rake db:populate

which automatically creates all models defined in spec/factories to populate your development database. The database will be reseted beforehand - remember, you should not be attached to any data in your development database. You'll find examples on how FactoryGirls is used in the provided feature specs. (Remember, tests use a different database!)

### Your task is to add two pumpkins each to the factories:

1. Fork the Repository: https://github.com/htw-imi-info3-archive/lab-06-railsapp-HTW
 - it is ok to publish your solution there.
2. decide on the pumpkins you want to add (https://www.allaboutpumpkins.com/perfect.html might be an inspiration) and add an issue to the original repository. e.g. open a new issue with the topic "add Blue Hubbard to Test Data"
    so that everyone else knows you're working on that particular pumpkin and we don't have 50 blue hubbards in the end.
3. create a branch in your fork - this will be necessary for the pull request. Everything in that branch will be added to the pull request! Make sure to do everything else in your master branch. You can merge or rebase the pumpkins branch into your master to have your testdata availabe.
4. add the pumpkin factories by adding **a new file**  to spec/factories/
- remember you should have two pumpkin types each! - if you run into trouble or are just curious about FactoryGirl, you'll find info here:  https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
5. if you're done and the specs are running (run

        rspec spec
or just

        rake

    to find that out) send me a pull request.

As others will be doing the same, you might want to pull in the pumpkins of the others. https://help.github.com/articles/syncing-a-fork will help with that.

## Part 2: Show all orders for a customer

Add a list of all Orders placed by the customer on the page that shows a single customer. Develop this feature test-driven by first creating a new feature test in spec/features. The two provided feature tests should give you plenty of hints, see https://github.com/htw-imi-info3-archive/lab-06-railsapp-HTW/tree/master/spec/features - for further documentation see

* [Capybara Doc](https://rubydoc.info/github/jnicklas/capybara/master) on how to navigate web pages automatically with capybara and
* [RSpec Matchers](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers) if you need more specific assertions (expectations)

After you've created a failing test case, you can proceed to implement the feature.

Note that there is a factory for a user with several orders, you can use that for testing:

    Customer.where(name: "Dagobert").first.orders

## Part 3: Add a price to the order and sum them up.

Now, add a new field "price" to the Order model by creating a new migration,
and show the total of all Orders on the customer page. Testdriven, of course.

See the rails guides on migrations for examples of migrations.

# Report - what to hand in

 **I need the pull request before 23:00 the night before your next lab.**
(just for the new pumpkins, Parts 2&3 will only be in your fork! Remember that you have to
  have the pull request in a separate branch for that, otherwise everything that you'll
  commit will be added to the pull request!)

In your PDF report, describe what worked and what didn't work, problems you ran into, etc.
Give a link to your fork and your pull request, as well as the name of the pumpkin file
you've provided.
