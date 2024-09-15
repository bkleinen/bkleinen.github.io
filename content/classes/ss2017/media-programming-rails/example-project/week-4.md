---
title: Example Project for Web Technology - Week 4
author: kleinen
layout: page
---
# Week 4

For this week, we'll use another example project. I'll introduce it in class, but have
a look at the readme to get an Idea what it is about:
[Example Project for Week 4 on GitHub](https://github.com/media-programming-rails/poller)

## Authentication

### 1. Add a user model and set it up with encrypted password

If you don't already have a user model, create one:

    rails g scaffold User name:string password:digest

if you already have a user model (it may have another name), make sure it has a field for password. If needed, create a migration to add the password to your user model.

Your user model should have an unique identifier, which may be as simple as name.

* See commit "user has_secure_password" and [Chapter 6.3 of the rails tutorial](https://www.railstutorial.org/book/modeling_users#sec-adding_a_secure_password) on more information.

has_secure_password stores the encrypted password in the database using bcrypt.

* see commit "added bcrypt gem"


### 2. Add Sessions, Login and Logout to your application

Note that we didn't implement a specific sign on process (creating new users). If you want to do that, refer to chapter 6.3 of the rails tutorial. Otherwise, it's sufficient to create one User before closing the access / have one in your seed data. (see db/seeds.rb)

For Session creation, I've followed chapter 8 of the rails tutorial with slight variations.
Note the special routes for session creation and deletion:

    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'

Again, I've commited every single step, see the commits in the [authentication branch](https://github.com/media-programming-rails/poller/commits/authentication).

see [Michael Hartl's Rails Tutorial Chapter 8](https://www.railstutorial.org/book/basic_login)

### 3. Restricting Access to Some Pages

For the poller application, only admins should have access to most features, while participants should
only be able to see a small set of pages: the Poll page and of course the participation question to
fill out. See the readme: [Poller app](https://github.com/media-programming-rails/poller)

I've encapsulated session related stuff in the [SessionHelper](https://github.com/media-programming-rails/poller/blob/master/app/helpers/sessions_helper.rb)
it defines a method authorize that is called as a before_action within ApplicationController, restricting
access to all controller actions. Then, I've whitelisted the few pages that should be accessible without
login. See the commit [access restricted ](https://github.com/media-programming-rails/poller/commit/c04643e9e9864d92e33bed76e02738fca6a69ef4)


## Reading for next week

* [Working with JavaScript in Rails](https://guides.rubyonrails.org/working_with_javascript_in_rails.html)
