---
title:  A1: Rails, ActiveRecord and Associations
author: kleinen
layout: default
---
{% include ws2017/wtat2.md %}

## Assignment 1 Example: IMI-Calendar

This is an example for [Assignment 1](../a1-activerecord/)

### Create a project description and backlog

Currently, there is no channel to promote events offered for a range of IMI-Students across several classes.
The Web-Application should provide a simple interface for creating and promoting events. Events should be shown
on a web site. In addition to that, it should be possible to subscribe to events via calendar applications or
as an atom feed.

#### Backlog - first draft

* As the Studiengangssprecher, I want to announce events relevant for IMI-Students.
* As an IMI-Student, I get an overview of events coming up within the next week.
* AS an IMI-Student, I can see events that will be important for me, e.g. the Projektvergabe, or the Showtime, well ahead.
* As the Studiengangssprecher, I can also keep an overview of the planning status (date set, room booked, announced etc) for each listed event.
* As a Student, I can filter events that are relevant for me (B/M, Semester).
* I can see the IMI-Calendar in my favourite Calendar Application.

### Number your Stories and Prioritize the Backlog.


| Nr   | Story                                                                                                                                         | Assignment | Sprint |
|:-----|:----------------------------------------------------------------------------------------------------------------------------------------------|:-----------|:-------|
| S003 | As an IMI-Student, I can see events that will be important for me, e.g. the Projektvergabe, or the Showtime, well ahead.                      |            |        |
| S001 | As the Studiengangssprecher, I want to announce events relevant for IMI-Students.                                                             |            |        |
| S002 | As an IMI-Student, I get an overview of events coming up within the next week.                                                                |            |        |
| S004 | As the Studiengangssprecher, I can also keep an overview of the planning status (date set, room booked, announced etc) for each listed event. |            |        |
| S005 | As a Student, I can filter events that are relevant for me (B/M, Semester).                                                                   |            |        |
| S006 | I can see the IMI-Calendar in my favourite Calendar Application.                                                                              |            |        |




### Find and define 2 or 3 model classes for your project. Identify stories which you can implement with CRUD operations on these resources.

For the calendar, the central resource clearly is an `Event`. For the second resource, I decide to implement the stories around event planning first. Thus, the second resource to implement will be `PlanningState`. With the search in mind, I also sketch out `Relevance`:


| Event         |  | PlanningState |  | Relevance                    |
|:--------------|:-|:--------------|:-|:-----------------------------|
| - title       |  | - date_set    |  | - bachelor: boolean          |
| - start date  |  | - room_booked |  | - master: boolean            |
| - end date    |  | - announced   |  | -semester                    |
| - location    |  | - notes       |  | -students without Internship |
| - description |  |               |  |                              |



| Nr   | Story                                                                                                                                         | Assignment | Sprint   |
|:-----|:----------------------------------------------------------------------------------------------------------------------------------------------|:-----------|:---------|
| S003 | As an IMI-Student, I can see events that will be important for me, e.g. the Projektvergabe, or the Showtime, well ahead.                      | A1         | Sprint_1 |
| S001 | As the Studiengangssprecher, I want to announce events relevant for IMI-Students.                                                             | A1         | Sprint_1 |
| S004 | As the Studiengangssprecher, I can also keep an overview of the planning status (date set, room booked, announced etc) for each listed event. | A1         | Sprint_1 |
| S002 | As an IMI-Student, I get an overview of events coming up within the next week.                                                                |            |          |
| S005 | As a Student, I can filter events that are relevant for me (B/M, Semester).                                                                   |            |          |
| S006 | I can see the IMI-Calendar in my favourite Calendar Application.                                                                              |            |          |

### Implementation.
