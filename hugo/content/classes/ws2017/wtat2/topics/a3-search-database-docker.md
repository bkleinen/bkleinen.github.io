---
title:  Assignment 3 -  Search Functionality, Postgres and Docker (and some more Bootstrap)
author: kleinen
layout: default
---

## Implement Search Functionality
The main Assignment for this sprint is to implement a search functionality for your
app. Thus, find (or create) userstorys that you will need a search functionality for.

For the search functionality itself, you'll find a tutorial in Chapter 4 of the Book,
which focusses on leveraging Postgres indices. Alternatively, you can decide to learn
more about the ActiveRecord Query Language. Choose one, read the linked material.
Even if you decide to use ActiveRecord Query Language you should read the first part
of Chapter 4 where you find info about building the search itself into rails and
generating test data.

## Postgres and Dockerization
Even if you don't use special Postgres features for your search, you need to start using
postgres in this sprint, as postgres will be needed for production deployment - sqlite is
just a fake db for development. Instead of installing Postgres locally we will run Postgres
in a Docker container and Dockerize the whole application while we're at it. See A3 - Dockerization commits
and the [Docker Doc in the App](https://github.com/htw-imi-wtat2/IMICalendar/blob/master/doc/docker.md).

## Search Results
Make sure your search results look decent. Read Chapter 05 on how to use Bootstrap for displaying
search results and apply to your application.

## Don't forget the tests
Don't forget to write tests for your new features and to groom your test suite along the way.
Install SimpleCov (see [Commit](https://github.com/htw-imi-wtat2/IMICalendar/commit/1a67ede3cfb47a0838c76d6777f6bd0c66009157))
to check the coverage of your test suite.

## Upload
As always, upload a PDF report containing your updated Backlog, the names
of all collaborators and a link to your repository to moodle.
* updated Backlog: clearly marked completed storys and the stories you worked on/completed this week.
* report on how you worked on the stories. This may be brief, but this week it should contain some text on which kind of search you implemented, what went well and where you've encountered problems, and what you've learned.
