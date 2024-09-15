---
title: 'Exercise 06: Lambda Functions'
author: kleinen
layout: lab
---


<figure class = "figure">
   <img class="figure-img img-fluid" src="../../images/topis-9552387589_392a9b51c7_k.jpg"  alt="Topis">
  <figcaption class="figure-caption text-right">Foto of Topis by <a href="https://www.flickr.com/photos/maxh42/9552387589/"> Max Handelsman</a></figcaption>
</figure>

## Pre-lab

This week's lab work is intended help you better understand lambda functions.

### What to Bring to Lab

Please bring these exercises printed out or written out with you to lab. Please have your name on your page.

**P1.** If you have a collection called myList, what Java code would you have to write to apply some code to each of the members in the list?

**P2.** Given the following code:

```java
public void printStudent (Student s)
{
     System.out.println (s.getDetails());
}
```

What is the equivalent lambda in Java? What syntax variations are possible?

**P3.** Given the animal-monitoring-v1 example, write pseudo-code for determining how many elephants a particular spotter saw on a particular day.

**P4.** Given the animal-monitoring-v1 example, write pseudo-code to create a stream containing only those sightings that have a count greater than 0.

## Post-Lab, AKA  What To Turn In

Your completed assignment, submitted in Moodle as a pdf, should include:
* A description of what you did during the lab, including a record of what worked, what problems you encountered, and answers to the questions as asked.
* A copy of the final version of your AnimalMonitor code.
The names and roles of any collaborators in any parts of the exercise.
* A record of how long you needed for this lab and what you learned.

Lab assignments are due before your next lab at 22.00. They may, of course, be turned in earlier. You hand them in by preparing the report in PDF and submitting it to Moodle.

## Assignment

1. Download the [animal-monitoring-v1](https://github.com/htw-imi-info1/exercise06-archived) project and check that it runs. Now rewrite the `printList` method in the AnimalMonitor class to use a lambda, just as we did in the lecture. Now apply each of the variations that you recorded in P2, compile them and run them. Did they all work? Record the results for your lab report.

2. Rewrite the `printSightingsOf` method in the AnimalMonitor class to use streams and lambdas. Test to make sure that your project still works as before.

3. Write a method `printSightingsInPeriod` in the `AnimalMonitor` class to print the details of all the sightings recorded within a certain period `periodID`, which is passed as a parameter to the method.

4. Write a method `printSightingsOfInPeriod` that uses two filter calls to print details of all the sightings of a particular animal made in a particular period—the method takes the `animal` name and the `periodID` as parameters. Does the order of the two filter calls matter in your solution? Justify your answer.

5. Write a method `printCounts` to print the counts of all sightings of a particular animal. Your method should use the map operations as part of the pipeline. If a pipeline contains a filter operation and a map operation, does the order of the operations matter to the final result? Justify your answer.

6. Rewrite the `printEndangered` method in your project to use streams and test that it works correctly. Detail how you tested this method in your report.

7. (For the bored) There is a special "::" notation in Java that can be used with lambdas. Research the syntax, and rewrite printSightingsBy to use this syntax. Does the operation of the method change?

8. (For the bored) Add a method to AnimalMonitor that takes two parameters, a spotter-ID and a day-ID and returns a String containing the names of the animals seen by the spotter on that particular day. You should include only animals whose sighting count is greater than zero. Now add a method that takes an animal and a day-ID and returns the spotters who saw this animal, if any, on that particular day.


<hr />
Adapted from:
[https://people.f4.htw-berlin.de/~weberwu/info1/Labs/Lab5.shtml](https://people.f4.htw-berlin.de/~weberwu/info1/Labs/Lab5.shtml)
