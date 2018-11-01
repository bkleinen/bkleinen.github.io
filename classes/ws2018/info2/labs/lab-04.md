---
title: 'Info2: Exercise 04: Chatterbox'
author: kleinen
layout: lab
---

## Pre-Lab
Please research/review the following questions before coming to the lab. Write down your answers and bring them with you for pre-lab check-in. There are many sites that will show you the code for this.

1. How do you set up a connection with Sockets between two computers in Java?
2. Write a method to read from a connection in Java.
3. Write a method to write to a connection in Java.
4. How do you create concurrent threads?

## Assignment

These are the required exercises for this week. Work in groups of 2-3, each of you hands in the same report. Remember to put both your names on the report. You can continue to use BlueJ, or move to Eclipse, if you wish. We will be practicing much programming in the small this semester.

### Step 1: Client sends messages to Server

1. Start your chatterbox by writing a method that listens for a Socket connection on a port. This is your chatterbox server.  For now, just echo what you have read to the console to see it working.
2. Now write a client that connects to it and writes to a port.
3. Test your methods on your own machine.
4. Now publish your computer name and port number on the board in the lab.
4. Start chatting with a few of your neighbors! Describe what works and does not work.

### Step 2: Server can send message
5. Extend your Server such that you can enter messages on the Server side as well, and extend your Client to receive and Display those messages.

### Step 3: Simultaneous sending and recieving
5. Now extend your Chatterbox such that it can simultaneously receive and send messages using Java Threads.

## For the bored:

1. Remember that support desk application we had? Well, can you set it up so that your server listens for someone to type something, feeds it into the support desk, gets the support desk answer back and returns that to the person asking?
2. Read up on Eliza and see if you can make a chatterbox "shrink" (psychiatrist).
3. Create a Chat Server that can handle connections from more than one client using one Thread for each connected client.

## Lab Report / What to turn in

Your report is due the day before your next lab (for exact times, please refer to moodle). Submit both a lab report as pdf and your whole source code directory as a zip.

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.
Both of you need to upload the same report in PDF and zipped source format to Moodle before the
deadline.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.
