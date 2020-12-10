---
title: 'Assignment 06 - Web Apps with Node and Express I'
author: kleinen
layout: page
---

# Overview

In the course of this and the following Lab Assignment, you will implement a rudimentary web application
based on node & express.js.

The goal of the exercises is gain first experiences with fundamental steps
of web application development, rather than completing the app!

In the end, your app must have the following features:

## Lab 06 - Express 1
- contain at least one view template showing data that is hard-coded in the controller
- deliver 1 static element (image, .js file, plain html file)
- process parameters send from a HTML form in the controller
- MVC: View and Controller should be clearly separated, e.g. in specific folders


## Lab 07 - Express 2
- it must show at least one piece of data retrieved from the database.
- it must trigger one change in the database
- it should implement and use 1 API endpoint
- MVC structure clearly visible

The goal is not to complete the application but to practice these
basic elements of web application development.

# Step 1: Decide on and Design a *very small* example app.
Design a little app you want to implement. At the core the app should store entities of a special type and accept creation of or modifications on them.
If you want to play around later, you could add additional libraries for more features.
Here are some example ideas:

- Calculate if a given Internship is [long enough](https://imi-bachelor.htw-berlin.de/studium/praktikum/#c10767) with a given start date and end date.
- Collect Addresses for Corona-Walks. Addition with 3rd party libraries:
  Show all members on a map. (Hint: use  https://www.npmjs.com/package/node-geocoder to geocode the adresses (try it at http://node-geocoder.herokuapp.com/) and [leaflet.js](https://leafletjs.com) to show them on a map)
- Todo-App counting [Pomodori](https://francescocirillo.com/pages/pomodoro-technique) (This will be the example I use)

Sketch how the user interface should look like. About two pages with a link between them and a little bit of interactivity are sufficient. For a todo app this might be a list with all todos (called the index) and one page for a specific todo. A simple first bit of interaction would be create new todos by providing a line of text and marking todos as done.

For example:

![Sketch](../images/sketch.png "sketch")
<small class = "float-left">Simple Interface Sketches</small>


# Step 2: Create your pages in plain HTML.

Create the Pages you scetched using HTML only. They should have at least one form and they should be linked together correctly.


![HTML 1](../images/html1.png "html page 1")
<small >Plain HTML Page 1</small>


![HTML 2](../images/html2.png "html page 2")
<small >Plain HTML Page 2</small>

Note that these are very plain HTML pages! Don't spend
any time on visual appearance for now.

# Step 3:  Set up a first node & express app:

To do this, refer to the [express documentation](https://expressjs.com) and my [App01]


[1] [example app on github](https://github.com/htw-imi-info3/express-app01).

* First follow the express [getting started tutorial on the Express.js site](https://expressjs.com/en/starter/installing.html)

    * yarn or npm? - you can use either yarn or npm, but stick with it
    * I'm using npm as it's the default in WebStorm, the Express.js site uses npm as well.
    * The yarn commands are:

      ```code
      yarn init
      yarn add express
      ```



* Look at the created files.
* Initialize git repo, ignore node_modules:

    ```code
    git init
    echo "node_modules/**" > .gitignore
    git add .
    git commit -m "initial commit"
    ```

* Edit index.js as described in the [hello world example on the Express.js site](https://expressjs.com/en/starter/hello-world.html):

    ```javascript
    const express = require('express')
    const app = express()
    const port = 3001

    app.get('/', (req, res) => {
      res.send('Hello World!')
    })

    app.listen(port, () => {
      console.log(`Example app listening at http://localhost:${port}`)
    })
    ```

* Start the server with

    node app.js

## Step 4: add your HTML pages as static pages to your express app.

* See the [Express.js site on serving static files](https://expressjs.com/en/starter/static-files.html)...
* ...and my [first example app on github](https://github.com/htw-imi-info3/express-app01). The [commits in the example app](https://github.com/htw-imi-info3/express-app01/commits/master) show the individual steps.

## Step 5: Create a new app with express-generator

The first app was a very simple express app to see the bare minimum once.
This [App 02]has more structure and comes with a couple of packages installed,
especially logging and a basic error handling, but also a view template engine.

You can  create the app using command line or using WebStorm, which calls the
express generator. Be sure to choose the same options:

- ejs as view template
- ~~sass for css~~ (I've used [sass](https://sass-lang.com/) in the example app, but you don't need it)
- add git files

### Command line

Run `npx express-generator --ejs --git ` in the Folder of your app,
or `npx express-generator --ejs --git --css sass` if you want to use sass.

### WebStorm
Create a new Project with WebStorm. Choose the Folder of your app as the location and all the other options as shown below.

![Express](../images/newExpressProject.png "options for webstorm")
<small class = "float-right">Using WebStorm to call express-generator</small>

(Note: WebStorm uses npm instead of yarn as default. I had to switch back to yarn at the beginning of Lab 07).

## Step 6: Add your pages as ejs Templates and connect them with a route

Now, add your HTML pages as ejs Templates. HTML-Templates, which ejs are just one example of, allow you to combine HTML with dynamically generated content.
Create a subfolder in views matching your model - eg. todo - and put the files there.

The example has one list of todos which I put in views/todos/index.ejs, and
a view for one single todo, which goes in views/todos/show.ejs

For ejs, see the [Documentation](https://ejs.co/)


## Step 7: Add routes for your views

In the example the list (index) should be accessible via a get request to /todos, and the show should be accessible via a get request to /todo/<id> e.g. /todo/4711.

See the [second example app](https://github.com/htw-imi-info3/express-app02/commits/master) for reference.

## Step 8: Extract the data and put it in the controller for now.

As we don't have a database connected yet, just use hard-coded data in the controller to experiment with getting data to the view.
See the [App02] for reference, [especially this commit.](https://github.com/htw-imi-info3/express-app02/commit/7600b7d12e2976127df8ddd5acd8b986b93823d6)

## Step 9 (optional): Extract common HTML-Stuff into a Layout

If you have more than one page, it may be annoying having to adjust the same stuff on both pages, as e.g. a common navigation or layout.

If you want, you can extract the common parts using ejs-layouts:

Install a new package [express-ejs-layouts](https://www.npmjs.com/package/express-ejs-layouts) using either npm:

        npm install express-ejs-layouts


or yarn:


        yarn add express-ejs-layouts


Refactor your views to use a common layout. See the [App02 commits] for reference.

## Step 10: Where is the Model?

As of now, we have views, a controller and a router - the model is still
missing. We will add a proper model with the persistence layer in the next lab, for now just create a "models" folder and move the test data from the controller to the new model location. See the [second example app](https://github.com/htw-imi-info3/express-app02/commits/master) for reference.

[1]: [example app on github](https://github.com/htw-imi-info3/express-app01).



References

- [App01]
- [app02]
- [ejs]


[App01]: https://github.com/htw-imi-info3/express-app01 "Beispiel App App01"
[App02]: https://github.com/htw-imi-info3/express-app02
[App02 commits]: https://github.com/htw-imi-info3/express-app02/commits/master
[ejs]: https://ejs.co/
