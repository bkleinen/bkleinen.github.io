---
title: 'Assignment 06 - Web Apps with Node and Express II'
author: kleinen
layout: page
---

Example app: [https://github.com/htw-imi-info3/express-app03](https://github.com/htw-imi-info3/express-app03)

(This builds on app02)

# Add Persistence

## Obtain a MongoDB instance

For persisting our data, we'll use a MongoDB Database. There are various options
on how to obtain one:
* you can create a free MongoDB Cluster on Mongo Atlas: [https://cloud.mongodb.com/](https://cloud.mongodb.com/)
* you can install MongoDB on your Computer directly: https://docs.mongodb.com/manual/administration/install-community/
* You can run a MongoDB instance in a docker container.

If you want to explore your database, [MongoDB Compass](https://docs.mongodb.com/compass/master/) may be helpful.

### MongoDB in Docker

For Development, I'll use the latter option, running mongodb in docker.
If you have installed Docker on your machine and copied [docker-compose.yml](https://github.com/htw-imi-info3/express-app03/blob/master/docker-compose.yml) from
the example app,  you can just run

    docker-compose up -d

Then, check your running containers with:

    docker ps

Stop the container with

    docker-compose down

## Mongoose

https://mongoosejs.com/

https://mongoosejs.com/docs/index.html

### Create a Schema for your Model

- see models/todos.js for an example and the doc:

https://mongoosejs.com/docs/index.html


### Optional: Create an automated seed

- see mongo/seed as an example. You can reuse your static data here.

## Adapt the controller actions to actually use the db connection

I've created the following simple examples:

- index and show for all and one element
- create action

## Optional: Complete CRUD

You don't need to complete all Create-Read-Update-Delete Actions.
I've added Update and Delete actions to provide you with a full example.

## Add an API
