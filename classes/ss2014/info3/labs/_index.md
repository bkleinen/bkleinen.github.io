---
title: Info3/SS2013 - Labs and Exercises
author: kleinen
layout: page
---

## Exercises

* [Exercise 01 - Testing](lab-01)
* [Exercise 02 - Use Cases and Class Diagrams](lab-02)
* [Exercise 03 - GIT and State Machine Diagrams](lab-03)
* [Exercise 04 - Legacy Code - Refactoring to Patterns](lab-04)
* [Exercise 05 - Sequence Diagrams and Ruby Finger exercises](lab-05)
* [Exercise 06 - Rails First Steps](lab-06)
* [Exercise 07 - Rails Associations and Internationalization](lab-07)



In the Info3 lab, we will do quite different things:

 * Design a Software System with the UML
 * Practice Software Testing
 * Fix a weird piece of legacy software
 * Get our feet wet with Ruby and Ruby on Rails and marvel at the patterns we find in there

There will be 7 exercises. The exercises will either be written reports - lab reports - or the documents you produce in your design with UML, usually not the source code itself. I might, however, ask to turn it in as well.


1. You are required to work on the exercises and turn them in in pairs (2 people). Submissions are done in Moodle, **no late submissions** are allowed term. Always hand in what you have on time.

1. You are required to be able to present/explain your work **in the following lab** ("review"). How this is done will change from lab to lab, depending on the topic of the lab: one of you might be randomly chosen to present the work, I might talk to each of you individually, or it might even be a little quizz in moodle which should be easy to solve if you did the lab exercise.

1. Grading: there will be 7 Exercises alltogether. Grades are determined simply by counting how many reports you've submitted ***on time*** and how many reviews you've attended with an "ok".


| Submitted >= | Reviewed "OK" >= | Grade |  |  |  |
|:-------------|:-----------------|:------|:-|:-|:-|
| 7            | 6                | 1.0   |  |  |  |
| 6            | 6                | 1.3   |  |  |  |
| 6            | 5                | 2.0   |  |  |  |
| 5            | 5                | 2.3   |  |  |  |
| 5            | 4                | 2.7   |  |  |  |
| 4            | 4                | 3.0   |  |  |  |
| 4            | 3                | 3.3   |  |  |  |
| 4            | 2                | 3.7   |  |  |  |
| less         |                  | 5.0   |  |  |  |


### What is "OK"?

The aim of this is to encourage all of you to work on the exercises regularly. To earn an "ok" in the review, you have to show me that you understood the core concepts of the topic tackled in the assignment and solved the main challenges. It does not have to be a "perfect" solution.


### Lecture summaries
In the Moodle collaboration room you can find a section called "Lecture summaries". You are expected to write 5-10 complete sentences summarizing each lecture. It is due at 23.00 Thursday nights - to just have one due date for everything. You can, of course, hand them in earlier.
If I find plagiarisms of lecture summaries (especially from the Wikipedia), you will not get any credit for any lecture summary at all. Of the 28-30 lectures altogether, I expect you to write summaries for 24 of them to get the entire 10% - they are either done or not done, and not graded on content.
They can be in txt, pdf or markdown format.


[Last semesters, I found it necessary to clarify some more things about the reports.]({{ site.BaseURL }}/studies/grading/guideline)

### Using Ruby & Rails on the iMacs

edit/create a ~/.profile file

    PATH=/usr/local/ruby/bin:$PATH
    PATH=/usr/local/ruby/lib/ruby/gems/1.9.1/bin/:$PATH
    export PATH
    export GEM_HOME=/data/gems
    mkdir -p /data/gems

do have bundler store new gems in /data/gems.
