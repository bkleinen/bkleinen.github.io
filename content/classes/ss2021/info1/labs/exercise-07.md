---
title: 'Exercise 07: Lambda Functions'
author: kleinen
layout: lab
---
<!--<span class = "attention">Not yet reviewed and published for SoSe 2021 Term!</span>-->

<figure class = "figure">
   <img class="figure-img img-fluid" src="../../images/topis-9552387589_392a9b51c7_k.jpg"  alt="Topis">
  <figcaption class="figure-caption text-right">Foto of Topis by <a href="https://www.flickr.com/photos/maxh42/9552387589/"> Max Handelsman</a></figcaption>
</figure>

This week's lab work is intended help you better understand lambda functions.

## Pre-lab

Please bring these exercises printed out or written out and completed with you to lab. Doing the pre-lab will save you time during the lab.

**P0.** If you have a collection called myList, what Java code would you have to write to apply some code to each of the members in the list?

**P1.** Given the following code:

  ```java
public void printStudent (Student s)
{
     System.out.println (s.getDetails());
}
```

What is the equivalent lambda in Java? What syntax variations are possible?

**P2.** Given the animal-monitoring-v1 example, write pseudo-code for determining how many elephants a particular spotter saw on a particular day.

**P3.** Given the animal-monitoring-v1 example, write pseudo-code to create a stream containing only those sightings that have a count greater than 0.


## What To Hand In
Please hand in:
* zip-folder with your AnimalMonitor code
* lab report as pdf

Lab assignments are due on thursdays at 10pm.


## Assignment

0. Download the [animal-monitoring-v1](https://github.com/htw-imi-info1/exercise06-archived) project and check that it runs. Now rewrite the `printList` method in the AnimalMonitor class to use a lambda, just as we did in the lecture. Now apply each of the variations that you recorded in P1, compile them and run them. Did they all work? Record the results for your lab report.

1. Rewrite the `printSightingsOf` method in the AnimalMonitor class to use streams and lambdas. Test to make sure that your project still works as before.

2. Write a method `printSightingsInPeriod` in the `AnimalMonitor` class to print the details of all the sightings recorded within a certain period `periodID`, which is passed as a parameter to the method.

3. Write a method `printSightingsOfInPeriod` that uses two filter calls to print details of all the sightings of a particular animal made in a particular period — the method takes the `animal` name and the `periodID` as parameters. Does the order of the two filter calls matter in your solution? Justify your answer.

4. Write a method `printCounts` to print the counts of all sightings of a particular animal. Your method should use the map operations as part of the pipeline. If a pipeline contains a filter operation and a map operation, does the order of the operations matter to the final result? Justify your answer.

5. Rewrite the `printEndangered` method in your project to use streams and test that it works correctly. Detail how you tested this method in your report.

6. (For the bored) There is a special "::" notation in Java that can be used with lambdas. Research the syntax, and rewrite printSightingsBy to use this syntax. Does the operation of the method change?

7. (For the bored) Add a method to AnimalMonitor that takes two parameters, a spotter-ID and a day-ID and returns a String containing the names of the animals seen by the spotter on that particular day. You should include only animals whose sighting count is greater than zero. Now add a method that takes an animal and a day-ID and returns the spotters who saw this animal, if any, on that particular day.


<hr />
Adapted from:
[https://people.f4.htw-berlin.de/~weberwu/info1/Labs/Lab5.shtml](https://people.f4.htw-berlin.de/~weberwu/info1/Labs/Lab5.shtml)
