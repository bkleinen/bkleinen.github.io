---
title:  A1 - Rails, ActiveRecord and Associations
author: kleinen
layout: default
---


## Assignment 1

[Example](../a1-activerecord-example)

Write down your project description/vision. Create a backlog.

Find 2-3 central model classes / resources for your
project and create them - model, views and controller within a new rails application.
Implement at least one model association and make it visible in the view.


### Create a project description and backlog

Provide a short summary of what your web-app should do.

Then, write down all the user stories you can think of. Use the form of

    As a.... I can... such that....

Remember that user stories should be of value for the user of your app (Thus,
"Design the Database Structure" is *not* a user story as a sole database design is
of no use to the user) and as independent as possible.

Don't worry about having too many stories - you won't need to implement all of them!
If you have enough stories, it will be easier to find suitable ones for implementing the technical assignments.

[See the example.](../a1-activerecord-example/index.html#create-a-project-description-and-backlog)

### Number your Stories and Prioritize the Backlog.

For clear Identification, give each story a number (e.g. S001). Reorder your backlog with the most important stories at the top. Priorization is for user value - not implementation order. "As a user, I want to login" will not be the most important story for your user - an application where the user can do nothing more than logging in will be pretty boring.

[See the example.](../a1-activerecord-example/index.html#number-your-stories-and-prioritize-the-backlog)

### Find and define 2 or 3 model classes for your project. Find stories which you can implement with CRUD operations on these resources.

As a simple rails application will be centered around CRUD (Create-Read-Update-Delete)-Operations on resources, you need to identify central resources for your project, and model them.

Usually it's easy to identify a central resource for your project. The second resource may already depend on which stories you decide to implement first.
Sketch out a database design and the associations between the models.

[See the example.](../a1-activerecord-example/index.html#find-and-define-2-or-3-model-classes-for-your-project-identify-stories-which-you-can-implement-with-crud-operations-on-these-resources)

Finally, identify the stories in your backlog that you will implement with CRUD operations on these first resources.

### Create Sketches / Paper Prototypes for your Stories

Create simple Paper Prototypes for your Stories. For the this first Assignment, a few simple Screen sketches should be sufficient. They will guide your implementation.

* [Video: Google Rapid Prototyping 1 of 3: Sketching & Paper Prototyping](https://www.youtube.com/watch?v=JMjozqJS44M)
* [Video: Web Application - Paper Prototype](https://www.youtube.com/watch?v=mH2IlUwWT3w)
* [Design Thinking - Paper Prototypes](https://www.youtube.com/watch?v=85muhAaySps) - including a paper prototype for a service

[See the example.](../a1-activerecord-example/index.html#sketch--paper-prototype)


### Implementation.

Finally, implement the selected stories by creating the resources - Model, Views and Controllers
and modifying the views. Don't get into the fine-tuning of the apperance yet, as we will do that later on with bootstrap. For the same reason, you don't need to implement/detail out more than three views.

Create some test data using seeds.

[See the example.](../a1-activerecord-example/index.html#implementation)
