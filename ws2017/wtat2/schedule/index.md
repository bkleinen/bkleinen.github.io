---
title: WTAT2 Schedule
author: kleinen
layout: default
wide_layout: true
---
{% include ws2017/wtat2.md %}

{% comment %}

x = 13;d = Date.new(2017,10,5);(1..17).to_a.collect{|i|  a = i<x ? (7*(i-1)) : (7*i) ; dw = d+a; [dw.strftime("|#{i} | #{dw.cweek} | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}

{% endcomment %}



| Week | KW | Date            | Lecture Topic                             |       | Lab                                                 |
|:-----|:---|:----------------|:------------------------------------------|:------|:----------------------------------------------------|
| 1    | 40 | Thu, 2017-10-05 | Agile Web Development - Intro             |       | Time Box, Topics, Rails Installation                |
| 2    | 41 | Thu, 2017-10-12 | Rails Dash, Web Applications Overview     |       | Definition of Topics & Groups, Installation cont'ed |
| 4    | 43 | Thu, 2017-10-26 | Active Record Associations and Migrations |       | Topic 0: Rails and Active Record                    |
| 5    | 44 | Thu, 2017-11-02 | Authentication                            | Ch. 2 | Topic 0: Rails and Active Record                    |
| 6    | 45 | Thu, 2017-11-09 | Postgres Constrains                       | Ch. 3 | Topic 1: Authentication                             |
| 7    | 46 | Thu, 2017-11-16 | Postgres Indexes                          | Ch. 4 | Topic 1: Authentication                             |
| 8    | 47 | Thu, 2017-11-23 | Bootstrap for Search Results              | Ch. 5 | Topic 2: Search Functionality                       |
| 9    | 48 | Thu, 2017-11-30 | Angular                                   | Ch. 6 | Topic 2: Search Functionality                       |
| 10   | 49 | Thu, 2017-12-07 | Testing with RSpec                        | Ch. 7 | Topic 3: Dynamic UI & Testing                       |
| 11   | 50 | Thu, 2017-12-14 | Single-Page-App with Angular's Router     | Ch. 8 | Topic 3: Dynamic UI & Testing                       |
| 12   | 51 | Thu, 2017-12-21 | Bootstrap's Grid and Components           | Ch. 9 | Topic 4: Improving the UI                           |
| 13   | 1  | Thu, 2018-01-04 | Continuous Integration                    |       | Topic 4: Improving the UI                           |
| 14   | 2  | Thu, 2018-01-11 | Deployment                                |       | Topic 5: choose one yourself                        |
| 15   | 3  | Thu, 2018-01-18 | TBD                                       |       | Topic 5: choose one yourself                        |
| 16   | 4  | Thu, 2018-01-25 | Exam Period                               |       |                                                     |
| 17   | 5  | Thu, 2018-02-01 | Exam Period                               |       |                                                     |
