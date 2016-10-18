---
title: Assignments for Web Technology
author: kleinen
layout: page
---

# Assignments

## Week 1 - Getting started

### Working on your project
1. Write down your project vision.
2. Write down your product backlog. Roughly prioritize it for business value. Don't hesitate to write down as many stories as you want, you don't have to implement them all.
3. Pick a user story that you can implement with simple CRUD operations.
4. Draw a scribble for the screens involved.
5. Draw a first sketch of the data model that is suffient for this story.
6. Create a new rails application.
7. Generate your first model/view/controller using `rails generate scaffold`
8. Have a look at the generated html templates (find dem in app/views). Change and document one thing that makes sense within your application.
9. Next, pick a user story that requires to add a little bit of functionality to your app.
10. Implement it by at least creating a new controller action and route by hand.

### Reading and preparation
Starting next week, You will work on your project within the lab.
I will publish the next assignment by monday, enabling you to
start working on it and have your questions ready in the lab.
For preparation, please read through
* [Getting started with Rails](http://guides.rubyonrails.org/getting_started.html)

Note that you don't need to implement everything that's described there, but
it will help you understand what you need to do for this exercise as well as for
the next.


# Week 2 - Active Record Associations, Migrations and Views

### Working on your project

again, see the [example project](../example-project) for clarification on what to do.

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
* collect the Ruby idioms you've encountered so far.
* Read through [From Java to Ruby](https://www.ruby-lang.org/en/documentation/ruby-from-other-languages/to-ruby-from-java/)
(or, if you're coming from another language, the appropriate guide)
* optional: have a look at further documentation on [https://www.ruby-lang.org](https://www.ruby-lang.org)
