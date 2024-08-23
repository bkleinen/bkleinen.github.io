---
title: Modulehandbook
author: unckell
draft: true
---

- deprecated, moved to https://modulehandbook.github.io/
# Writing and Developing Module Handbooks Together

Module handbooks are a very important basis for the planning and organization of studies and for the recognition of credits already earned. The planning of completely new study programs and modules as well as their further development are based on the module handbooks.

In order to be able to develop the module handbooks in a pleasant way, a process is needed in which it is possible to obtain feedback in an uncomplicated way and to accompany the university politics process. Typically, a lot of DOCX and PDF files are sent back and forth, making it difficult to keep track of the latest version and revision history after a while.

To better organize this process within the project [German International University of Applied Sciences (GIU AS)](https://www.htw-berlin.de/forschung/online-forschungskatalog/projekte/projekt/?eid=2839) and to make it more convenient and efficient we have developed the modulehandbook app. It should make it easier to develop and write module handbooks together, to get feedback, and to accompany the university policy process.


Currently, the GIU in Cairo plans to port the Module Handbook for their environment
in order to be the basis for their website.


____
- Sourcecode Repository [on Github](https://github.com/modulehandbook/modulehandbook)
- Staging Server [on Heroku](https://module-handbook-staging.f4.htw-berlin.de/)
- Please collect Issues [as Github Issues](https://github.com/modulehandbook/modulehandbook/issues)
____


## Features:

### Single Source of Truth
The modulehandbook app replaces the practice of sending DOCX and PDF files back and forth. The single source of truth is the database of the app which also means, that every involved party always has the current version of the module handbooks available.

### User Roles
The modulehandbook app supports multiple different user roles allowing users to participate in different positions ranging from read only accounts to active participants.

### Tracking Status
The modulehandbook app makes it possible to track the processing status of courses and study programs and also accompanies the university politics process. This makes it easier to see what is finished, what is still being worked on, and what is still waiting for a vote or has already been voted on.

### Course Versioning
The modulehandbook app tracks the version history of each course so it is possible to revert to any previous version with ease if needed.

### Less Redundant Files
The modulehandbook app allows to use the same module description multiple times in multiple study programs. There is no more need to have the module description of the same course multiple times different study programs which leads to less redundant files.

### Export to Word and JSON
The modulehandbook app has the ability to export the complete module handbook for a study program or a single module description either as a Word-file (.docx) or as JSON for further editing.
