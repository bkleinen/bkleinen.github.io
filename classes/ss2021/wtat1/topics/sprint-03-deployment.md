---
title: Sprint 03 - Deployment
author: kleinen
layout: default
---

As this Sprint is about creating tests and setting up an CI/CD pipeline.
you will not implement any new functionality in this sprint.

It's arguable if this weeks work should be called a sprint, as you will not implement any new
features that are of interest to users or customers.

Nonetheless, automatic testing and continuously deploying your app such that the users
and customers will be able to see and test the deliverables is a crucial part of agile development.

For everything except testing you can pretty much follow the book.

I've documented my steps in the readme of the example app:

- [Module-Handbook, Sprint 3](https://github.com/htw-imi-wtat1/module-handbook-2021)


## Test: use Jest!

The section about testing does not quite hold up with the quality of the rest of the book.

Instead of Mocha, we will be using jest and cypress for testing.

Refer to the jest documentation and my example app for guidance.

I've documented the steps I've taken for a proper test setup in the example app, based on a migration from the
mocha tests as described in the book.

Take the shortcut and create at least 1-2 smoke tests for your application, maybe one unit test and one snapshot test.

Feel free to copy my setup out of the example app in the folder [test](https://github.com/htw-imi-wtat1/module-handbook-2021/tree/master/test)

* [https://github.com/htw-imi-wtat1/module-handbook-2021/blob/master/doc/testing-with-jest.md](https://github.com/htw-imi-wtat1/module-handbook-2021/blob/master/doc/testing-with-jest.md)


## Create and Rename your Heroku app

Your app should be named according to your group name; please use this form: wtat1-group-x .

    heroku rename wtat1-module-handbook


## Set up a CI/CD Pipeline

This can be done via the web interfaces on github and heroku:

- Add a new action (default Node Action) on github
- add a deploy in the web interface of heroku, deployment method GitHub

- https://github.com/htw-imi-wtat1/module-handbook-2021/blob/master/doc/deployment.md


# Your Report should contain

* your project name
* the name and url of your (renamed) Heroku deployment
* Which stories did you test?
* as always, tag your repo: Sprint_04
