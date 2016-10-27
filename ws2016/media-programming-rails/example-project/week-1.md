---
title: Example Project for Web Technology - Week 1
author: kleinen
layout: page
---

# Week 1 - First Steps in Rails

* [Example Project on GitHub](https://github.com/media-programming-rails/example-app)

##  1. Write down your project vision.

 Example Project: Habits -
An application that supports their user building habits. They can enter habits
they want to build, together with a frequency how often they want to do this
new habit. The App then supports user in keeping track of their performance as
well as reminding them whan it's time for the habit.

## 2. Product Backlog
Write down your product backlog. Roughly prioritize it for business value. Don't hesitate to write down as many stories as you want, you don't have to implement them all.
Here's the backlog of the project "Habits:"

- The user sees a list of habits that should be done on the day as the first page.
- A user kann log an habit as completed on that day by simply clicking on a button in the habit list.
- New habits can be entered including name, frequency and a description.
- When the user clicks on a habit, it can be edited. A log of dates when the habit was performed is shown.
- a habit log is shown for each week.

## 3. Pick a user story that you can implement with simple CRUD operations.
- New habits can be entered including name, frequency and a description.

## 4. Draw a scribble for the screens involved.
See lecture

## 5. Draw a first sketch of the data model that is suffient for this story.
See lecture

## 6. Create a new rails application., 7. Generate your first model/view/controller using `rails generate scaffold`
see the README in https://github.com/media-programming-rails/example-app - have a look at the commits!

## 8. Have a look at the generated html templates (find them in app/views). Change and document one thing that makes sense within your application.
By default, a last done date is set by the tempate. Simply removed it from the template.

## 9. Next, pick a user story that requires to add a little bit of functionality to your app.
Story:
- A user kann log an habit as completed on that day by simply clicking on a button in the habit list.

## 10. Implement it by at least creating a new controller action and route by hand.
See according commit.
