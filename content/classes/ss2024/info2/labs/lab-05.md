---
title: 'Lab 05: Chatterbox'
author: kleinen
draft: false
weight: 50
---

## Learning Goals

After this lab you should be able to agree with each of the following statements.

I can use the Socket API for TCP connections:
* I can create a server that listens for and accepts connections
* I can create a client that makes a connection request to the server
* I can send text from a client to a server via streams
* I can send text from a server to a client via streams
* I can use multithreading to simultaneously process tcp requests and input from the user
* (if you do the "for the bored" part: I can use multithreading for the server to handle multiple connection requests)

## Pre-Lab
Write down the code for the following questions and be able to explain what is happening.

***P1.*** How do you set up a connection with Sockets between two computers in Java?

***P2.*** Write a method to read from a connection in Java.

***P3.*** Write a method to write to a connection in Java.

***P4.*** How do you create concurrent threads?

Note: use the plain TCP Socket and ServerSocket classes for this exercise!
See:
[Lesson: All About Sockets (The Java™ Tutorials > Custom Networking)](https://docs.oracle.com/javase/tutorial/networking/sockets/index.html)

## Assignment

Note that you can also use telnet to test your Server implementations without
having the Client ready.

### Step 1: Client sends messages to Server
1. Start your chatterbox by writing a method that listens for a Socket connection on a port. This is your Chatterbox server. For now, just echo what you have read to the console.
2. Now write a client that connects to it and writes to a port.
3. Test your methods on your own machine.
4. If you are not in the lab with the others: Instructions TBD. You might need to change the default ports of your program to ports between 8000 and 8010.

### Step 2: Server can send message
5. Extend your Server such that you can enter messages on the Server side as well, and extend your Client to receive and display those messages.

### Step 3: Simultaneous sending and receiving
6. Now extend your Chatterbox such that it can *simultaneously* receive and send messages using Java Threads.

### Step 4: Make Zuul Playable via Telnet
The Zuul Game uses standard input and output as user interface. This can easily be
exchanged with the Input- and Output Stream coming from a Socket!

1. Extract the input- and output streams System.in and System.out as fields initialized by parameters
e.g. in the Game constructor.
2. Take the Server from Step 2 and attach a Game instance for processing the messages received by the client.
3. There isn't really a need to implement a special client, telnet works just fine.
4. Done! you now can play Zuul remotely. In order to move it towards a multiplayer game, you would need a
   thread running a game instance for each connected client - just like for a multiuser chat in the "for the bored" part.

## For the bored::
1. Create a Chat Server that can handle connections from more than one client using one Thread for each connected client.
2. Change the Server to dispatch incoming messages to all connected clients.

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.
