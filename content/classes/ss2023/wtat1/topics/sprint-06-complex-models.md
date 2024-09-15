---
title: Sprint 06 - Supporting Complex Models
author: kerth
draft: false
---

#### Agile Topic: Sprint Planning

Focus your sprint planning meeting on "how" to deliver the sprint backlog items, possibly adjusting a previously selected
sprint goal as necessary.

#### Development Topic: Supporting Complex Models

Lessons 17 and 18 of Unit 4 cover model associations and validations using the example of a user model.

You will need  such a model for authentication in addition to your domain models (i.e. models relevant for
implemeting your business logic). You can just copy and adapt the user model from the example application,
to ensure that it fits to your application domain.

If you've already created a user model as your first model, also add another model such that
you have at least two models in your application.

__don't overlook chapter 17.2., Testing models in REPL__ - testing parts of your application interactively can save you lots of time!

##### Topic of the Week

Model association and validation, overview table:

- Find one or more stories to implement at least one model association, one validation and one overview table.
- Work with git. Create a branch for each story and merge it into master with a merge commit like "Story_001 Overview of Study Program"
  - You may also clean your git history to just have one commit per story.
- Tag the version where the sprint was completed with "Sprint_06"
- Include the repo url in your status report (you can use any service, e.g. https://gitlab.rz.htw-berlin.de/)
  - Please use a public repository or grant read access to the lecturer

#### Status Report

Write up a brief status report containing:

- Your project name
- The names of all team members
- The backlog as a text file
- The stories you've implemented in this sprint
- A reflection on any technical issues that you have encountered and how you resolved them (or not)
  - Can you ensure that an associated model instance is available on insert of the main model?
- The url of your git repositories

and submit it as .txt or .pdf to Moodle with the filename _Group\_\<X\>\_Project\_\<Y\>\_Sprint06.pdf_ or
_Group\_\<X\>\_Project\_\<Y\>\_Sprint06.txt.
