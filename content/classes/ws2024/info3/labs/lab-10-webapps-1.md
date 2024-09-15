---
title: '10 - Web Applications 1'
author: kleinen
draft: true
weight: 100
---

## Prelab

**P1.**  Make sure the [scaffold app](https://github.com/htw-imi-info3/django_lab_scaffold/) is installed and running on your machine. Refer to the [README.md](https://github.com/htw-imi-info3/django_lab_scaffold/blob/main/README.md) for instructions. [https://github.com/htw-imi-info3/django_lab_scaffold/](https://github.com/htw-imi-info3/django_lab_scaffold/)

**P2.**  Startup the app, and create some testdata, using both the studybuddy_app app and the admin app.

**P3.**  Have a look at the sourcecode, especially the studybuddy_app part and the Meetup model. Can you make sense of the source code? Take notes of things that are unclear and questions.

**P4.**  How does rsvp (participate in meetup) work?

**P5.**  Create a fork on github for your team, set the appropriate access rights for your team

## Assignment

### Part 1: Improve Meetup List

The Meetup Index View ([http://127.0.0.1:8000/studybuddy/meetups](http://127.0.0.1:8000/studybuddy/meetups)) contains a very rudimentary Meetup List.
- Add the Start Time and number of current Participants to the Table. Hint: you get the full list of participants - which is a
many to many associations - like this in the template:

```python
meetup.participants.all
```

- use the length and date template filters to format the date and get the length of participants - see the [template doc](https://docs.djangoproject.com/en/4.2/topics/templates/#filters) and the [filter reference](https://docs.djangoproject.com/en/4.2/ref/templates/builtins/#ref-templates-builtins-filters). For example:

```python
{{ meetup.start_time | date:'d.m.Y H:m' }}
```


### Part 2: Cancel Participation

Currently, users can only participate in a Meetup, but not remove themselves from the participants list. 

Make the "Participate" link in the meetup detail page dependend on wether the current user is already in the participants list.
(Hint: you can access the logged in user with `user` )

Then, add the feature to cancel meetup participation. You can either do this top-down (in the order given) - which will prompt for the next step by the error given or bottom-up (in the 
reverse order) - avoiding errors on the way.

1. Template: Add a Link to cancel participation if the user is already in the participants view.
2. Path: add a new path in urls.py linking the url to a view
3. View: add a new view to views/meetup.py

### Part 3: New Model and View

Decide on a Model you want to add to the StudyBuddy App - for example, the main domain model from your design form the beginning
of the semester. You should have a list of the fields and associations there. Additionally, sketch how the view should look like, and create it in the app (you can use Meetup as an example, you'll just need to specify the model on the View classes):

1. create a model in studybuddy_app/models.py
    - if your model has a lot of fields, you may start with only a couple and extend it if you have time left
    - you can leave out the associations for now
2. create and run migration
3. register your new model with the admin app in studybuddy_app/admin.py
4. add a few instances in the admin app 
    - override __str__ in the model to have a nice overview there
5. define a class-based ListView (extending models.ListView) in a new file views/<your_modelname>.py
   Defining a class specifying the model is sufficient. Use Meetup as an example:

```python
class MeetupListView(LoginRequiredMixin, generic.ListView):
    model = Meetup
```
   This uses the template meetup_list.html and provides the variable meetup_list. 
   Note that you need to use **pk for the primary key** in the path patterns for this to work!

6. add a path to the view in studybuddy_app/urls.py
7. open the path in the browser, and implement the missing template
8. add a link to this path somewhere - the home.html page or the navigation in base.html
9. repeat the same for a DetailView extending models.DetailView
10. link the detail views from your list view

Remember, you can use Meetup as an example for all steps.

### Write-Up

- upload a link to your team repo and
- a brief report on problems and solutions you've encountered
- include the model and page sketch in your report


## Django Resources

- Django has an excellent [documentation](https://docs.djangoproject.com/en/4.2/).

- have a look at the [detailed table of contents](https://docs.djangoproject.com/en/4.2/contents/)

- the [getting started tutorial](https://docs.djangoproject.com/en/4.2/intro/) part 1-4 covers all and more than you need to know for the first lab.

- if you don't want to walk through the whole tutorial, you can just refer to this repository: [https://github.com/htw-imi-info3/django-tutorial-step-by-step](https://github.com/htw-imi-info3/django-tutorial-step-by-step)

- another django tutorial: [ttps://www.tutorialspoint.com/django/django_overview.htm](https://www.tutorialspoint.com/django/django_overview.htm)


