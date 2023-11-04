---
title: 'Exercise 04: Rock Around the Clock'
author: kleinen
source: https://github.com/htw-imi-info1/chapter03
draft: false
---

[![Clock](../../images/clock-stockholm-6085686394-320.jpg)](https://www.flickr.com/photos/arjanrichter/6085686394)
<small class = "float-right">Katarina Elevator in Stockholm, Foto by [Arjan Richter](https://www.flickr.com/photos/arjanrichter/6085686394)</small>

This week's lab work is intended to get you to implement parts of a class that is given for you. You are also to begin to see the idea of modularization, that is, splitting up code into classes.

## Pre-lab

<span class = "attention">
Prepare your prelab before coming to class! Doing the pre-lab will save you time during the lab.
</span>

**P0.** Which of the following expressions returns true? After writing your answers on paper, open the CodePad in BlueJ and try it out.

| Expression                            | Your Answer                                                                                                                                                                                                  | Actual Value                                                                                                                                                                                                 |
|:--------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ! (4 < 5)                             | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| ! false                               |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| (2>2)                                 |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| (4==4) && (1<0)                       |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| (34 != 33) && !false                  |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| (43 < 42) && (rabbitCount > dogCount) |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| test = (3 < 4)                        |                                                                                                                                                                                                              |                                                                                                                                                                                                              |

**P1.** Write an expression using boolean variables a and b that evaluates to true when either a and b are both true or both false.

**P2.** Write an expression using boolean variables a and b that evaluates to true when only one of a and b is true, and which is false if a and b are both true or both false. This is called the _exclusive-or_.

**P3.** Consider the expression (a && b). Write an equivalent expression (one that evaluates to true at exactly the same values for a and b) without using the && operator.

**P4.** Americans are kind of strange about numbers and units. They write the days backwards, they use pounds and inches instead of kilograms and centimeters, and they have this bizarre 12-hour clock they use with "am" and "pm".

* What time is "12:00 am" on the German (24-hour) clock?
* What time is "12:00 pm"?
* What time is "03:00 am"?
* What time is "05:30 pm"?

**P5.** write a method that computes the 12hrs-clock **hour** value from the 24hrs-clock hour value.

**P5.** write a method that takes the 24hrs-clock hour value as a parameter and returns the correct value for "am"/"pm" for the 12-hrs clock

## What To Hand In

You need to upload 2 Files to Moodle:

- Your Lab Report as PDF. For more Information on the report see [the Labs and Exercises page](../).
- The source code folder containing all BlueJ projects compressed with ZIP and the extension .zip

Lab assignments are due before your next lab at 22:00. They may, of course, be turned in earlier.

* * *

# Assignment
Source Code for this exercise: 
{{<source>}}
specifically the LED Display in the BlueJ Project [book-projects/clock-display-leds](https://github.com/htw-imi-info1/chapter03/tree/main/book-projects/clock-display-leds).

Here's an example how to use the LedDisplay:

```java
LedDisplay ld = new LedDisplay();
ld.start(); // this starts the automatic clock update 
ld.toggleTicker(); // toggles between timeTicks every second and faster timeTicks (for testing)
ld.setTickerSpeed(100); // make it real fast - 100 ms
ld.stop(); // to stop the automatic timeTicks for manual testing like so:
ld.setTime(11,59);
ld.timeTick();
ld.setTime(23,59);
ld.timeTick();
```

Note that - in difference to the original book example - the ClockDisplay stores the time in an int field `minutesInDay`, not in the various NumberDisplays!


## Part 1: Clock time

1. Adapt the simple ClockDisplay (Class ClockDisplay) to "display" the time American-style (i.e. 12-hour clock and am / pm) (display meaning store it in the field displayString) You will have to include the am/pm in the time! Make sure your displayString has exactly the format as in this example: `06:15 am`. 
**Note that you only need to modify the method updateDisplay()!!**


2. Now, do the same for LedDisplay. It only has two methods, now you need to extend both of them to add the am/pm part.
    - note that there is a boolean constant  `WITH_AM_PM` in ClockDisplay that needs to be set to true to get a wider LEDDisplay with space for the am/pm part.
    - you can also use it to be able to switch between both modes, but this is optional.
    - NumberDisplay has a method `public void updateDisplay(String twoChars)`
      that you can use to display the am/pm part - simply pass "am" or "pm".


3. Make your clock into an alarm clock by adding an alarm. You should be able to set the alarm time and turn the alarm on and off. When the clock reaches the alarm time, it should ring (writing "Riiiiiiiing!" to the terminal is sufficient).



### Part 2: Completing the KaraClock

This builds on the preparation exercises done during the last labs.
The code repository is still [https://github.com/htw-imi-info1/kara-clock-lab](https://github.com/htw-imi-info1/kara-clock-lab) - the same as last week. You find an overview of all kara clock exercises in [karaclock-complete](../karaclock-complete)

All you have to add is a method that can set the Digit's value to 
enable the setTime() method: 

{{< snippet "snippets/karaclock/06_initialize.md" >}}

#### Now, your clock should work! 
{{< snippet "snippets/karaclock/07_kara_clock.md" >}}
{{< snippet "snippets/karaclock/08_add_am_pm.md" >}}

Make sure 
[1. Multi-Move](../karaclock-complete/#1-multi-move)
and 
[2. Move up and Count](../karaclock-complete/#2-move-up-and-count) which you should have done in last week's lab or in class.

There is a special repo with the scaffold for all KaraClock exercises: [https://github.com/htw-imi-info1/kara-clock-lab](https://github.com/htw-imi-info1/kara-clock-lab) 
