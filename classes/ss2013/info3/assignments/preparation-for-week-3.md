---
title: Preparation for Week 3
author: kleinen
layout: page
---

This week and in Exercise 2, we will start working on the web applications. Please use the time till Friday to gather some ideas about which web application you might want to develop! We will have a topic collection, discussion and decision in class on friday. Here are my current ideas, just for inspiration:

 *  DailyTasks: An application where a user can make a list of daily tasks (e.g. study English, cleaning kitchen, exercise) and check them off every day. Next step would be making the app "social" with friends, an activity feed and some means to help motivate each other keeping on track.
 *  Learn Student Names: An application that helps me a professor learn student names based on pictures in some index-card-learning style, e.g. with a certain number of repetitions that decreases as names are memorized etc.
 *  Classroom Ballot: a tool for anonymous ballots during class.

It is rather easy to create a website that shows and stores some information backed by a database in Rails. Your apps should be based on simple information storage and retrieval via the web (e.g. don't plan on creating a video editing application or a 3D Game, Rails is not good at that) and think of something that has some extra complexity, e.g. does some calculation based on the data, tracks user progress as in the Student Name Learning Application, gathers and visualizes data as in the Ballot idea, etc. Don't worry too much about limitations, though, as you'll be able to switch your topic later if you encounter a dead end. It will just serve as an example for discussing and practicing various topics and techniques around Enterprise Applications, Software Engineering and Patterns.

Then have a look at last semester's Class Diagram exercise below. Booch's method (which you already should have tried out in Info1) is one way to find candidates for classes. Have a look at it, give a class diagram for HTW a try and also write down a similar description for your application idea. Maybe you also want to give a class diagram for your app idea a try. The focus should be on getting some practice drawing these diagrams, not on detail and comprehensiveness. - old class diagram exercise - How do we pick candidate classes out of a description? Grady Booch suggested the following method:
Then have a look at last semester's Class Diagram exercise below. Booch's method (which you already should have tried out in Info1) is one way to find candidates for classes. Have a look at it, give a class diagram for HTW a try and also write down a similar description for your application idea. Maybe you also want to give a class diagram for your app idea a try. The focus should be on getting some practice drawing these diagrams, not on detail and comprehensiveness. - old class diagram exercise - How do we pick candidate classes out of a description? Grady Booch suggested the following method:

 *  Underline all the nouns (in an English language text) in one color, such as blue
 *  Underline all the verbs in another color, such as red
 *  Underline all the adjectives in a third color, such as green.

 The blue words are all candidate classes &ndash; they will not all be classes, but they are candidates. Take a lot of pieces of paper, and write each noun at the top of one of the pieces of paper and draw a line all across the paper underneath the word.

 The red words make good methods &ndash; they just need to be assigned to classes. Divide the rest of the paper in two pieces &ndash; write the verbs on the bottom part. Decorate with attributes as deemed necessary, which get written on the top piece.

 The green words can be attributes or relationships &ndash; distribute them accordingly.

 Does your diagram make sense? Resort the cards and the methods, making new cards and ripping up the old ones, until finally your diagram seems to be consistent. Draw it using a class diagram drawing tool!

 Here's a description of a system:


***

 The Fat Horse Travel World agency has asked you to provide a web-based system for their products, which consist of guided horse trips in Iceland. Users need to be able to search the trips offered and find information about when, how long, and where the trips will be, how expensive they are, and what kind of horses are used.

 ![Icelandic Horses](../../images/horses.gif "horses")


 There are short daily rides, longer wilderness tours, sightseeing tours, and riding instruction camps.

 The users should be able to reserve a trip online and to post comments and pictures of trips that they have taken to a guest book area. An administrator can remove comments and pictures as needed. Each trip has a general description of the route (given day-to-day) with text and some pictures, a description of the sleeping options, and the extra amenities such as baggage being driven ahead by bus. The description of the sleeping options includes the address of the hotel or farm house, if available, as well as the prices for the different types of rooms, or it includes the size of the tents used.

 With the dates for each trip there is also a flight schedule including departure dates and times for 10 different departure airports. There are prices given for one week trips for specific accomodation types and number of persons, and there are prices for extra persons and for extra weeks. There is also a list of the services such as airport transfers which are included in the price.

 A reservation will have a reservation number, the name and address of the customer and the names, birthdates, passport numbers, and addresses of all the travellers. The reservation will include departure and return date and a current status.

***

 Make a list of all class candidates in the previous text. Evaluate their suitability for classes based on the following criteria:

 *  do the instances of the class have attributes that are necessary in the system?
 *  is the information about the existence of instances of the class necessary?
 *  is the 'class' essential for the system?

 Make a list of candidate methods &ndash; include setter and getter methods for important information. Assign the methods to the classes selected.

 Now draw a class diagram using an UML-Tool or a pencil including attributes, methods and associations.

 * Class Diagrams: [https://www.agilemodeling.com/artifacts/classDiagram.htm](https://www.agilemodeling.com/artifacts/classDiagram.htm)
