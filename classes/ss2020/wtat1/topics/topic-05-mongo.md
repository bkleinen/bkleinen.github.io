---
title: Topic 05 - Sprint 03 - Persistence with Mongo
author: kleinen
layout: default
---

## Sprint 03: Persistence with Mongo

Based on Unit 3, "Connecting to a Database", you'll implement persistence with Mongo DB and Mongoose.
The functionality implemented will be showing listings and single items of one resource, as well as creating new records (no editing yet).

Lesson 15 ends with an example on how to seed the database using JavaScript.
I the example applications uses mongoimport which is easier to create, but
not as convenient to call.

As usual, select a story or two you will implement using the new technological features.
You will create a full CRUD (Create/read/update/delete) in the following Sprint, Sprint 04,
for another Model.

### Setting up the DB on Heroku

MONGODB_URI

mongoimport --uri $MONGODB_URI --collection=courses mongo/seed/imi-b-courses

### Example Application

https://github.com/htw-imi-wtat1/module-handbook/blob/master/README.md#sprint-03

### Status Report

Write up a brief status report containing:

- Your Project Name
- The Names of all People on the Team
- The Stories you've implemented
- the url of your git repositories
- your revised backlog, keeping the implemented stories at the top marked as "Sprint 01 - Done" or "Sprint 01 - in progress"

and submit it as .txt or .pdf to moodle with the Filename:
Group_X_ModuleHandbook_Sprint02.pdf or Group_X_ModuleHandbook_Sprint03.txt
