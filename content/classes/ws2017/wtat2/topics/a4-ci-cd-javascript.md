---
title:  Assignment 4 -  Java Script and Deployment
author: kleinen
layout: default
---

## Continuous Integration and Deployment

Setup Travis CI to build your project automatically after each push.
See [https://docs.travis-ci.com/user/docker/](https://docs.travis-ci.com/user/docker/).

Setup an Automatated Deployment after a successful build. See [https://docs.travis-ci.com/user/deployment](https://docs.travis-ci.com/user/deployment)

I've created two examples:

* direct deployment of rails on heroku in [https://github.com/htw-imi-rails-examples/notes-deploy](https://github.com/htw-imi-rails-examples/notes-deploy)
* deployment on heroku with docker in [https://github.com/htw-imi-rails-examples/notes-deploy-docker](https://github.com/htw-imi-rails-examples/notes-deploy-docker)

## AJAX

Find a place - find or create a story - where a little bit of JavaScript is useful in your Application. You find a couple
of examples in the [Working with JavaScript in Rails](https://guides.rubyonrails.org/working_with_javascript_in_rails.html)
Guide which is also the required reading for next week.


## Don't forget the tests
Don't forget to write tests for your new features and to groom your test suite along the way.

There are directions on how to test JavaScript on the [Capybara site](https://github.com/teamcapybara/capybara), and
you might [also need another driver](https://github.com/teamcapybara/capybara#drivers), e.g. PhantomJS.

## Upload
As always, upload a PDF report containing your updated Backlog, the names
of all collaborators and a link to your repository to moodle.
* updated Backlog: clearly marked completed storys and the stories you worked on/completed this week.
* report on how you worked on the stories. This may be brief, but this week it should contain some text on which kind of search you implemented, what went well and where you've encountered problems, and what you've learned.
* Tag the version after this week completion with week-4
