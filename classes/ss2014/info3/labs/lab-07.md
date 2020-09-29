---
title: 'Exercise 07 - Internationalization, n:m Associations and a Bit of Functionality'
author: kleinen
layout: page
---

Assignment
==================

### Sort or Search Pumpkins
On the Pumpkin index site, add either a sort function for at least one pumpkin
attribute **or** a search functionality. You will need to add a link or form to
the index site, and perform the ordering/searching from the controller altering
the @pumpkins variable. [https://guides.rubyonrails.org/active_record_querying.html]
(https://guides.rubyonrails.org/active_record_querying.html) contains all necessary
information on how to query Pumpkins.

*** remember to make use of all the great pumpkins all of you added with their
pull request you can use to populate your database! ***

    rake db:populate

(after updating from the main/upstream repository, see https://help.github.com/articles/fork-a-repo)

### Order has many Pumpkins through LineItems.
An order consists of many line items stating the amount and pumpkin ordered.
Create a database migration for Line Items and set up the has_many :through
association. Then add some test data and show the line items on the order page.
[https://guides.rubyonrails.org/association_basics.html#the-has-many-through-association](https://guides.rubyonrails.org/association_basics.html#the-has-many-through-association) explains the has_many
:through association. The most difficult part is [setting up test data](https://robots.thoughtbot.com/aint-no-calla-back-girl).

### Internationalization
Choose one  site of the application, add Internationalization to it and
Localize it for two / a second locale.
 Make sure to use the translation in the test cases as well.

### Optional Exercises
* deploy your app to heroku.
* for the bored: find some functionality that you can implement using a gem (ruby library). Choose an appropriate gem, write some tests to try out it&#8217;s interface and have tests against the library as recommended by Rob Martin, and integrate it into your application.
* for the very bored: Compute the correct price for the complete order including
all line items.


The resulting app should be workable, but you do not need to spend time on the layout!

Hand in two files: a pdf documenting what you&#8217;ve implemented &#8211;
rather pointers to the part in the source code than complete descriptions,
and a zip containing the source code.


