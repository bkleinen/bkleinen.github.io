---
title: Sprint 13 - Deployment to Heroku
author: kerth
draft: false
---

#### Agile Topic

No specific agile topic to be covered in this sprint. Continue to follow the Scrum methodology in your development work, correcting any issues that
you may encounter during the regular Scrum events.

#### Development Topic: Deployment to Heroku

Deploy your app to Heroku along the lines of the process described in unit 8 (lessons 34 - 37). A user story should be used to guide deployment decisions.
It's arguable if this week's work should be called a sprint, as you will not implement any new features that are of interest to users or customers.
Nonetheless, automatic testing and continuously deploying your app such that the users and customers will be able to see and test the deliverables is
a crucial part of agile development.

Setting up a CI/CD Pipeline can be achieved via the web interfaces on GitHub and Heroku:

- Add a new action (default Node Action) on GitHub
- add a deploy in the web interface of Heroku, deployment method GitHub

##### Topic of the Week

Heroku, tests, CI/CD:

- Deploy your app to Heroku, based on an appropriate user story. Implement and run integration tests and setup a CI7CD pipeline.
- Please name your app according to your group name; i.e. "wtat1-group-x" ("heroku rename wtat1-group-X").
- Include the Heroku url to your app in your status report
  - Please use a public URL to allow access by the lecturer

#### Status Report

Write up a brief status report containing:

- Your project name
- The names of all team members
- The backlog as a text file
- The stories you've implemented in this sprint (if any).
- A reflection on any technical issues that you have encountered and how you resolved them (or not)
  - Does your app scale? How many requests per second can you support? Can you detect if the app is unhealthy in production?
- The url of your Heroku app

and submit it as .txt or .pdf to Moodle with the filename _Group\_\<X\>\_Project\_\<Y\>\_Sprint13.pdf_ or
_Group\_\<X\>\_Project\_\<Y\>\_Sprint13.txt.
