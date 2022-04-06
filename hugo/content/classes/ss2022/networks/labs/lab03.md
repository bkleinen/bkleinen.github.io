---
title: Lab 03 - TCP and UDP
author: kleinen
draft: true
toc: true
---

This lab summarizes lecture and lab assignments around chapter 03 (as well as
some more aspects of chapter 02)

The Labs - every Wednesday at 17:30 - are open to both Groups, for all questions.

You need to include all parts in your lab report for this assignment.

## Part 1: UDP Pinger

The assignment is to create the UDP Pinger client part as described on page 205f.
in the Textbook. The assignment is also availabe in Moodle,
"Assignment 2: UDP Pinger (Part of our Lab 3)"
The sceleton code and the server can be found here:
[htw-imi-networks/python-programming-assignments](https://github.com/htw-imi-networks/python-programming-assignments)

## Part 2: Lab Exercises
<!-- Chapt. 02 R26 -->

### Assignment A: Sockets in TCP and UDP

In Section 2.7, the UDP server described needed only one socket,
whereas the TCP server needed two sockets. Why? If the TCP server were to
support n simultaneous connections, each from a different client host, how many
sockets would the TCP server need?

Discuss this in your team and include a written answer in your lab report.

### Assignment B: FSM for rdt 3.0 receiver side
<!-- Chapter 03 - P08 -->

Draw the FSM for the receiver side of protocol rdt 3.0.

### Assignment C: FSM for alternating protocol

<!-- Chapter 03 - P17 -->

Consider two network entities, A and B, which are connected by a perfect
bi-directional channel (no data loss or corruption, messages are deliverd in
order). A and B are to deliver messages to each other in an alternaating manner:

1. A must deliver message to B
2. B must deliver message to A
3. A must deliver message to B
4. etc.

If an entitiy is in a state where it should not attemt to deliver a message to
the other side, and there is an event like rdt_send(data) call from above, this
call can simply be ignored and answered with tdt_unable_to_send(data)

Draw a FSM specification for this prototcol (one FSM for A, one for B).
You should use the appropriate events and actions from the protocol rdt 1.0
in Figure 3.9

## Part 3: Wireshark Labs for TCP & UDP

We continue working on the
[Wireshark-Labs](https://gaia.cs.umass.edu/kurose_ross/wireshark.php).

Download the Version 8.1. of the Labs "TCP" and "UDP" and work through them.

Provide the answers to the questions in your lab report.



### Lab Report

Prepare a Lab Report together as PDF structured like this Lab Assignment.
You may work on the reports in flexible teams of 2-3 students.

Always put the names of all contributing people on your report.

Each one of you has to hand in the completed Report individually in moodle
by Friday 17:00 after the second lab meeting!

In your report, describe what you did and what you found,
 as well as errors or problems you've encountered.
