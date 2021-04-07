---
title: Topic 03 - Sprint 01 - First Node App
author: kleinen
layout: default
---

## Sprint 01: Project Ideas & First Node App

During the first week, you will work individually. Install Node and create
a first (pure) node app that serves at least one static html file.

Use the week to think about an app idea that you would like to use during the
term. You can pitch your idea next week in class.

If you want to, you could use your static html site to show your idea
what the app might look like.

- follow the tutorial in unit 01 in the book - create a simple node app without any other framework.
- work with git.
- tag the version where the sprint was completed with "sprint_01"  
- include the repo url in your status report (you can use any service, e.g. https://gitlab.rz.htw-berlin.de/)
- if you use a private repository, make sure to grant me read access

### Code Example: Module Database

My code example can be found at
https://github.com/htw-imi-wtat1/sprint01_plain_node_webapp
it implements two backlog items (requirements) of a module handbook example app:

    Story_042 - As a student or lecturer, I see an overview of the whole study program with all modules including Title, Format and ECTS on the site.
    Story_023 - As a student, I can quickly get an overview of the my progress within the study program.

I implemented them by simply showing parts of the Studienordnung copied as images - effective and even more practice on the topic
of serving static files.

### Sprint Report

Write up a brief report containing:

- Your Name
- the url of your git repository
- a brief summary what you learned, and things that worked and didn't work.
- and submit it as pdf to moodle with the Filename: `Lastname_Firstname_Sprint01.pdf`

For instance, my report could contain a short summary/reflection about what I learned about including bootstrap in a node app:
I first tried including the bootstrap files individually by copying them to /public (see commit [added bootstrap 4.4.1 complete](https://github.com/htw-imi-wtat1/sprint01_plain_node_webapp/commit/0d992464a47810ea83045652cc1f1e02936714ca)) and serving them as static files.
Later on Idecided to include bootstrap as npm module, which allows for automatic updates via npm update, see commit [move bootstrap to node module](https://github.com/htw-imi-wtat1/sprint01_plain_node_webapp/commit/b06f2fb174da1f8045d9e4180cbf4d5abdc6f325).
