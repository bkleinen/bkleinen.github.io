---
title: 'Info2: Exercise 10: Getting from A to B'
author: kleinen
layout: lab
---
## Pre-Lab

1. Define an abstract data type for a weighted graph. What methods does your ADT need? What are the signatures for the operators?
2. Find algorithms for determining the minimum path and the cheapest path between two nodes in a directed graph. I strongly suggest visiting a library (that is one of these places that keeps ancient books around). There are Algorithm and Data Structure books available in many languages. There is also an example in the Wikipedia, but it is not really easy to understand.
3. Your algorithm will probably need an adjacency matrix oder an adjacency list as its data structure. Think about how you would implement such a structure, if you only had linked lists available. What methods will you need for your data structure?
4. Briefly review generating random numbers.

## Assignment

Our goal is to write a program to determine how to get from A to B, either fast or cheap. We first need some test data.

1. Design and implement a data type WeightedGraph that uses either an adjacency list or an adjacency matrix. How are you going to store the weights?
2. While one partner is doing this, the other one should write a class that generates a random weighted graph. You will need a constructor that takes the number of vertices for your graph and the number of edges. For example, you might want to have RandomGraph (20, 45) generate a graph with 20 vertices and 40 edges which randomly connect those vertices. You should give your vertices names, either really boring ones like "A", "B", "C" or make up random names for example by choosing random words in Wikipedia articles. Generate the edges by choosing 2 vertices at random, and then assigning them a random weight. Use the WeightedGraph your partner is constructing.
3. Now write a method that will take a graph, pick two vertices at random, and find the ***shortest*** path between the vertices. Make a method to print out the path in a readable format. What class will these methods belong to?
4. Meanwhile, your partner writes a method that takes a graph, picks two vertices at random, and finds the ***cheapest*** path between the two.

5. (For the Bored) Are there multiple minimal paths? Print them all (this is *very* tricky!).
6. (For the Bored) Use your data structure to print out all the vertices n steps from a given vertex.


## Lab Report / What to turn in

Your report is due the day before your next lab (for exact times, please refer to moodle).

Submit a Report in PDF Format and the Source Code as Zipped file.

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.
Both of you need to upload the same report in PDF format to Moodle before the
deadline.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.
