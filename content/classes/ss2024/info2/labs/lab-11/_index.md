---
title: 'Lab 11: Getting from A to B'
author: kleinen
layout: lab
draft: false
weight: 110
---

![S-Bahn-Ring](/images/s-bahn.jpg)

<small>S-Bahn Ring generated with https://github.com/bkleinen/bvg-graph based on OpenStreetMap</small>


## Pre-Lab

***P1.*** Define an interface data type for a weighted graph. What methods does it need? What are the signatures?

***P2.*** Read up on Depth-First-Search to compute the shortest path in a given graph. Sketch the algorithm on paper. Do you have an idea how you could find the *shortest* path, instead of just a path?

***P3.*** Read up on the Dijkstra Algorithm to compute the cheapest (or fastest) path in a given graph. Sketch the algorithm on paper.

***P4.*** Your algorithm will probably need an adjacency matrix or an adjacency list as its data structure. Think about how you would implement such a structure, if you only had linked lists available. What methods will you need for your data structure?

## Assignment

Read through everything first and think about who will do what. Our goal is to write a program to determine how to get from A to B, either short or cheap. We first need some test data.

1. Design and implement a data type WeightedGraph that uses either an adjacency list or an adjacency matrix.
2. While one partner is doing this, the other one should write a class that reads a graph from a file. See notes on the file format and the example file below!
3. Meanwhile, your partner writes a method that takes a graph, picks two vertices at random, and finds the shortest path, that is, the one with the least travelling time.  Make a method to print out the path in a readable format.
4. Starting from S Schöneweide Bhf (Berlin) compute the shortest travel times to the 4 Stations below.
<pre>
    060192001006, S Schöneweide Bhf (Berlin)

    060068201511, S+U Tempelhof (Berlin) (15 min Fahrtzeit laut BVG)
    060066102852, S Botanischer Garten (Berlin) 33 min
    060053301433, S Wannsee Bhf (Berlin) 43 min
    060120003653, S Ostkreuz Bhf (Berlin) 9 min

    060068201511, 060066102852, 060053301433, 060120003653
</pre>

Your Dijkstra implementations should yield the following travel times:

    [[60068201511, 660], [60066102852, 1224], [60053301433, 1950], [60120003653, 504]]


(Which is a plausible result given that the graph doesn't consider time spent in stations.)

## For the bored
5. Use your data structure to print out all the vertices n steps from a given vertex.
6. List the travel times to all stations from S Schöneweide.
7. Are there multiple minimal paths? Print them all (this is *very* tricky!).

## Graph Example and Test Data
### Test Data
[graph1.txt](./graph1.txt) contains a small example graph to test both algorithms. For the Dijkstra Algorithm, [result1.txt](../result1.txt) contains the cheapest path costs if you start at vertex 1.

### BVG U+S Bahn

The graph data in [bvg.txt](./bvg.txt) contains a simple extract of the Berlin U+S Map and has the following format:

    <from-vertex> <to-vertex2>,<weight2> <to-vertex2>,<weight2>

That is, each line represents a vertex with all its outgoing edges, e.g.

    060049202852 060049201862,90 060066101852,108

means that there is an edge from 060049202852 to 060049201862 with weight 90, that is, the travel time from

060049202852, S Sundgauer Str. (Berlin) to 060049201862, S Zehlendorf (Berlin) is 90 sec.

You find the station names in [stations.txt](./stations.txt)

The graph data was extracted from the GTFS-Data provided at [https://daten.berlin.de/datensaetze/vbb-fahrplandaten-gtfs](https://daten.berlin.de/datensaetze/vbb-fahrplandaten-gtfs) using the rails app [https://github.com/bkleinen/bvg-graph](https://github.com/bkleinen/bvg-graph).
You can read about the GTFS format on [Wikipedia](https://de.wikipedia.org/wiki/General_Transit_Feed_Specification) or on the [GTFS für Deutschland](https://gtfs.de/) site. 


## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs](../../labs) page.

Also answer the following questions in your report:
* Ex. 1: How are you going to store the weights?
* Ex. 3: What class will these methods belong to?
* Do your implementations return the correct results?
