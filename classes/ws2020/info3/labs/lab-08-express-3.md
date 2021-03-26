---
title: 'Assignment 07 - Web Apps with Node and Express II'
author: kleinen
layout: page
---

# From Lab07 to Lab08
You will continue working on your project from Lab07.
However, it should be in a separate code base.
So you should create a new empty repository on GitLab in the folder for Lab08 and add this new repo as the new origin of your local repository.
For Lab08, only push to the project in the Lab08 folder!

# Assignment 1: Clean Up

## a) Check the requirements
Check the following questions and if the answer is no, fix it. Those were things that you should have done in Lab06 and Lab07, but if you haven't do them now. **Document in your report what you needed to fix.**
1. Do you have a clearly visible MVC structure?
2. Do you transfer data a user inputs into an HTML form into your database, where it persists?
3. Do you transfer from the database into a template?
4. Do you use the HTTP methods correctly in your router?
5. Did you implement one end-to-end test for each major feature?
6. Do you have any mock data for testing?
7. Do you use a test database?

## b) Linting
Install and configure [eslint](https://eslint.org/) for your project. Lint your code.
For each error, decide whether you need to fix your code or your configuration.
**Are there any major issues in your code style that eslint detected and that you could fix?
If so, document this in your report.**

# Assignment 2: Deploy the App to Heroku

Deploy your app to heroku. Heroku is one the first
Platform-as-a-service providers, supporting a wide range of frameworks.
See [Node on Heroku] for the documentation.
As the package.json already specifies the correct start script, all I had to do was:
(You will need to create an account and install the command-line client)

    `heroku create`

and then

    `heroku open`

If you want to, rename your app

    `heroku rename timerpompom`

Now, the app should be running, but is missing a database. You will need a
database available on the net, e.g. using [Mongo Atlas]. The documentation "[Atlas on Heroku]" is a bit bulky, but boils down the these steps:

* create a mongodb cluster.
* find and copy the connection string, e.g. mongodb+srv://app03:<password>@cluster0.giyi7.mongodb.net/<dbname>?retryWrites=true&w=majority
* set the MONGODB_URI on heroku to this connection string (be sure to use the correct password and dbname)

    `heroku config:set MONGODB_URI=...`

* make sure the app picks up this environment variable to connect to the database, e.g.
  in mongoose.js:

    ```
    const mongodbURI = process.env.MONGODB_URI || 'mongodb://localhost:27017/app04'
    mongoose.connect(mongodbURI, { useNewUrlParser: true, useUnifiedTopology: true })
    ```

**Document in your report any issues you had with deploying the app**

## Results Submission
* Hand in a link to your repository together with your report.
* Hand in a lab report until March 28, 11pm. Make sure to answer the questions I put in this lab.

### Grading
You get 1 star for each of the exercises that you completed (assignment 1 a and b and assignment 2). If you additionally hand in a good report that documents everything I asked you to document, you get another star. There won't be any oral tests.

# References

* [Mongo Atlas]
* [Node on Heroku]
* [Atlas on Heroku]

[Mongo Atlas]: https://cloud.mongodb.com/
[Node on Heroku]: https://www.heroku.com/nodejs
[Atlas on Heroku]: https://developer.mongodb.com/how-to/use-atlas-on-heroku
