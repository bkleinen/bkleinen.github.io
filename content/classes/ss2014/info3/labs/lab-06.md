---
title: 'Exercise 06 - Rails - First Steps'
author: kleinen
layout: page
---

 ![Pumpkins](../../images/pumpkins-wide.jpg "pumpkins")
Foto by [Pedro J. Ferreira](https://www.flickr.com/photos/pedroferrer/3615212504)
# Prelab

1. Read through two Rails Guides:
    1. https://guides.rubyonrails.org/active_record_basics.html
    2. https://guides.rubyonrails.org/association_basics.html

# Assignment

## Part 0:

On the order#show page, show the associated customer with its name rather than the ID -
Test driven! You can use the :order1 factory for
this, see Part 1 for more info on FactoryGirl test
data.

## Part 1: Creating Testdata

You should never be attached to manually created test data living in your development or test database. Instead, you should have scripts that generate and re-generate this test data on demand.

I've prepared such a script for you using [FactoryGirl](https://rubygems.org/gems/factory_girl) and a [rake task](https://github.com/htw-imi-info3-archive/HTW/blob/master/lib/tasks/db.rake).

You can use the task with

    rake db:populate

which automatically creates all models defined in spec/factories to populate your development database. The database will be reseted beforehand - remember, you should not be attached to any data in your development database. You'll find examples on how FactoryGirls is used in the provided feature specs. (Remember, tests use a different database!)

### Your task is to add two pumpkins each to the factories:

1. Fork the Repository: https://github.com/htw-imi-info3-archive/htw
 - it is ok to publish your solution there. The "OK"-Test for this exercise will be a brief moodle quiz. Also, group 2 will get a slightly different assignment(will be posted here by next week)!
2. decide on the pumpkins you want to add (https://www.allaboutpumpkins.com/perfect.html might be an inspiration) and add an issue to the original repository. e.g. open a new issue with the topic "add Blue Hubbard to Test Data"
    so that everyone else knows you're working on that particular pumpkin and we don't have 50 blue hubbards in the end.
3. create a branch in your fork - this will be necessary for the pull request.
4. add the pumpkin factories by adding **a new file**  to spec/factories/
- remember you should have two pumpkin types each! - if you run into trouble or are just curious about FactoryGirl, you'll find info here:  https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
5. if you're done and the specs are running (run

        rspec spec
or just

        rake

    to find that out) send me a pull request.

As others will be doing the same, you might want to pull in the pumpkins of the others. https://help.github.com/articles/syncing-a-fork will help with that.

## Part 2: Show all orders for a customer

Add a list of all Orders placed by the customer on the page that shows a single customer. Develop this feature test-driven by first creating a new feature test in spec/features. The two provided feature tests should give you plenty of hints, see https://github.com/htw-imi-info3-archive/HTW/tree/master/spec/features - for further documentation see

* [Capybara Doc](https://rubydoc.info/github/jnicklas/capybara/master) on how to navigate web pages automatically with capybara and
* [RSpec Matchers](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers) if you need more specific assertions (expectations)

After you've created a failing test case, you can proceed to implement the feature.

Note that there is a factory for a user with several orders, you can use that for testing:

    Customer.where(name: "Dagobert").first.orders

## Part 3: Add a price to the order and sum them up.

Now, add a new field "price" to the Order model by creating a new migration,
and show the total of all Orders on the customer page. Testdriven, of course.


# Report - what to hand in

There is no report due this time. **However, I need the pull request before 23:00 the night before your next lab.** (just for the new pumpkins, Parts 2&3 will only be in your fork)
The assessment will be a moodle quiz this time, which you will need to take in the lab very similar to a moodle exam. (it would be too easy to just have someone help you fill it out if I allowed that to be done from home!). Please prepare the following things for that:

- a link to your fork, preferably the clone url.
- a link to the pumpkin file you've provided. This should point to my repository.
- be prepared to know where you had to apply which changes for the exercises above. You will not need to remember the exact syntax; but if the assigment would have been "create a 1:n association between Order and Customer" you should know that this would need a field in one table for the foreign key, and the addition of certain lines in both models.
- it's ok if everyone else can see your solution. there will be a moodle quiz
  about this exercise checking if you have an understanding which changes where made where in this exercise. The best way to learn this is to make the changes
  yourself, with at most two people working on the same repository/computer.
- if you're absolutely not able to attend the lab for taking the quiz, you may ask me at another time to quiz you personally on similar questions - obviously it would not be fair to have you take the same quiz after you could have known the exact questions.
