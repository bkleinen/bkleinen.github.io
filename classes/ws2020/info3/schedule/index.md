---
title: Info3 Schedule (tentative)
author: kleinen
layout: default
wide_layout: true
---

{% comment %}


x = 12;day_diff=1;d = Date.new(2017,10,10);(1..16).to_a.collect{|i|  a = i<x ? (7*(i-1)) : (7*i) ; dw = d+a; [dw.strftime("|#{i} | #{dw.cweek} | %a, %Y-%m-%d |"),(dw+day_diff).strftime("|   |    | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}


{% endcomment %}

<br/>










































| Week | KW | Date           |  |                |                    | Lecture Topic                                                                | Lab                                                                               |  |
|:-----|:---|:---------------|:-|:---------------|:-------------------|:-----------------------------------------------------------------------------|:----------------------------------------------------------------------------------|:-|
| 0    | 40 | Fri 02/10/2020 |  |                |                    | Introduction to JavaScript                                                   |                                                                                   |  |
| 1    | 41 | Wed 07/10/2020 |  |                | Intro              | Introduction to JavaScript                                                   | [1 - Installation, Git and Ruby](../labs/lab-01-startup)                          |  |
|      |    | Fri 09/10/2020 |  | Präsenz        |                    | Source Code Management                                                       |                                                                                   |  |
| 2    | 42 | Wed 14/10/2020 |  |                |                    | Intro to Info3                                                               | [1 - Installation, Git and Ruby](../labs/lab-01-startup)                          |  |
|      |    | Fri 16/10/2020 |  | Präsenz        |                    | More Ruby, Pair Programming and Code Review (and some more practical git)    |                                                                                   |  |
| 3    | 43 | Wed 21/10/2020 |  |                | Process            | System Modelling and Architectural Design I                                  | [2 - Use Cases and Class Diagrams](../labs/lab-02-usecases-class)                 |  |
|      |    | Fri 23/10/2020 |  |                |                    | System Modelling and Architectural Design II                                 |                                                                                   |  |
| 4    | 44 | Wed 28/10/2020 |  |                |                    | ***Reformationstag***                                                        | (no lab)                                                                          |  |
|      |    | Fri 30/10/2020 |  |                |                    | Requirements Engineering                                                     |                                                                                   |  |
| 5    | 45 | Wed 04/11/2020 |  |                |                    | no lecture                                                                   |                                                                                   |  |
|      |    | Fri 06/11/2020 |  |                |                    | no lecture                                                                   |                                                                                   |  |
| 6    | 46 | Wed 11/11/2020 |  |                |                    | Software Engineering and Software Development Processes                      | [3 - Sequence Diagrams and State Machine Diagrams](../labs/lab-03-sequence-state) |  |
|      |    | Fri 13/11/2020 |  | Präsenz        |                    | Software Design Patterns                                                     |                                                                                   |  |
| 7    | 47 | Wed 18/11/2020 |  |                |                    | Software Testing                                                             | [3 - Sequence Diagrams and State Machine Diagrams](../labs/lab-03-sequence-state) |  |
|      |    | Fri 20/11/2020 |  |                | Architecture       | Agile Development, Agile Manifesto, Scrum                                    |                                                                                   |  |
| 8    | 48 | Wed 25/11/2020 |  |                |                    | Application Architectures                                                    | [4 - Testing](../labs/lab-04-testing)                                             |  |
|      |    | Fri 27/11/2020 |  |                |                    | Rails I                                                                      |                                                                                   |  |
| 9    | 49 | Wed 02/12/2020 |  |                |                    | Patterns of Enterprise Application Architecture (POEAA)                      | [4 - Testing](../labs/lab-04-testing)                                             |  |
|      |    | Fri 04/12/2020 |  |                | Practices          | Refactoring, Working with Legacy Code                                        |                                                                                   |  |
| 10   | 50 | Wed 09/12/2020 |  |                |                    | SOLID Principles, Refactoring to Patterns                                    | [5 - Legacy Code - Refactoring to Patterns](../labs/lab-05-legacy)                |  |
|      |    | Fri 11/12/2020 |  | Präsenz        |                    | Software Processes                                                           |                                                                                   |  |
| 11   | 51 | Wed 16/12/2020 |  |                |                    | Clean Code (Doppelstunde)                                                    | [5 - Legacy Code - Refactoring to Patterns](../labs/lab-05-legacy)                |  |
|      |    | Fri 18/12/2020 |  |                |                    | Rails II, Models and Preparation for the Rails Project                       |                                                                                   |  |
|      | 52 | Wed 23/12/2020 |  | Vorlesungsfrei | Practical          | Rails III, POEAA Revisited, Model View Controller                            | [6 - Rails First Steps](../labs/lab-06-rails-1)                                   |  |
|      |    | Fri 25/12/2020 |  | Vorlesungsfrei | Application        | ORM and Associations in Rails                                                |                                                                                   |  |
|      | 53 | Wed 30/12/2020 |  | Vorlesungsfrei | in Rails           | Internationalization and Localization                                        | [6 - Rails First Steps](../labs/lab-06-rails-1)                                   |  |
|      |    | Fri 01/01/2021 |  | Vorlesungsfrei |                    | OO In Depth 1: Composition and Inheritance                                   |                                                                                   |  |
| 12   | 1  | Wed 06/01/2021 |  |                | OO in Depth        | OO In Depth 2: Ruby Dynamic Typing, Duck Typing                              | [7 - Rails Associations and Internationalization](../labs/lab-07-rails-2)         |  |
|      |    | Fri 08/01/2021 |  |                |                    | Dependency Management, Build Management, Continuous Integration & Deployment |                                                                                   |  |
| 13   | 2  | Wed 13/01/2021 |  |                | Managing  Delivery | Software Engineering and Software Development Processes  revisited           | Trial Exam and Extra Quizz for those who missed one                               |  |
|      |    | Fri 15/01/2021 |  |                |                    | Exam Preparation                                                             |                                                                                   |  |
| 14   | 3  | Wed 20/01/2021 |  |                |                    | Exam                                                                         | Exam                                                                              |  |
|      |    | Fri 22/01/2021 |  |                |                    | No Lecture (Prüfungszeit)                                                    |                                                                                   |  |
| 15   | 4  | Wed 27/01/2021 |  |                |                    | Showtime !                                                                   |                                                                                   |  |
|      |    | Fri 29/01/2021 |  |                |                    |                                                                              |                                                                                   |  |
| 16   | 5  | Wed 03/02/2021 |  |                |                    |                                                                              |                                                                                   |  |
|      |    | Fri 05/02/2021 |  |                |                    |                                                                              |                                                                                   |  |
| 17   | 6  | Wed 10/02/2021 |  |                |                    |                                                                              |                                                                                   |  |
|      |    | Fri 12/02/2021 |  |                |                    |                                                                              |                                                                                   |  |
| 18   | 7  | Wed 17/02/2021 |  |                |                    |                                                                              |                                                                                   |  |
|      |    | Fri 19/02/2021 |  |                |                    |                                                                              |                                                                                   |  |
| 19   | 8  | Wed 24/02/2021 |  |                |                    |                                                                              |                                                                                   |  |
|      |    | Fri 26/02/2021 |  |                |                    |                                                                              |                                                                                   |  |






{% comment %}
Distributed Systems and SOA
Continuous Integration
{% endcomment %}
--- alter plan --
| Week | KW | Date                                              |                    | Lecture Topic                                                                | Lab                                                                               |  |
|:-----|:---|:--------------------------------------------------|:-------------------|:-----------------------------------------------------------------------------|:----------------------------------------------------------------------------------|:-|
| 1    | 41 | Tue, 2017-10-10                                   | Intro              | Ruby Intro                                                                   | [1 - Installation, Git and Ruby](../labs/lab-01-startup)                          |  |
|      |    | Wed, 2017-10-11                                   |                    | Source Code Management                                                       |                                                                                   |  |
| 2    | 42 | Tue, 2017-10-17                                   |                    | Intro to Info3                                                               | [1 - Installation, Git and Ruby](../labs/lab-01-startup)                          |  |
|      |    | Wed, 2017-10-18                                   |                    | More Ruby, Pair Programming and Code Review (and some more practical git)    |                                                                                   |  |
| 3    | 43 | Tue, 2017-10-24                                   | Process            | System Modelling and Architectural Design I                                  | [2 - Use Cases and Class Diagrams](../labs/lab-02-usecases-class)                 |  |
|      |    | Wed, 2017-10-25                                   |                    | System Modelling and Architectural Design II                                 |                                                                                   |  |
| 4    | 44 | Tue, 2017-10-31                                   |                    | ***Reformationstag***                                                        | (no lab)                                                                          |  |
|      |    | Wed, 2017-11-01                                   |                    | Requirements Engineering                                                     |                                                                                   |  |
| 5    | 45 | Tue, 2017-11-07                                   |                    | no lecture                                                                   |                                                                                   |  |
|      |    | Wed, 2017-11-08                                   |                    | no lecture                                                                   |                                                                                   |  |
| 6    | 46 | Tue, 2017-11-14                                   |                    | Software Engineering and Software Development Processes                      | [3 - Sequence Diagrams and State Machine Diagrams](../labs/lab-03-sequence-state) |  |
|      |    | Wed, 2017-11-15                                   |                    | Software Design Patterns                                                     |                                                                                   |  |
| 7    | 47 | Wed, 2017-11-22                                   |                    | Software Testing                                                             | [3 - Sequence Diagrams and State Machine Diagrams](../labs/lab-03-sequence-state) |  |
|      |    | <span class = "attention"> Fri, 2017-11-24</span> | Architecture       | Agile Development, Agile Manifesto, Scrum                                    |                                                                                   |  |
| 8    | 48 | Tue, 2017-11-28                                   |                    | Application Architectures                                                    | [4 - Testing](../labs/lab-04-testing)                                             |  |
|      |    | Wed, 2017-11-29                                   |                    | Rails I                                                                      |                                                                                   |  |
| 9    | 49 | Tue, 2017-12-05                                   |                    | Patterns of Enterprise Application Architecture (POEAA)                      | [4 - Testing](../labs/lab-04-testing)                                             |  |
|      |    | Wed, 2017-12-06                                   | Practices          | Refactoring, Working with Legacy Code                                        |                                                                                   |  |
| 10   | 50 | Wed, 2017-12-13                                   |                    | SOLID Principles, Refactoring to Patterns                                    | [5 - Legacy Code - Refactoring to Patterns](../labs/lab-05-legacy)                |  |
|      |    | <span class = "attention"> Fri, 2017-12-15</span> |                    | Software Processes                                                           |                                                                                   |  |
| 11   | 51 | Tue, 2017-12-19                                   |                    | Clean Code (Doppelstunde)                                                    | [5 - Legacy Code - Refactoring to Patterns](../labs/lab-05-legacy)                |  |
|      |    | Wed, 2017-12-20                                   |                    | Rails II, Models and Preparation for the Rails Project                       |                                                                                   |  |
| 12   | 1  | Tue, 2018-01-02                                   | Practical          | Rails III, POEAA Revisited, Model View Controller                            | [6 - Rails First Steps](../labs/lab-06-rails-1)                                   |  |
|      |    | Wed, 2018-01-03                                   | Application        | ORM and Associations in Rails                                                |                                                                                   |  |
| 13   | 2  | Tue, 2018-01-09                                   | in Rails           | Internationalization and Localization                                        | [6 - Rails First Steps](../labs/lab-06-rails-1)                                   |  |
|      |    | Wed, 2018-01-10                                   |                    | OO In Depth 1: Composition and Inheritance                                   |                                                                                   |  |
| 14   | 3  | Tue, 2018-01-16                                   | OO in Depth        | OO In Depth 2: Ruby Dynamic Typing, Duck Typing                              | [7 - Rails Associations and Internationalization](../labs/lab-07-rails-2)         |  |
|      |    | Wed, 2018-01-17                                   |                    | Dependency Management, Build Management, Continuous Integration & Deployment |                                                                                   |  |
| 15   | 4  | Tue, 2018-01-23                                   | Managing  Delivery | Software Engineering and Software Development Processes  revisited           | Trial Exam and Extra Quizz for those who missed one                               |  |
|      |    | Wed, 2018-01-24                                   |                    | Exam Preparation                                                             |                                                                                   |  |
| 16   | 5  | Tue, 2018-01-30                                   |                    | Exam                                                                         | Exam                                                                              |  |
|      |    | Wed, 2018-01-31                                   |                    | No Lecture (Prüfungszeit)                                                    |                                                                                   |  |
|      |    | Fri, 2018-02-02                                   |                    | Showtime !                                                                   |                                                                                   |  |
