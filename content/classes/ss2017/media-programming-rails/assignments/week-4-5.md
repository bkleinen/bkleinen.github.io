---
title: Week 4&5 -  Login and AJAX
author: kleinen
layout: page
---


In the last two weeks, you will add a simple login-mechanism and add a bit of JavaScript.

## Reading
For next week, read about rolling your own authentication in rails:
* [Michael Hartl's Rails Tutorial Chapter 8](https://www.railstutorial.org/book/basic_login)
Alternatively, you can decide to use a third-party framework like devise, for example devise ;-) for
authentication:
* [Plataformatec: devise](https://github.com/plataformatec/devise)
* [Working with JavaScript in Rails](https://guides.rubyonrails.org/working_with_javascript_in_rails.html)

## Authentication /Login & Logout
### For hand rolled variant:
  1. Add a user model and set it up with encrypted password
  2. Add Sessions, Login and Logout to your application
  3. Restrict Access to Some Pages

Again, see the [example project](../../example-project/week-4) for clarification on what to do.
Note that this is not a complete thing, as you don't need to implement signup. It's just about
getting an idea about how session management and login in rails might work. For a real life web
application you should use one of the available frameworks, like devise.

### With Devise
You can choose to do the same things using the devise framework. It will be harder to
understand the underlying principles; on the plus side you get first experiences in using a
third-party library.

Don't forget to tag your project with week-4

## Add a bit of JavaScript / AJAX

Find a place where a little bit of JavaScript is useful in your Application. It should
send an asynchronous request to the server which should be handled appropriately and the
result shown on the page. You find a couple of examples in the [Working with JavaScript in Rails](https://guides.rubyonrails.org/working_with_javascript_in_rails.html) Guide.

Also, see my [example project](../../example-project/week-5).

Upload a PDF Report describing what you did (I don't want to have to figure out what
you did from your source code) including a link to the git repository (or, the
complete repository included as a zip file)
make sure you have tagged all versions with the corresponding week, e.g.

    git tag week5
