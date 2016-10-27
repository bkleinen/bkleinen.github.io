---
title: Example Project for Web Technology - Week 2
author: kleinen
layout: page
---

# Week 2 - Active Record Associations, Migrations and Views

* [Example Project on GitHub](https://github.com/media-programming-rails/example-app)


## 1. Pick a story that requires you to introduce at least one new Resource to your Project.

I pick:

- When the user clicks on a habit, it can be edited. A log of dates when the habit was performed is shown.

This requires the Log to be stored in a separte entity, one LogEntry for each time
the Habit has been completed, connected with a belongs_to has_many (1:n) association.

Also, I've realized that the first part of the story - the edit - has already been
realized, and that it would be useful to show the list of logs both on the Habit#show
page as well as the habit#edit action.

## 2. Update your sketch of the data model, if needed.

(will be shown in class)

## 3. Update your view sketches to integrate the new resource.

(will be shown in class)

## 4. Create the new resource.

    rails generate scaffold LogEntry habit:references date:date note:text

## 5. Declare the Association in the other Model class

Declaring 'habit' as type reference makes that the scaffold generator
adds a 'belongs_to :habit' to the LogEntry model. The other side has to be
taken care of:

    class Habit < ApplicationRecord
       has_many :log_entries
       # ....
    end

## 6. Adapt/Extend the migrations as needed.

The scaffold creates a migration to create the new table for LogEntries.
For many cases, that is sufficient so you can just check the migration and run
it.

As I've stored the logs in the Habits themselves, I need to migrate the actual data
as well, and make sure that the 'last' date from the Habit becomes an association to an
LogEntry. In a real project that would be necessary as soon as there is live data
on the production servers that needs to be perserved.

This is also a good time to generate some play data for the development database.
To do so, add some <modelClass>.creates to the file db/seeds.rb

Using them, I can test executing and rolling back the data migration in migration 030.

## 7. Adapt Model/Views/Controllers to new model

If you change the structure of the data as in the case of introducing LogEntry
to the Habits app, some things will break. In the example, Habit no longer has
a "last" field. As the example app uses it more than one time, I've introduced
an method last_log_date to the model (if it had been used at more places, using "last"
as method name would have been an option to make the change transparent to everything
outside the model)

     -        <td><%= habit.last %></td>
     +        <td><%= habit.last_log_date %></td>

### Note

In fact, looking at this change in the habits_controller.rb

-    @habit.last = Date.today
+    @habit.log_entries << LogEntry.create(date: Date.today)

I'd realized that it would indeed be cleaner to encapsulate
the change in the model. I decide to keep the new name 'last_log_date', though,
and add this method to habit.rb:

    def last_log_date= the_date
      log_entries << LogEntry.create(date: the_date)
    end

This introduces a setter in ruby. Using this, it's also easy to update seeds.rb

## 8. Implement some more

Depending on how much time you've left and that probably depends on how many
problems/hurdles you've encountered so far, pick a second and maybe a
third story to implement.

These storys should be implementable with the things you already know about
Active Record, CRUD, Rails Views and Migrations.

In the example, the second half of the story is still missing:

- A log of dates when the habit was performed is shown.
(which maybe should have been an extra story to begin with)
and the next story could be:

- a habit log is shown for each week.

(to bee continued)
