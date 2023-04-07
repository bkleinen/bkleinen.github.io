---
title: 'Assignment 07 - Web Apps with Node and Express II'
author: kleinen
layout: page
---

Example apps: [App 03] - Persistence and [App 04] - with testing

(This builds on app02)

# From Lab06 to Lab07
You will continue working on your project from Lab06. However, it should be in a separate code base. So you should create a new empty repository on GitLab in the folder for Lab07 and add this new repo as the new origin of your local repository. For Lab07, only push to the project in the Lab07 folder!

# Assignment 1: Add Persistence

## Step 1: Obtain a MongoDB instance

For persisting the data, we'll use a MongoDB Database. There are various options
on how to obtain one:
* create a free MongoDB Cluster on [Mongo Atlas] (in the Cloud, yay)
* install MongoDB on your Computer directly: https://docs.mongodb.com/manual/administration/install-community/
* run a MongoDB instance in a [docker] container

If you want to explore your database, [MongoDB Compass] may be helpful.

### Preferred Option: MongoDB in Docker

For development, Prof. Kleinen runs mongodb in [Docker](https://docs.docker.com/get-started/overview/).
If you
* have installed Docker on your machine (See https://docs.docker.com/engine/install/ubuntu/ and https://docs.docker.com/engine/install/linux-postinstall/)
* and copied [docker-compose.yml](https://github.com/htw-imi-info3-archive/express-app03/blob/master/docker-compose.yml) from
the example app, you can run

    ` docker-compose up -d`

To start a mongoDB image in a container. Then, check your running containers with:

    `docker ps`

Stop the container with:

    `docker-compose down`

## Step 2: Install Mongoose

Although it's possible to work with the MongoDB directly, we will use Mongoose.
[Mongoose] is an Object-Document-Mapper (ODM) which eases reading and writing
from the database as well as Model creating and validation.

As [Mongoose] acts as a [Proxy](https://en.wikipedia.org/wiki/Proxy_pattern) to the MongoDB, we have to connect to the DB
via Mongoose. [See commit](https://github.com/htw-imi-info3-archive/express-app03/commit/ab2cc6775ac093948766fc7b3e88ad458e420f37).

* [Mongoose Doc]

## Step 3: Create a Schema for your Model

- see models/todos.js in the [App_03] for an example and the  [Mongoose Doc].

## Step 4: (Optional) Create an automated seed

- see mongo/seed as an example. You can reuse your static data here.

## Step 5:  Adapt the controller actions to actually use the db connection

Prof. Kleinen created the following simple examples:

- index and show for all and one element [commit](https://github.com/htw-imi-info3-archive/express-app03/commit/99f7d2541a21f18bbb03a85e9681e1e3db5c0bd0)

## Step 6: (Optional) Complete CRUD

Prof. Kleinen added create, update and delete actions to provide you with a full example.
You don't need to complete all of the Create-Read-Update-Delete Actions, but
of course may implement one or two more if you want.
You'll find the examples in single [App03 commit]s.

## Step 7: Add an API Endpoint

In order to toggle the done / not done state on my todo items, Prof. Kleinen did not want to
reload the entire page. Therefore, Prof. Kleinen introduce an API endpoint which allows
to toggle the state by just issuing one get request.
See [commit](https://github.com/htw-imi-info3-archive/express-app03/commit/0bf3802ff971d9972d29fe21a3bddb513fe82ae8).

Where in your app might an API endpoint make sense? Implement it.

## Step 8: Use the API Endpoint

Finally, you need to use the endpoint in your app by adding some javascript
that calls the endpoint and shows the response. [See the commit](https://github.com/htw-imi-info3-archive/express-app03/commit/d8ae079fc6627b6662587984d3f12bdc8cb24095)
for an example.

# Assignment 2: Testing your app

We will be using Jest to test the app. To create end-to-end tests, e.g.
issuing requests to our express app and check the results, we need the "superagent"
library.

## Step 1: Set up testing with Jest

To set up end-to-end tests for follow the [Test Express with Jest Tutorial]. Some notes/ hints on that:

- **Install**: You might need to switch to *yarn* to get a successful install (npm got caught in an endless recursive call). Yarn is similar to npm. To switch to yarn if needed, delete package-lock.yml and run yarn install. Then install
with yarn `yarn add --dev babel-preset-env jest supertest superagent`
- **Separate your app and server**: already done if you used express-generator, the equivalent to server.js resides in /bin/www
- **Create Test**:  Have at least one end-to end test checking that the correct data is shown on your page. The [root test](https://github.com/htw-imi-info3-archive/express-app04/blob/master/test/feature/root/root.test.js): just checks if get / returns a 200 HTTP Response Code.
Here is checked that todos in the db are listed: [todos/index](https://github.com/htw-imi-info3-archive/express-app04/blob/master/test/feature/todos/index.test.js).
- **Callbacks vs Async/Await**: Use the async/await way of writing the tests - otherwise you will soon get nested then-chains. And with async/await you don't need to call end() and/or done(). However, when starting the tests, you should additionally pass the arguments "--forceExit --detectOpenHandles" (to force jest to exit even if some promises have not been resolved and to make jest show you which promises have not been resolved, if any).
- **jest argument --verbose false**: passing "--verbose false" could help in the case that jest is not displaying your console logs
- **db connection and clean up**: When - when running your test suite - should a db connection be established? When closed? When should the db be cleaned up (eg. all documents deleted)?

## Step 2: Create a Test DB:

![Test Data](../images/testData.png "test data in db")
<small class = "float-left">Ooops! The tests data ends up in our database!</small>

Our tests use the regular (well, development) database
and mess it up! - we need to use a specific test data base for our tests.
Without going deeper into the topic of how to handle test data, testing and staging
environments, we'll just use a library that helps us set up an in-memory db
for tests and provisions it by tweaking the MONGODB_URI environment variable.

* install the library: [jest-mongodb]
* factor out the database setup from app.js (in the example it was moved to mongoose.js and imported in bin/www)
* create beforeAll and afterAll hooks to setup the database before all tests are run
* add configuration files (jest-mongodb-config.js and jest.config.js) as described in the doc

* [see commit](https://github.com/htw-imi-info3-archive/express-app04/commit/1e92be249506d57f2381c5e5ffd7353a453dcb14).


# Assignment 3 (Optional): Deploy the App to Heroku

If you like to, you can deploy your app to heroku. Heroku is one the first
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

## Results Submission
* Hand in a link to your repository.
* Hand in a lab report until February 2nd, 11pm.
* Take part in the oral test on February 4.

More info on the [Labs](..) page.

# References

* [App 03]
* [App 03 commits]
* [App 04]
* [Mongo Atlas]
* [Docker]
* [MongoDB Compass]
* [Mongoose]
* [Mongoose Doc]
* [jest-mongodb]
* [Node on Heroku]
* [Atlas on Heroku]

[App 03]: https://github.com/htw-imi-info3-archive/express-app03
[App 03 commits]: https://github.com/htw-imi-info3-archive/express-app03/master/commits
[App 04]: https://github.com/htw-imi-info3-archive/express-app04
[Mongo Atlas]: https://cloud.mongodb.com/
[Docker]: https://www.docker.com/
[MongoDB Compass]: https://docs.mongodb.com/compass/master/
[Mongoose]: https://mongoosejs.com/
[Mongoose Doc]: https://mongoosejs.com/docs/index.html
[Test Express with Jest Tutorial]: https://www.albertgao.xyz/2017/05/24/how-to-test-expressjs-with-jest-and-supertest/
[jest-mongodb]: https://www.npmjs.com/package/@shelf/jest-mongodb
[Node on Heroku]: https://www.heroku.com/nodejs
[Atlas on Heroku]: https://developer.mongodb.com/how-to/use-atlas-on-heroku
