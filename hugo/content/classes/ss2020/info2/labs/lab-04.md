---
title: 'Info2: Exercise 04: Chatterbox'
author: kleinen
layout: lab
---

## Pre-Lab
Write down the code for the following questions and be able to explain what is happening.

***P1.*** How do you set up a connection with Sockets between two computers in Java?

***P2.*** Write a method to read from a connection in Java.

***P3.*** Write a method to write to a connection in Java.

***P4.*** How do you create concurrent threads?

## Assignment

### Step 1: Client sends messages to Server
1. Start your chatterbox by writing a method that listens for a Socket connection on a port. This is your Chatterbox server.  For now, just echo what you have read to the console.
2. Now write a client that connects to it and writes to a port.
3. Test your methods on your own machine.
4. Follow the instructions to connect to an HTW lab computer at https://imi-bachelor.htw-berlin.de/studium/labore/hinweise/entfernter-zugriff-auf-labor-pcs-ueber-vpn-und-remote-desktop/ and copy your code onto your lab computer. It is recommended you use a ganymed computer. Share your address and port with others and see whether you can chat with each other. You might need to change the default ports of your program to ports between 8000 and 8010. 

### Step 2: Server can send message
5. Extend your Server such that you can enter messages on the Server side as well, and extend your Client to receive and Display those messages.

### Step 3: Simultaneous sending and receiving
6. Now extend your Chatterbox such that it can *simultaneously* receive and send messages using Java Threads.

## For the bored:
7. Remember that support desk application we had? Well, can you set it up so that your server listens for someone to type something, feeds it into the support desk, gets the support desk answer back and returns that to the person asking?
8. Read up on Eliza and see if you can make a chatterbox "shrink" (psychiatrist).
9. Create a Chat Server that can handle connections from more than one client using one Thread for each connected client.

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.
