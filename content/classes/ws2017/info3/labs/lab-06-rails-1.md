---
title: 'Assignment 06 - Rails - First Steps'
author: kleinen
layout: page
---

 ![Pumpkins](../images/pumpkins-wide.jpg "pumpkins")
<br>Foto by [Pedro J. Ferreira](https://www.flickr.com/photos/pedroferrer/3615212504)

<div class="alert alert-warning" role="alert">

Revised - without significant changes to the assignment itself except taking
out Factory Girl/Bot - on 1/1/18.
If you've started working on this assignment before, you can view the changes
in the commit "info3 - revised lab 06" on <a href="https://github.com/bkleinen/bkleinen.github.io/commits/master">
bkleinen.github.io</a>
</div>

# Prelab
0. The Base Repo (referred to as main repository below) for this Lab is the HTW Application we've developed in class, see
    [https://github.com/htw-imi-info3-archive/rails-dash-ws2017](https://github.com/htw-imi-info3-archive/rails-dash-ws2017) - first fork it on github (only one person in your team needs to do this) and then clone it to your local workspace (computer).
1. Read through two Rails Guides:
    1. [Active Record Basics](https://guides.rubyonrails.org/active_record_basics.html)
    2. [Association Basics](https://guides.rubyonrails.org/association_basics.html)

# Assignment

## Part 0: Creating Testdata

You should never be attached to manually created test data living in your
development or test database. Instead, you should have scripts that generate and re-generate this test data on demand.

For tests, you would do that with a gem called [Factory Bot](https://github.com/thoughtbot/factory_bot_rails).

To set up nice test data for Development, we use the built-in seed task,
see the [Migrations guide](https://guides.rubyonrails.org/active_record_migrations.html#migrations-and-seed-data).

I've modified the file to include all seed data in the folder db/seeds.

### Your task is to add data to the seed data:

0. This can either be a Pumpkin or other Test Data - especially Customers and Orders - coordinate this by adding issues to the original repository (and checking what is
  already there first) -  So that everyone else knows you're working on that particular pumpkin and we don't have 50 blue hubbards in the end.
1. Fork the main repository if you haven't already done so.
 - it is ok to publish your solution to the fork.
3. create a branch in your fork - this will be necessary for the pull request. Everything in that branch will be added to the pull request! Make sure to do everything else in your master branch. You can merge or rebase the pumpkins branch into your master to have your testdata availabe.
4. add the pumpkin seed data by adding **a new file**  to db/seeds -
    remember that you can and should try out your commands in the console

        ```rails c```

5. if you're done and the seed is working (run

        rake db:seed

    to find that out) send a pull request to the main repository.

As others will be doing the same, you might want to pull in the pumpkins of the others. [https://help.github.com/articles/syncing-a-fork](https://help.github.com/articles/syncing-a-fork) will help with that.

## Part 1: Show the Customer with it's Name on Order pages

We've set up the 1:n association between Customer and Order, and the associated
Customer is shown on the [Order#index](https://localhost:3000/orders) and the [order#show](https://localhost:3000/orders/1) page, but currently with
the object id. On these two pages, show the associated customer with it's name.

Note that this includes database accesses. What should be done where?

## Part 2: Show all orders for a customer

Add a list of all orders placed by the customer on the page that [shows a single
customer](https://localhost:3000/customers/1). Hint: there is already a template showing a list of orders in
orders#index. You can copy and use/modify that. As the order doesn't contain any
data itself, you could just show the created_at date.

## Part 3: Compute the total of an order and the sum of all orders.

Compute the total of an order and show it on the order page.
Where should the computations be done, what goes in the controller, what
changed need to be made to the view?

Compute the total of all orders for a customer and show it on the customer page.

## For the bored

Create a working Shopping Cart.

# Report - what to hand in

 **I need the pull request before 23:00 the night before the next lab.**
(just for the new seed data, Parts 1-3 will only be in your fork! Remember that you have to
  have the pull request in a separate branch for that, otherwise everything that you'll
  commit will be added to the pull request!)

In your PDF report, describe what worked and what didn't work, problems you ran into, etc.
Give a link to your fork and your pull request, as well as the name of the seed file
you've created.
