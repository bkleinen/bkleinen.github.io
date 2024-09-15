---
title: 'Info2: Exercise 08: Multi-Threaded Chat Application'
author: kleinen
layout: lab
draft: true
weight: 1080
---

## Pre-Lab

1. Experiment with the Source Code Examples for Concurrency.

2. Do a Class Design for your Chat Application: Don't put all of the Server in one and all of the Client in another class; design small classes with one responsibility and small methods. Especially the user interface should not be intermingled with the rest of the application.


## Assignment: Multi-Threaded Chat

This builds on [Assignment 3, Chatterbox](../lab-03), where you built a little Chat Application that was only able to handle one connection from one client. Now you are required to build a full Chat Application with a Server that allows multiple clients to connect, and sends chat messages to all connected clients. To do this simultaneously, e.g. accept user input in the client and receive messages from the server, you will need multiple threads both in the client and the server.

Add an command /nick such that a client can set its nickname:

    /nick Trick
    Hello

And let the server send out the messages such that the printed messages look something like this:

    Trick: Hello
    Track: Good Morning
    Tick: Moin

### Server

1. Create a Server Socket as you did in the Chatterbox exercise. For every accepted Socket connection, create a new Client Session that and start a new Thread.

2. Within each Client Session Thread, listen to the Socket, and send a received message to all connected clients.

Thus, the Server has one thread for each connected client, and one for accepting new connecting clients.

Add appropriate Exception handling to determine if a socket connection has been lost and remove the disconnected client from the list of active clients.

### Client

After startup & connecting to the server the client will need two threads:

1. accept user input from the console and send it to the server
2. accept chat messages from the server and print them to the console.


## For the Bored

Two ideas/suggestions:

1. Build a Graphical User Interface for the Chat Client.
2. Have a look at [IRC Commands](https://www.ircbeginner.com/ircinfo/ircc-commands.html) and add some to your chat.


## Lab Report / What to turn in

Your report is due the day before your next lab (for exact times, please refer to moodle).

Submit a Report in PDF Format and the Source Code as Zipped file.

Both of you need to upload the same files to Moodle before the
deadline.

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.
