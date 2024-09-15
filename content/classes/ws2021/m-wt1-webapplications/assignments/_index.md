---
title: Web Applications WS2021/2022 - Graded Assignments
author: kleinen
draft: false
---

## Graded Assignments / Mon 19:30

1. Project Descriptions / Technical Challenge
2. CI/CD Documentation
3. 10.1. Book Chapters for Review
4. 17.1. (Peer-) Reviews of Book Chapters
5. 31.1. .Usability Assessments
~~6. Security Assessments~~
7. Final Book Chapters
8. Documentation of Infrastructure-Part
9. Final Project Documentation

## 1. Project Descriptions / Technical Challenge

Outline your Project. Include
- Names of all Contributers
- Technological Challenge
- Technical Designs

## 2. CI/CD
Set up Continuous Integration and - Deployment for your project. You don't need
to have 100% or even 60% code coverage necessarily, but consider carefully what
to do and answer the questions in your report.

- Set up Continuous Integration with
    - Automated Tests: Which tests should you have to most effectively ensure
      that your app is still working after a change? Which are the most important
      features, how can you test most effectively? (think UI Tests vs Unit test, see [The Practical Test Pyramid](https://martinfowler.com/articles/practical-test-pyramid.html))
    - Code Quality Assurance - find and test one code quality assurance tool
    - How does your deployment pipeline look like? which steps are automatic, which
      require manual interaction and if, which one?
      see [DeploymentPipeline](https://martinfowler.com/bliki/DeploymentPipeline.html).
- Set up Continuous Deployment to  HTW Server using Docker Containers.

## 3. Usability

1. Watch the demo video on Krug's Site to get an Idea how to conduct a usability test: [Usability Test Demo by Steve Krug - YouTube](https://www.youtube.com/watch?v=1UCDUOB_aS8)
2. Decide which site to test (your own or another).
   If you choose another site, (e.g. because your prototype is not in the stage to
   be subjected to a usability test just yet) choose one that supports
   the same or at least similar tasks that you want to support and
   be clear on the task(s) that you want to test / are interested in.
3. Document your decision in your report.
4. Using the [Material on Steve Krug's site - especially the test script -](https://www.sensible.com/download-files/)
   conduct and document one usability test per person in your team, with pairs of
   two per test: one conducts the test, one is the observer.
   You may do exchanges between the teams for finding test persons, but you may
   also choose to find other test persons.
5. Identify 2-3 important usability issues and suggest a way to fix them (e.g.
   Sketch and description of changes to interface)

### Resources for Usability Tests

- Usability Test Slides in Moodle
- [Downloads | Steve Krug](https://www.sensible.com/download-files/):
    - http://sensible.com/downloads/test-script-web.pdf
    - http://sensible.com/downloads/test-script-web.doc
    - http://sensible.com/downloads/test-script-mobile-11-20.pdf
    - http://sensible.com/downloads/test-script-mobile-11-20.doc
    - http://sensible.com/downloads/permission-form.pdf
    - http://sensible.com/downloads/permission-form.doc
    - http://sensible.com/downloads/checklists.pdf
    - http://sensible.com/downloads/checklists.doc
    - http://sensible.com/downloads/things-a-therapist-would-say.pdf
    - http://sensible.com/downloads/things-a-therapist-would-say.doc
    - http://sensible.com/downloads/instructions-for-observers.pdf
    - http://sensible.com/downloads/instructions-for-observers.doc
    - http://sensible.com/downloads/hall-monitor-guide.pdf
    - http://sensible.com/downloads/hall-monitor-guide.doc
    - http://ptgmedia.pearsoncmg.com/imprint_downloads/peachpit/peachpit/videosampleclips/krug/SteveKrug_UsabilityDemo.mov



## Infrastructure Parts (one for each group)

1. Server Setup and Administration
2. Hugo Setup and Administration
3. Overview Pages Webbook, Projects
4. Git Repos Organisation
5. Overview Page CI/CD Pipelines
