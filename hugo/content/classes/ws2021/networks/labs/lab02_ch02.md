---
title: Lab 02 - Application Layer
author: kleinen
draft: false
toc: true
---

This lab summarizes all assignments related to chapter 2 - we will be working on
Part 1 + 2 during the lectures, work on your own on Part 3.
The Labs - every Wednesday at 17:30 - are open to both Groups, for all questions.

You need to include all parts in your lab report for this assignment.

## Part 1: email and http

### Receiving HTTP (P12)

Write or find a simple TCP program for a server that accepts lines of input
from a client and prints the lines onto the server's standard output.

Note: you can use [step 01 of the Info2 chatterbox lab](/classes/ws2021/info2/labs/lab-04#step-1-client-sends-messages-to-server) for this - it does just
that! For those not attending Info2 this term, as your peers to help you out.
Or write that simple program yourself.

Direct at least two different browsers against your program. Answer the following questions in your report:

1. What do you learn about the browser?
2. Does your browser generate conditional GET messages for objects that are locally cached?


### Email header (R17)

Print out the header of an e-mail message you have recently received.
How many `Received:` header lines are there? Analyze each of the header lines
in the message.

### Email setup

How do you use email? Describe how email gets from one person in your team to
another and draw a diagram including all parts of this distributed application
together with protocols used.

### Mail from (P15)

What is the difference between `MAIL FROM:` in SMTP and `From:` in the mail message
itself? Try setting the `From:` header field, either within the next task or
from your mail client.

### Talk SMTP

Connect to a mail server via telnet as described on page 149 (2.3.1 SMTP).
Agree on a timebox of max. 2x15 min, record what you tried, what worked and what
didn't. Record any pages you consulted for help, e.g. RFC 5321.

If you succeed sending messages, include a printout in your report. Try setting
the From header field!

### Socket Programming Assignment: Mail Client (Assignment 3 )
The goal of this programming assingment is to create a simple mail client that
sends e-mail to any recipient. You client will need to establish a TCP connection
with a mail server (e.g., a Google mail server), dialogue with the mail server
using the SMTP protocol, send an e-mail message to a recipient via the mail
server, and finally close the TCP connection with the mail server.

Find the full assignment text in Moodle and the Python Scaffold on
[Github](https://github.com/htw-imi-networks/python-programming-assignments).

Also, there is information on Python on this site: [Python Resources](/material/languages/python-resources/)


## Part 2: ~~TBD~~ cancelled
<!-- R26 -->

## Part 3:

We are doing the [Wiresharks Labs](http://gaia.cs.umass.edu/kurose_ross/wireshark.php) from the book.
For both Labs, include the answers to the questions in the Lab Document into your report
and answer the additional questions given here.

### 3.1: Wireshark Lab: HTTP

Get the "[HTTP v8.1](http://www-net.cs.umass.edu/wireshark-labs/Wireshark_HTTP_v8.1.doc)"
Lab from Kurose's Website and work through it.

#### Additional Question
Trace connections to your own webserver (iminet0n....). What do you learn from
the trace?

### 3.2: Wireshark Lab: DNS

Get the "[DNS v8.1](http://www-net.cs.umass.edu/wireshark-labs/Wireshark_DNS_v8.1.doc)"
Lab from Kurose's Website and work through it.

Tipp: there are instructions on how to clear your DNS cache.
You may want to put this into an alias, which will be easier to
remember. Add the alias command to your shell initialization file (e.g. ~/.bashrc),
to have it always available. (example below only works on Mac OS)

```bash
# alias cleardns="sudo killall -HUP mDNSResponder"
# cleardns
```
#### Additional Question

Collect a couple of scenarios you would like to trace (e.g. connecting to a web site
you connect to often) - and trace at least one of them from home and one from the
university. Which DNS servers are used?

### 3.3: Secure Your Server

Secure your Server with ssl.
For this, you'll need to aquire a ssl-certificate, configure nginx to use it and
open the port 443 in the firewall for connections.

See [the Https part of Nginx](/material/ops/nginx/#https) for more detailed instructions

We will do this together during the lab.

### Lab Report

Prepare a Lab Report together as PDF structured like this Lab Assignment.
You may work on the reports in flexible teams of 2-3 students.

Always put the names of all contributing people on your report.

** put your server name in your report! **

Each one of you has to hand in the completed Report individually in moodle
by Friday 17:00 after the second lab meeting!

In your report, describe what you did and what you found,
 as well as errors or problems you've encountered.
