---
title: 'Info2: Exercise 10: Getting from A to B'
author: kleinen
layout: lab
---
This page is not yet available for WS 2021/22
{% comment %}
[![S-Bahn-Ring]({{ site.BaseURL }}/images/s-bahn.jpg)
<small class = "float-right">S-Bahn Ring generated with https://github.com/bkleinen/bvg-graph based on OpenStreetMap</small>



## Pre-Lab

***P1.*** Define an interface data type for a weighted graph. What methods does it need? What are the signatures?

***P2.*** Read on Depth-First-Search and Dijkstra Algorithm to compute the shortest and cheapest path in a given graph. We've covered them in class, also.

***P3.*** Your algorithm will probably need an adjacency matrix oder an adjacency list as its data structure. Think about how you would implement such a structure, if you only had linked lists available. What methods will you need for your data structure?

## Assignment

Read through everything first and think about who will do what. Our goal is to write a program to determine how to get from A to B, either fast or cheap. We first need some test data.

1. Design and implement a data type WeightedGraph that uses either an adjacency list or an adjacency matrix.
2. While one partner is doing this, the other one should write a class that reads a graph from a file. See notes on the file format and the example file below!
3. Now write a method that will take a graph and two vertices and find the *shortest* path between the vertices. Make a method to print out the path in a readable format.
4. Meanwhile, your partner writes a method that takes a graph, picks two vertices at random, and finds the *cheapest* path between the two.
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

## For the bored
5. Use your data structure to print out all the vertices n steps from a given vertex.
6. List the travel times to all stations from S Schöneweide.
7. Are there multiple minimal paths? Print them all (this is *very* tricky!).

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
All info on the lab reports can be found on the [Labs](https://bkleinen.github.io/classes/ss2020/info2/labs/) page.

Also answer the following questions in your report:
* Ex. 1: How are you going to store the weights?
* Ex. 3: What class will these methods belong to?
* Do your implementations return the correct results?
{% endcomment %}