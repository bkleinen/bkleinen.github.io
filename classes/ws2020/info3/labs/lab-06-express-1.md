---
title: 'Assignment 06 - Web Apps with Node and Express I'
author: kleinen
layout: page
---

# Step 1: Decide on and Design a *very small* example app.
1. Design a little app you want to implement. At the core the app should
store entities of a special type and accept creation or modifications on it.
If you want to play around later, you could add additional libraries for
more features.
Here are some example ideas:

- Calculate if a given Internship is long enough.
- Collect Addresses for Corona-Walks. Addition with 3rd party libraries:
  Show all members on a map. (Hint: use  https://www.npmjs.com/package/node-geocoder to geocode the adresses (try it at http://node-geocoder.herokuapp.com/)
  and [leaflet.js](https://leafletjs.com) to show them on a map)
- Todo-App counting [Pomodori](https://francescocirillo.com/pages/pomodoro-technique) (This will be the example I use)

Sketch how the user interface should look like. About two pages with a little
bit of interactivity are sufficient. For a todo app this might be a list with
all todos (called the index) and one page for a specific todo. A simple first
bit of interaction would be create new todos by providing a line of text
and marking todos as done.

For example:

![Sketch](../images/sketch.png "sketch")
<small class = "float-right">Simple Interface Sketches</small>


# Step 2: Create your pages in plain HTML.

They should have at least one form and be linked correctly.



![HTML 1](../images/html1.png "html page 1")
<small class = "float-right">Plain HTML Page 1</small>


![HTML 2](../images/html2.png "html page 2")
<small class = "float-right">Plain HTML Page 2</small>


# Step 3:  Set up a first node & express app:

To do this, refer to the [express documentation](https://expressjs.com) and my [example app on github](https://github.com/htw-imi-info3/express-app01).

First follow the express getting started tutorial on the Express.js site:

https://expressjs.com/en/starter/installing.html

(yarn or npm - use either one but stick with it - I'm using npm as it's the
default in WebStorm)

    yarn init
    yarn add express

look at the created files.
initialize git repo, ignore node_modules:

    git init
    echo "node_modules/**" > .gitignore
    git add .
    git commit -m "initial commit"


edit index.js as described in https://expressjs.com/en/starter/hello-world.html :


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

## Step 4: add your HTML pages as static pages to your express app.

* see serving static files: https://expressjs.com/en/starter/static-files.html
* and my [example app on github](https://github.com/htw-imi-info3/express-app01)

The commits in the example app show the individual steps.

## Step 5: Create a new app with express-generator

[Example App](https://github.com/htw-imi-info3/express-app02)

The first app was a very simple express app to see the bare minimum once.
This second app has more structure and comes with a couple of packages installed,
especially logging and a basic error handling, but also a view template engine.

You can either create the app this via the command line or via WebStorm, which also uses
the express generator. Be sure to choose the same options:
- ejs as view template
- sass for css
- add git files

### Command line

    npx express-generator --ejs --git --css sass

### WebStorm
-
![Express](../images/newExpressProject.png "pumpkins")
<small class = "float-right">Using WebStorm to call express-generator</small>

# Step 6: Add your pages as ejs Templates and connect them with a route

Now, add your HTML pages as ejs Templates. HTML-Templates, which ejs are just one
example of, allow you to combine HTML with dynamically generated content.
Create a subfolder in views matching your model - eg. todo - and put the files there.

The example has one list of todos which I put in views/todos/index.ejs, and
a view for one single todo, which goes in views/todos/show.ejs

For ejs, see the [Documentation](https://ejs.co/)


# Step 7: Add routes for your views

e.g. the list should be accessible via a get request to /todos, and the show
with /todo/<id> e.g. /todo/4711 .

# Step 8: extract the data and put it in the controller for now.

As we don't have a database connected yet, just use hard-coded data in the controller
to experiment with getting data to the view.

## Step 9: extract common HTML-Stuff into a Layout
Vielleicht zuviel? Optional?

Install a new package https://www.npmjs.com/package/express-ejs-layouts

    npm install express-ejs-layouts

    yarn add express-ejs-layouts

Refactor your views to use a common layout.

## Step 10: Where is the Model?

As of now, we have views, a controller and a router - the model is still
missing. We will add a proper model with the persistence layer in the next
lab, for now just create a "models" folder and move the test data from the
controller to the new model location.
