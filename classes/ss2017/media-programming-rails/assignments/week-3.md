---
title: Week 3 - Testing, CI and CD
author: kleinen
layout: page
---


# Week 3

## Reading

In week 3, we'll work on Rails Testing. Please read through the Rails Testing
Guide and have a look at the Capybara DSL which we will use to write end-to-end feature
tests.
* [A Guide to Testing Rails Applications](https://guides.rubyonrails.org/testing.html)
* [Capybara's DSL](https://github.com/jnicklas/capybara#the-dsl)

Also, we'll set up continuous integration and continuous deployment using the services travis and heroku respectively.
* [Travis for Ruby](https://docs.travis-ci.com/user/languages/ruby/)
* [Rails 5 on Heroku](https://devcenter.heroku.com/articles/getting-started-with-rails5)

### Background
* [Martin Fowler: Continuous Integration](https://martinfowler.com/articles/continuousIntegration.html)
* [Continuous Integration - The digest on the Thoughtworks Page](https://www.thoughtworks.com/continuous-integration)

## Testing, Setting up a Deployment Workflow, and some Ruby

### Working on your project

again, see the [example project](../../example-project/week-3) for clarification on what to do.

1. Create at least one happy-path feature test for each person on your team. Use Capybara.
2. Test cleanup: delete unnecessary test
3. Create test data for the tests using fixtures.
4. Create a model test.
5. Create seed data for playing around in development mode, and also some if you need/want seed data in production.
6. Set up automated integration tests on travis ci for your project. Include a "build passing" button in your readme.
7. Set up an Automated Deployment to Heroku for your project.
8. For the bored: set up a build matrix testing both against postgres and sqlite on travis
9. Automatically Deploy every successful Build from Travis.


Don't forget to tag your sources with week-3 after completing theses steps.
