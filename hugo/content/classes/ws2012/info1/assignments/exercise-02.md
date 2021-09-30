---
title: 'Exercise 02: Shapes and TicketMachine'
author: kleinen
layout: page
---
# Exercise 02: Shapes and TicketMachine

<p align="LEFT">
  This week&#8217;s lab work is intended to acquaint you with the BlueJ environment.
</p>

## Pre-lab

#### What to Bring to Lab

<div>
  <p>
    Please bring these exercises printed out or written out with you to lab. Please have your name on your page.
  </p>
  
  <p>
    <strong>P1. </strong>In the lecture we have talked about data types called int and String. Java has more predefined primitive data types. What are they? Record where you found this information.
  </p>
  
  <p>
    <strong>P2. </strong>What are the types of the following values (constants)?
  </p>
  
  <ul>
    <ul>
      <li>
      </li>
      <li>
        &#8220;hello&#8221;
      </li>
      <li>
        101
      </li>
      <li>
        -1
      </li>
      <li>
        true
      </li>
      <li>
        &#8220;true&#8221;
      </li>
      <li>
        &#8220;33&#8243;
      </li>
      <li>
        &#8217;3&#8242;
      </li>
      <li>
        3.1415
      </li>
    </ul>
  </ul>
  
  <p>
    <strong>P3.</strong> Pick up a book &#8211; you should have at least one at home. Is it an object or a class? If it is a class, name some objects. If it is an object, name the class. Give your reasoning.
  </p>
  
  <p>
    <strong>P4.</strong> What class does the following constructor belong to? How many formal parameters does it have? What are their types?
  </p>
  
  <blockquote>
    <p>
      public Book (String title, double price)
    </p>
  </blockquote>
  
  <p>
    If you will be using your own laptop in the lab, please install BlueJ before you come to lab. <a href="https://www.bluej.org/download/download.html">Downloads</a> are available for all platforms &#8211; it&#8217;s Java!
  </p>
</div>

## Assignment

**Shapes **

Download the [exercise source code from GitHub][1] (you can download the whole [exercise02 repository as a zip here][2]) and open up the **Figures** project.

1.  What do circles, triangles, and squares have in common? Do they have any differences?
2.  Create a circle, a triangle, and two squares. Oops, where is the second square? How can you make both visible on the screen?
3.  Make all four figures have the same color. What did you have to do? Did you make any mistakes doing this?
4.  Now make an interesting picture using these three shapes! Use at least 5 objects. Record what you had to do to get this scene set up. Take a screenshot for your report.
5.  What is wrong with the following constructor? 
    <pre>public TicketMachine (int ticketCost)
{
   int price = ticketCost;
   balance = 0;
   total = 0;
}</pre>

6.  Download the **TicketMachine** project [from Github][1] (you can download the whole [exercise02 repository as a zip here][2]) and open it in BlueJ. Replace the constructor with the constructor from 5 and try it out. Were you right? Record your results in your report.
7.  (For the bored) Okay, so you&#8217;ve been programming since before you could talk and this is child&#8217;s play. Explore a little deeper &#8211; can you make the shapes canvas larger? What happens when a figure hits the wall? How can you figure out where the wall is? Right, this is badly programmed. What would you have to do to get a shape to bounce off the wall? Can you do it?
8.  (For the really bored) Can you make the better-ticket-machine give proper change using Euro coins?
9.  Kara: Go back to the Greenfoot Scenario from last exercise. Look at the source code from Kara01 and KaraWorld01. Do these classes have constructors? If so, can you figure out what they do? (&#8220;super&#8221; calls the super class constructor).

**Writeup**

You will be doing your writeup at home. Use the notes that you took in your logbook. Submit your writeup as your post-lab to the Moodle area.

* * *

## Post-Lab,  
AKA What To Turn In

<div align="LEFT">
  Your completed assignment, submitted in Moodle as a pdf,<br /> should include:
</div>

*   a description of what you did during the lab, including a record of how you got BlueJ started and how you produced the pdf
*   a screenshot of your scene. How did you get a screenshot produced?
*   a description of what you tried with the TicketMachine and what you think is wrong with the code given.
*   the names and roles of any collaborators in any parts of the exercise.

<div align="LEFT">
  <p>
    Lab assignments are due the night before your next lab at 23.00, I want you to get some sleep the night before the next class. They may, of course, be turned in earlier. You hand them in by preparing the report in PDF and submitting it to Moodle.
  </p>
  
  <hr />
  
  <hr />
  
  <p>
    Adapted from <a href="https://www.f4.htw-berlin.de/~weberwu/info1/Labs/Lab0.shtml" rel="nofollow">https://www.f4.htw-berlin.de/~weberwu/info1/Labs/Lab0.shtml</a> , which was itself adapted from Objects First with Java, A Practical Introduction Using BlueJ. David Barnes & Michael Kölling, 2009
  </p>
</div>

 [1]: https://github.com/htw-imi-info1/exercise02-ws2016
 [2]: https://github.com/htw-imi-info1/exercise02-ws2016/zipball/master