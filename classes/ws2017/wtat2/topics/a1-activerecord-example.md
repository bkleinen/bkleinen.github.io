---
title:  A1 -  Rails, ActiveRecord and Associations
author: kleinen
layout: default
---


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

For the calendar, the central resource clearly is an `Event`. For the second resource, I decide to implement the stories around event planning first. Thus, the second resource to implement will be `PlanningState`. There is a 1:n association between Event and PlanningState: Each Event has_a PlanningState
and each PlanningState belongs_to an Event.


![Model](./../images/simple-model.jpg)
<br>
<small >Very Simple First Domain Model</small>






| Nr   | Story                                                                                                                                         | Assignment | Sprint   |
|:-----|:----------------------------------------------------------------------------------------------------------------------------------------------|:-----------|:---------|
| S003 | As an IMI-Student, I can see events that will be important for me, e.g. the Projektvergabe, or the Showtime, well ahead.                      | A1         | Sprint_1 |
| S001 | As the Studiengangssprecher, I want to announce events relevant for IMI-Students.                                                             | A1         | Sprint_1 |
| S004 | As the Studiengangssprecher, I can also keep an overview of the planning status (date set, room booked, announced etc) for each listed event. | A1         | Sprint_1 |
| S002 | As an IMI-Student, I get an overview of events coming up within the next week.                                                                |            |          |
| S005 | As a Student, I can filter events that are relevant for me (B/M, Semester).                                                                   |            |          |
| S006 | I can see the IMI-Calendar in my favourite Calendar Application.                                                                              |            |          |

### Sketch / Paper Prototype

This is a minimal example of how your screen sketches or simple paper prototype might look like.
Again, don't hesitate to design more than you are able to implement right now.

#### S003: As an IMI-Student, I can see events that will be important for me, e.g. the Projektvergabe, or the Showtime, well ahead.

![Event-Index](./../images/event-index-students.jpg)
<small class = "float-right">Event overview for students</small>

#### S001: As the Studiengangssprecher, I want to announce events relevant for IMI-Students.

![Event-Edit](./../images/event-edit-sgs.jpg)
<small class = "float-right">Event creation (SGS)</small>

The detailed view for an event for the SGS will be similar to the edit view.
The detailed view of an event for students still needs to be detailed.

#### S004: As the Studiengangssprecher, I can also keep an overview of the planning status (date set, room booked, announced etc) for each listed event.

![Event-Index-SGS](./../images/event-index-sgs.jpg)
<small class = "float-right">Event overview for students</small>

### Implementation.

The backend for S003, S001 and S004 have already implemented with the rails dash shown in last week's class. See
[https://github.com/htw-imi-wtat2/IMICalendar/commits/A1-Dash](https://github.com/htw-imi-wtat2/IMICalendar/commits/A1-Dash ) and the individual commits for details: [https://github.com/htw-imi-wtat2/IMICalendar/commits/master](https://github.com/htw-imi-wtat2/IMICalendar/commits/master)

#### S003: As an IMI-Student, I can see events that will be important for me, e.g. the Projektvergabe, or the Showtime, well ahead.

Don't get into the fine-tuning of the apperance yet, as we will do that later on with bootstrap.
I couldn't resist to put a little bit of color into it, though.
During the adaption of the view I realized that I would need some elements for S004 later on,
thus I "commented them out" using `if false`.

See commit [S003: adapted event index for students](https://github.com/htw-imi-wtat2/IMICalendar/commit/7fe58e390883f5f7024ad19452f1acae6f006f75)

#### S001: As the Studiengangssprecher, I want to announce events relevant for IMI-Students.

The paper sketch reveals that when an event is created, the corresponding planning state should also be created. The Values should be shown and editable on the event page.

Thus, the form on the new event page needs to send both attributes for the new event as for the new
planning_state. This is documented in [https://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html](https://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html) and
[https://apidock.com/rails/ActionView/Helpers/FormHelper/fields_for](https://apidock.com/rails/ActionView/Helpers/FormHelper/fields_for).

See commit [S001: planning state can be edited and is shown on the event page](https://github.com/htw-imi-wtat2/IMICalendar/commit/003f62fb43a8794f7b4c4baf17970a800ce26308)

#### S004: As the Studiengangssprecher, I can also keep an overview of the planning status (date set, room booked, announced etc) for each listed event.

The Sketches for this story and S003 imply that the roles of 'Student' and 'SGS' will need different views for the Event list (event#index). As we don't have authentication yet,
I simply introduced a toggle to switch between these views. The toggle can later be replaced to work depending of the role of the logged in user.

See commit [S004: Overview of Planning Statuses in event index for SGS](https://github.com/htw-imi-wtat2/IMICalendar/commit/8cc4db93e70ba70c0e4c42ce6eb250088b87de8d)


## Roundup and Report

Write a report that may be a bit more detailed than mine. Also, write about
problems you've encountered. What worked, what didn't work?
Please label each commit with the story it belongs to.
<span class = "attention">Also, tag the final version of this sprint with A1-Complete</span>
You submit your report to moodle as pdf and include the url of your git repository in your report.
