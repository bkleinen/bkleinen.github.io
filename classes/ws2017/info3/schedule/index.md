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

| Week | KW | Date                                              |                    | Lecture Topic                                                             | Lab                                                                               |  |
|:-----|:---|:--------------------------------------------------|:-------------------|:--------------------------------------------------------------------------|:----------------------------------------------------------------------------------|:-|
| 1    | 41 | Tue, 2017-10-10                                   | Intro              | Ruby Intro                                                                | [1 - Installation, Git and Ruby](../labs/lab-01-startup)                          |  |
|      |    | Wed, 2017-10-11                                   |                    | Source Code Management                                                    |                                                                                   |  |
| 2    | 42 | Tue, 2017-10-17                                   |                    | Intro to Info3                                                            | [1 - Installation, Git and Ruby](../labs/lab-01-startup)                          |  |
|      |    | Wed, 2017-10-18                                   |                    | More Ruby, Pair Programming and Code Review (and some more practical git) |                                                                                   |  |
| 3    | 43 | Tue, 2017-10-24                                   | Process            | System Modelling and Architectural Design                                 | [2 - Use Cases and Class Diagrams](../labs/lab-02-usecases-class)                 |  |
|      |    | Wed, 2017-10-25                                   |                    | Requirements Engineering                                                  |                                                                                   |  |
| 4    | 44 | Tue, 2017-10-31                                   |                    | ***Reformationstag***                                                     | (no lab)                                                                          |  |
|      |    | Wed, 2017-11-01                                   |                    | Software Engineering and Software Development Processes                   |                                                                                   |  |
| 5    | 45 | Tue, 2017-11-07                                   |                    | no lecture                                                                |                                                                                   |  |
|      |    | Wed, 2017-11-08                                   |                    | no lecture                                                                |                                                                                   |  |
| 6    | 46 | Tue, 2017-11-14                                   |                    | Software Design Patterns                                                  | [3 - Sequence Diagrams and State Machine Diagrams](../labs/lab-03-sequence-state) |  |
|      |    | Wed, 2017-11-15                                   |                    | Software Testing                                                          |                                                                                   |  |
| 7    | 47 | Wed, 2017-11-22                                   |                    | Agile Development, Agile Manifesto, Scrum                                 | [3 - Sequence Diagrams and State Machine Diagrams](../labs/lab-03-sequence-state) |  |
|      |    | <span class = "attention"> Fri, 2017-11-24</span> | Architecture       | Rails I                                                                   |                                                                                   |  |
| 8    | 48 | Tue, 2017-11-28                                   |                    | Application Architectures                                                 | [4 - Testing](../labs/lab-04-testing)                                             |  |
|      |    | Wed, 2017-11-29                                   |                    | Patterns of Enterprise Application Architecture (POEAA)                   |                                                                                   |  |
| 9    | 49 | Tue, 2017-12-05                                   |                    | Distributed Systems and SOA                                               | [4 - Testing](../labs/lab-04-testing)                                             |  |
|      |    | Wed, 2017-12-06                                   | Practices          | Refactoring                                                               |                                                                                   |  |
| 10   | 50 | Wed, 2017-12-13                                   |                    | Working with Legacy Code                                                  | [5 - Legacy Code - Refactoring to Patterns](../labs/lab-05-legacy)                |  |
|      |    | <span class = "attention"> Fri, 2017-12-15</span> |                    | Clean Code                                                                |                                                                                   |  |
| 11   | 51 | Tue, 2017-12-19                                   |                    | Clean Code                                                                | [5 - Legacy Code - Refactoring to Patterns](../labs/lab-05-legacy)                |  |
|      |    | Wed, 2017-12-20                                   |                    | SOLID Principles, Refactoring to Patterns                                 |                                                                                   |  |
| 12   | 1  | Tue, 2018-01-02                                   | Practical          | Rails II, Models and Preparation for the Rails Project                    | [6 - Rails First Steps](../labs/lab-06-rails-1)                                   |  |
|      |    | Wed, 2018-01-03                                   | Application        | Rails III, POEAA Revisited, Model View Controller                         |                                                                                   |  |
| 13   | 2  | Tue, 2018-01-09                                   | in Rails           | ORM and Associations in Rails                                             | [6 - Rails First Steps](../labs/lab-06-rails-1)                                   |  |
|      |    | Wed, 2018-01-10                                   |                    | Internationalization and Localization                                     |                                                                                   |  |
| 14   | 3  | Tue, 2018-01-16                                   | OO in Depth        | OO In Depth 1: Composition and Inheritance                                | [7 - Rails Associations and Internationalization](../labs/lab-07-rails-2)         |  |
|      |    | Wed, 2018-01-17                                   |                    | OO In Depth 2: Ruby Dynamic Typing, Duck Typing                           |                                                                                   |  |
| 15   | 4  | Tue, 2018-01-23                                   | Managing  Delivery | Dependency Management and Working with APIs                               | Trial Exam and Extra Quizz for those who missed one                               |  |
|      |    | Wed, 2018-01-24                                   |                    | Build Management, Continuous Integration & Deployment                     |                                                                                   |  |
| 16   | 5  | Tue, 2018-01-30                                   |                    | Exam                                                                      | Exam                                                                              |  |
|      |    | Wed, 2018-01-31                                   |                    | No Lecture (Prüfungszeit)                                                 |                                                                                   |  |
|      |    | Fri, 2018-02-02                                   |                    | Showtime !                                                                |                                                                                   |  |




{% comment %}

Continuous Integration
{% endcomment %}
