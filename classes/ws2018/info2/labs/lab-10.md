---
title: 'Info2: Exercise 10: Getting from A to B'
author: kleinen
layout: lab
---

![S-Bahn-Ring](/images/s-bahn.jpg)
<small class = "float-right">S-Bahn Ring generated with https://github.com/bkleinen/bvg-graph based on OpenStreetMap</small>



## Pre-Lab

1. Define an interface data type for a weighted graph. What methods does it need? What are the signatures?
2. Read on Depth-First-Search and Dijkstra Algorithm to compute the shortest and cheapest path in a given graph. We've covered them in class, also.
3. Your algorithm will probably need an adjacency matrix oder an adjacency list as its data structure. Think about how you would implement such a structure, if you only had linked lists available. What methods will you need for your data structure?

## Assignment

Our goal is to write a program to determine how to get from A to B, either fast or cheap. We first need some test data.

1. Design and implement a data type WeightedGraph that uses either an adjacency list or an adjacency matrix. How are you going to store the weights?
2. While one partner is doing this, the other one should write a class that reads a graph from a file. See notes on the file format and the example file below!
3. Now write a method that will take a graph and two vertices and find the ***shortest*** path between the vertices. Make a method to print out the path in a readable format. What class will these methods belong to?
4. Meanwhile, your partner writes a method that takes a graph, picks two vertices at random, and finds the ***cheapest*** path between the two.
5. Starting from S Schöneweide Bhf (Berlin) compute the shortest travel times to the 4 Stations below.
<pre>

    060192001006, S Schöneweide Bhf (Berlin)

    060068201511, S+U Tempelhof (Berlin) (15 min Fahrtzeit laut BVG)
    060066102852, S Botanischer Garten (Berlin) 33 min
    060053301433, S Wannsee Bhf (Berlin) 43 min
    060120003653, S Ostkreuz Bhf (Berlin) 9 min

    060068201511, 060066102852, 060053301433, 060120003653
</pre>

Your Dijkstra implementations should yield the following travel times:
<pre>
    [[60068201511, 660], [60066102852, 1224], [60053301433, 1950], [60120003653, 504]]
</pre>

(Which is a plausible result given that the Algorithm/Graph doesn't consider Time spent in Stations.)

5. (For the Bored) Use your data structure to print out all the vertices n steps from a given vertex.
6. (For the Bored) List the travel times to all stations from S Schöneweide.
7. (For the Bored) Are there multiple minimal paths? Print them all (this is *very* tricky!).


## Graph Example and Test Data
### Test Data
[graph1.txt](../lab-10-data/graph1.txt) contains a small example graph to test both algorithms. For the Dijkstra Algorithm, [result1.txt](../lab-10-data/result1.txt) contains the cheapest path costs if you start at vertex 1.

### BVG U+S Bahn

The graph data in [bvg.txt](../lab-10-data/bvg.txt) contains a simple extract of the Berlin U+S Map and has the following format:

    <from-vertex> <to-vertex2>,<weight2> <to-vertex2>,<weight2>

That is, each line represents a vertex with all its outgoing edges, e.g.

    060049202852 060049201862,90 060066101852,108

means that there is an edge from 060049202852 to 060049201862 with weight 90, that is, the travel time from

060049202852, S Sundgauer Str. (Berlin) to 060049201862, S Zehlendorf (Berlin) is 90 sec.

You find the station names in [stations.txt](../lab-10-data/stations.txt)

The graph data was extracted from the GTFS-Data provided at [https://www.vbb.de/de/article/fahrplan/webservices/datensaetze/1186967.html](https://www.vbb.de/de/article/fahrplan/webservices/datensaetze/1186967.html) using the rails app [https://github.com/bkleinen/bvg-graph](https://github.com/bkleinen/bvg-graph)

## Lab Report / What to turn in

Your report is due the day before your next lab (for exact times, please refer to moodle).

Submit a Report in PDF Format and the Source Code as Zipped file.

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.
Both of you need to upload the same report in PDF and zipped source format to Moodle before the
deadline.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.
