---
title: Assignments for Web Technology
author: kleinen
layout: page
---
{% include ss2017/media-programming-rails.md %}

Will be published here soon.
* [Week 1](week-1)
* Week 2
* Week 3
* Week 4
* Week 5
*
{% comment %}



# Week 2

## Active Record Associations, Migrations and Views

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
