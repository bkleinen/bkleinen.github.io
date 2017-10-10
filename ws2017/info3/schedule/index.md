---
title: Info3 Schedule (tentative)
author: kleinen
layout: default
wide_layout: true
---

{% comment %}


x = 12;day_diff=1;d = Date.new(2017,10,10);(1..16).to_a.collect{|i|  a = i<x ? (7*(i-1)) : (7*i) ; dw = d+a; [dw.strftime("|#{i} | #{dw.cweek} | %a, %Y-%m-%d |"),(dw+day_diff).strftime("|   |    | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}


{% endcomment %}


| Week | KW | Date            | Lecture Topic                                           | Lab                                                                               |
|:-----|:---|:----------------|:--------------------------------------------------------|:----------------------------------------------------------------------------------|
| 1    | 41 | Tue, 2017-10-10 | Ruby Intro                                              | [1 - Installation, Git and Ruby](../labs/lab-01-startup)                          |
|      |    | Wed, 2017-10-11 | Source Code Management                                  |                                                                                   |
| 2    | 42 | Tue, 2017-10-17 | Intro to Info3                                          | [1 - Installation, Git and Ruby](../labs/lab-01-startup)                          |
|      |    | Wed, 2017-10-18 | More Ruby, Pair Programming and Code Review             |                                                                                   |
| 3    | 43 | Tue, 2017-10-24 | Practical Git                                           | [2 - Use Cases and Class Diagrams](../labs/lab-02-usecases-class)                 |
|      |    | Wed, 2017-10-25 | Software Engineering and Software Development Processes |                                                                                   |
| 4    | 44 | Tue, 2017-10-31 | ***Reformationstag***                                   |                                                                                   |
|      |    | Wed, 2017-11-01 | Agile Development, Agile Manifesto, Scrum               |                                                                                   |
| 5    | 45 | Tue, 2017-11-07 | Requirements Engineering                                | [2 - Use Cases and Class Diagrams](../labs/lab-02-usecases-class)                 |
|      |    | Wed, 2017-11-08 | System Modelling and Architectural Design               |                                                                                   |
| 6    | 46 | Tue, 2017-11-14 | Software Design Patterns                                | [3 - Sequence Diagrams and State Machine Diagrams](../labs/lab-03-sequence-state) |
|      |    | Wed, 2017-11-15 | Refactoring                                             |                                                                                   |
| 7    | 47 | Tue, 2017-11-21 | Rails I                                                 | [3 - Sequence Diagrams and State Machine Diagrams](../labs/lab-03-sequence-state) |
|      |    | Wed, 2017-11-22 | Application Architectures                               |                                                                                   |
| 8    | 48 | Tue, 2017-11-28 | Patterns of Enterprise Application Architecture (POEAA) | [4 - Testing](../labs/lab-04-testing)                                             |
|      |    | Wed, 2017-11-29 | Distributed Systems and SOA                             |                                                                                   |
| 9    | 49 | Tue, 2017-12-05 | Software Testing                                        | [4 - Testing](../labs/lab-04-testing)                                             |
|      |    | Wed, 2017-12-06 | Working with Legacy Code                                |                                                                                   |
| 10   | 50 | Tue, 2017-12-12 | Clean Code                                              | [5 - Legacy Code - Refactoring to Patterns](../labs/lab-05-legacy)                |
|      |    | Wed, 2017-12-13 | Clean Code                                              |                                                                                   |
| 11   | 51 | Tue, 2017-12-19 | SOLID Principles, Refactoring to Patterns               | [5 - Legacy Code - Refactoring to Patterns](../labs/lab-05-legacy)                |
|      |    | Wed, 2017-12-20 | OO In Depth 1: Composition and Inheritance              |                                                                                   |
| 12   | 1  | Tue, 2018-01-02 | OO In Depth 2: Ruby Dynamic Typing, Duck Typing         | [6 - Rails First Steps](../labs/lab-06-rails-1)                                   |
|      |    | Wed, 2018-01-03 | Rails II, Models and Preparation for the Rails Project  |                                                                                   |
| 13   | 2  | Tue, 2018-01-09 | Rails III, POEAA Revisited, Model View Controller       | [6 - Rails First Steps](../labs/lab-06-rails-1)                                   |
|      |    | Wed, 2018-01-10 | ORM and Associations in Rails                           |                                                                                   |
| 14   | 3  | Tue, 2018-01-16 | Internationalization and Localization                   | [7 - Rails Associations and Internationalization](../labs/lab-07-rails-2)         |
|      |    | Wed, 2018-01-17 | Dependency Management and Working with APIs             |                                                                                   |
| 15   | 4  | Tue, 2018-01-23 | Build Management, Continuous Deployment                 | Trial Exam                                                                        |
|      |    | Wed, 2018-01-24 | No Lecture (Prüfungszeit)                               |                                                                                   |
| 16   | 5  | Tue, 2018-01-30 | Exam                                                    | Exam                                                                              |
|      |    | Wed, 2018-01-31 | No Lecture (Prüfungszeit)                               |                                                                                   |
|      |    | Fri, 2018-02-02 | Showtime !                                              |                                                                                   |


{% comment %}
Continuous Integration 
{% endcomment %}
