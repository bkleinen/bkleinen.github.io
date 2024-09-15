---
title: ClockDisplay Critique
author: kleinen
draft: false
tags: ['bluej', 'karaclock']
courses: []
weight: 30
---
{{<prev_next >}}

The ClockDisplay aims at showing object interaction, which it does.

## The problems I see are:

- it mixes Model and Representation. Furthermore, the Model or more simply put the stored state, which is the time the clocks shows at the moment, is distributed between three objects - a NumberDisplay for hours and minutes respectively, and the ClockDisplay holding the knowledge how to combine the two.

- also, the construction of the displayString is distributed between all objects - [see the updateDisplay() part of the timeTick sequence diagram.](../images/original_clock_display#original-version-timetick). Creating a String representation may of course be delegated, but for this example with the focus of displaying the whole clock, altering the display results in shotgun surgery.

- although examples need to be small, I feel that the simplification has gone too far, as the modularization does not only make sense any more, it also turns out to be quite complicated with two instances of the same class which
have to be used very differently. 

- The straightforward approach would be to get the system time (the model/state) and have the ClockDisplay just display the value.

- This would allow for several different representations of the current time - which is, of course, the division of Model and View introduced in Smalltalk, and constituting - together with the controller - the MVC architectural model, which is the basis for the discussion of design patterns by the GoF.

- While this is out of scope for an introductory programming class, I have the strong opinion that the examples should not contradict this central principle.

- Especially if a change has to be made to the ClockDisplay - as, for example, changing the display from a 24h clock to a 12h clock, students are lured down the wrong - or at least very difficult - path to try to distribute the state even more by adding a third element for the am/pm part.

## In more complex cases, the design may be valid

### Modularisation of a Clock Display

![](../images/led-digit.jpg)

The Modularization of a Time Display into several similar components showing a combination like hours and minutes or directly a single digit may be valid if used to control a physical display were several led displays are used. The example aims at this scenario, but with the given simplification that the "display" is a String field of ClockDisplay, the point is quite hard to see.

But, on the other hand, if this were the case, the shown modularization of the display makes sense. If based on single-digit led displays, it may even be easier to have ClockDisplay use the Displays directly and omit the NumberDisplay abstraction layer which combines two digits to hours and minutes.


![](../images/led-display-2.jpg)


The timeTick() and roll over logic does not really make sense with the led displays, however. `setTime(int,int)` would be sufficient as ClockDisplay's interface.

### When Storage and Display are the Same


The concepts of timeTick and rollOver do make sense if the storage and visualization are the same.
A simple example is the goal counter from table soccer: it stores and displays the number of goals at the same time. Thus, the `timeTick()` corresponds to moving one item, which keeps track of and shows the change in state at the same time. 

![Table Foosball Goal Counter](../images/goal_counter.jpg) 

<small class = "float-right">Photo by Hans, [Pixabay](https://pixabay.com/de/photos/tischfu%C3%9Fball-z%C3%A4hler-z%C3%A4hleinheit-167869)</small>

All of these displays can become full, where they may roll over, that is, reset to zero. The information may then be carried over to the next display/row, as with the Abacus, which even uses overflow  in  two different ways.

![](../images/abacus.jpg)

<small class = "float-right">Photo by arielphoto, [Pixabay](https://pixabay.com/de/photos/abakus-asiatische-kultur-z%C3%A4hlrahmen-7019994/)</small>

#### Water Clocks 
[Water clocks](https://en.wikipedia.org/wiki/Water_clock), which use water both to measure and display time, are one of the oldest time keeping devices. 
[Sandglasses](https://en.wikipedia.org/wiki/Marine_sandglass) are another common example for a device that measures & displays time with the same mechanism.

![](../images/255px-Simple_water_clock.svg.png)
![](../images/Marine_sandglass_MMM.jpg) 
##### Uhr der fließenden Zeit
Last not least, Berlin has a great modern water clock, the ["Uhr der fließenden Zeit"](https://de.wikipedia.org/wiki/Uhr_der_flie%C3%9Fenden_Zeit). It actually measures time using the water flow, and it even has two rollovers!

![](../images/330px-Flow_of_time_clock_Berlin.jpeg)

## Tracking and Displaying Time with Greenfoot Kara Leaves

Back to the ClockDisplay Example. As storage of numerical values and counting are straightforward even with the simplest computers, the time tick does not really make sense. Also, to implement a clock, the available system time should be used.
An Example of a device that keeps track and displays time with the same medium or device thus has to be somewhat artificial.

However, in Kara's simple world, Kara may use leaves to keep track of the passing of time, with the leaves put down
being the display of the current time. Below is a screenshot of an approach using two 12-step leaf counters, the first representing hours, the second minutes in 5min steps, and the last one am/pm. No state is stored apart from the leaves in the world, and neither are the rollover limits - they are simply represented by the positions of the trees which constitute the limitation of space for leaves.
[See more on Kara ClockDisplays on this page.](../kara-clock-display)


![Kara ClockDisplay](../images/kara-clockdisplay.jpg)


[2]: https://www.bluej.org/objects-first/