---
title: 'Exercise 04: Rock Around the Clock'
author: kleinen
source: https://github.com/htw-imi-info1/exercise04
bk_ok_to_publish: true
source_ok: true
solution_pushed: true
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


## What To Hand In

You need to upload 2 Files to Moodle:

- Your Lab Report as PDF. For more Information on the report see [the Labs and Exercises page](../).
- The source code folder containing all BlueJ projects compressed with ZIP and the extension .zip

Lab assignments are due before your next lab at 22:00. They may, of course, be turned in earlier.

* * *

# Assignment
Source Code for this exercise:  [https://github.com/htw-imi-info1/exercise04](https://github.com/htw-imi-info1/exercise04)

You can use the **clock-display-with-gui** project which includes an auto-updating
Graphical User Interface for the ClockDisplay; to get a reference to the
ClockDisplay object instantiate the Clock first and call its getClockDisplay()
method (do not create them seperately as they will not be linked!) - or paste
the code below into BlueJ's Code Pad (View->Show Code Pad) and drag the red
object reference into BlueJ's Object Bench:
```java
Clock clock = new Clock();
clock.getClockDisplay()
```


## Clock time

0. Adapt the clock-display to display the time American-style (i.e. 12-hour clock and am / pm). You will have to include the am/pm in the time! Make sure your displayString has exactly this format: **06:15 am**. 
Also, if you want to introduce a new parameter to the setTime method, make sure that the old setTime method is still working using 24h-Format. Same goes for the constructor - add a third constructor if you want an alternative parameter list.
1. There are at least two ways in which you could have implemented exercise 0 - one keeps the time internally as a 24-hour clock and adapts the output, the other keeps the time internally as it is displayed. Whichever way you chose for exercise 0, implement the other in a new BlueJ project.
Name the project folders "clock-display-ampm-24" and "clock-display-ampm-int" respectively.
2. Which implementation was better? Why? Please elaborate.
3. Make your clock into an alarm clock by adding an alarm. You should be able to set the alarm time and turn the alarm on and off. When the clock reaches the alarm time, it should ring (writing "Riiiiiiiing!" to the terminal is sufficient).
4. (For the bored): Research "Threads" and make the clock increment automatically every second.

**Hint**
If you've completed Assignments 0-3, your ClockDisplay class should have these methods (possibly more):

```java
public class ClockDisplay
    {
        public ClockDisplay(){... }
        public ClockDisplay(int hour, int minute){... }
        public void timeTick(){... }
        public void setTime(int hour, int minute){... }
        public void setAlarmTime(int hour, int minute){... }
        public String getTime(){... }
    }
```
