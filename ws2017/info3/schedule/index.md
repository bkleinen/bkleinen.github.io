---
title: Info3 Schedule (tentative)
author: kleinen
layout: default
wide_layout: true
---

{% comment %}


x = 12;day_diff=1;d = Date.new(2017,10,10);(1..16).to_a.collect{|i|  a = i<x ? (7*(i-1)) : (7*i) ; dw = d+a; [dw.strftime("|#{i} | #{dw.cweek} | %a, %Y-%m-%d |"),(dw+day_diff).strftime("|   |    | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}


{% endcomment %}


| Week | KW | Date              |                    | Lecture Topic                                                             | Lab                                                                               |  |
|:-----|:---|:------------------|:-------------------|:--------------------------------------------------------------------------|:----------------------------------------------------------------------------------|:-|
| 1    | 41 | Tue, 2017-10-10   | Intro              | Ruby Intro                                                                | [1 - Installation, Git and Ruby](../labs/lab-01-startup)                          |  |
|      |    | Wed, 2017-10-11   |                    | Source Code Management                                                    |                                                                                   |  |
| 2    | 42 | Tue, 2017-10-17   |                    | Intro to Info3                                                            | [1 - Installation, Git and Ruby](../labs/lab-01-startup)                          |  |
|      |    | Wed, 2017-10-18   |                    | More Ruby, Pair Programming and Code Review (and some more practical git) |                                                                                   |  |
| 3    | 43 | Tue, 2017-10-24   | Process            | Software Engineering and Software Development Processes                   | [2 - Use Cases and Class Diagrams](../labs/lab-02-usecases-class)                 |  |
|      |    | Wed, 2017-10-25   |                    | Requirements Engineering                                                  |                                                                                   |  |
| 4    | 44 | Tue, 2017-10-31   |                    | ***Reformationstag***                                                     |                                                                                   |  |
|      |    | Wed, 2017-11-01   |                    | System Modelling and Architectural Design                                 |                                                                                   |  |
| 5    | 45 | Tue, 2017-11-07   |                    | Software Design Patterns                                                  | [2 - Use Cases and Class Diagrams](../labs/lab-02-usecases-class)                 |  |
|      |    | Wed, 2017-11-08   |                    | Software Testing                                                          |                                                                                   |  |
| 6    | 46 | Tue, 2017-11-14   |                    | Agile Development, Agile Manifesto, Scrum                                 | [3 - Sequence Diagrams and State Machine Diagrams](../labs/lab-03-sequence-state) |  |
|      |    | Wed, 2017-11-15   | Architecture       | Rails I                                                                   |                                                                                   |  |
| 7    | 47 | * Tue, 2017-11-21 |                    | Application Architectures                                                 | [3 - Sequence Diagrams and State Machine Diagrams](../labs/lab-03-sequence-state) |  |
|      |    | Wed, 2017-11-22   |                    | Patterns of Enterprise Application Architecture (POEAA)                   |                                                                                   |  |
| 8    | 48 | Tue, 2017-11-28   |                    | Distributed Systems and SOA                                               | [4 - Testing](../labs/lab-04-testing)                                             |  |
|      |    | Wed, 2017-11-29   | Practices          | Refactoring                                                               |                                                                                   |  |
| 9    | 49 | Tue, 2017-12-05   |                    | Working with Legacy Code                                                  | [4 - Testing](../labs/lab-04-testing)                                             |  |
|      |    | Wed, 2017-12-06   |                    | Clean Code                                                                |                                                                                   |  |
| 10   | 50 | * Tue, 2017-12-12 |                    | Clean Code                                                                | [5 - Legacy Code - Refactoring to Patterns](../labs/lab-05-legacy)                |  |
|      |    | Wed, 2017-12-13   |                    | SOLID Principles, Refactoring to Patterns                                 |                                                                                   |  |
| 11   | 51 | Tue, 2017-12-19   | Practical          | Rails II, Models and Preparation for the Rails Project                    | [5 - Legacy Code - Refactoring to Patterns](../labs/lab-05-legacy)                |  |
|      |    | Wed, 2017-12-20   | Application        | Rails III, POEAA Revisited, Model View Controller                         |                                                                                   |  |
| 12   | 1  | Tue, 2018-01-02   | in Rails           | ORM and Associations in Rails                                             | [6 - Rails First Steps](../labs/lab-06-rails-1)                                   |  |
|      |    | Wed, 2018-01-03   |                    | Internationalization and Localization                                     |                                                                                   |  |
| 13   | 2  | Tue, 2018-01-09   | OO in Depth        | OO In Depth 1: Composition and Inheritance                                | [6 - Rails First Steps](../labs/lab-06-rails-1)                                   |  |
|      |    | Wed, 2018-01-10   |                    | OO In Depth 2: Ruby Dynamic Typing, Duck Typing                           |                                                                                   |  |
| 14   | 3  | Tue, 2018-01-16   | Managing  Delivery | Dependency Management and Working with APIs                               | [7 - Rails Associations and Internationalization](../labs/lab-07-rails-2)         |  |
|      |    | Wed, 2018-01-17   |                    | Build Management, Continuous Integration & Deployment                     |                                                                                   |  |
| 15   | 4  | Tue, 2018-01-23   |                    | TBD                                                                       | Trial Exam                                                                        |  |
|      |    | Wed, 2018-01-24   |                    | No Lecture (Prüfungszeit)                                                 |                                                                                   |  |
| 16   | 5  | Tue, 2018-01-30   |                    | Exam                                                                      | Exam                                                                              |  |
|      |    | Wed, 2018-01-31   |                    | No Lecture (Prüfungszeit)                                                 |                                                                                   |  |
|      |    | Fri, 2018-02-02   |                    | Showtime !                                                                |                                                                                   |  |




{% comment %}
Continuous Integration
{% endcomment %}
