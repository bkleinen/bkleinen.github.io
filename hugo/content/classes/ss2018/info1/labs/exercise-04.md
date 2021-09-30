---
title: 'Exercise 04: Rock Around the Clock'
author: kleinen
layout: lab
---

[![Clock](../../images/clock-stockholm-6085686394-320.jpg)](https://www.flickr.com/photos/arjanrichter/6085686394)
<small class = "float-right">Katarina Elevator in Stockholm, Foto by [Arjan Richter](https://www.flickr.com/photos/arjanrichter/6085686394)</small>


This week's lab work is intended to get you to implement parts of a class that is given for you. You are also to begin to see the idea of modularization, that is, splitting up code into classes.

## Pre-lab

<span class = "attention">
Prepare your prelab before coming to class! We will talk about it briefly.
</span>

**P1.** Which of the following expressions returns true? After writing your answers on paper, open the CodePad in BlueJ and try it out.

| Expression                            | Your Answer                                                                                                                                                                                                  | Actual Value                                                                                                                                                                                                 |
|:--------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ! (4 < 5)                             | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| ! false                               |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| (2>2)                                 |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| (4==4) && (1<0)                       |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| (34 != 33) && !false                  |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| (43 < 42) && (rabbitCount > dogCount) |                                                                                                                                                                                                              |                                                                                                                                                                                                              |
| test = (3 < 4)                        |                                                                                                                                                                                                              |                                                                                                                                                                                                              |

**P2.** Write an expression using boolean variables a and b that evaluates to true when either a and b are both true or both false.

**P3.** Write an expression using boolean variables a and b that evaluates to true when only one of a and b is true, and which is false if a and b are both true or both false. This is called the _exclusive-or_.

**P4.** Consider the expression (a && b). Write an equivalent expression (one that evaluates to true at exactly the same values for a and b) without using the && operator.

**P5.** Americans are kind of strange about numbers and units. They write the days backwards, they use pounds and inches instead of kilograms and centimeters, and they have this bizarre 12-hour clock they use with "am" and "pm".

* What time is "12:00 am" on the German (24-hour) clock?
* What time is "12:00 pm"?
* What time is "03:00 am"?
* What time is "05:30 pm"?


## Post-Lab, AKA What To Turn In

You need to upload 2 Files to Moodle:

- your Lab Report as PDF with the extension .pdf
- the source code folder containing the BlueJ projects compressed with ZIP and the extension .zip
- Your Lab Report should include:

    - the names and roles of any collaborators in any parts of the exercise.
    - a description of what you did during the lab, including a record of what worked, what problems you encountered.
    - The discussion of which implemenation version was better, 1 or 2.
    - A brief summary of what you learned
    - A record of how long you needed for this lab

<span class = "attention">
You should work on this exercise in groups of 2-3 people.
Put all your names on the head of the report and in the author's comment of
the Source Code and all hand in the same files.
</span>

Lab assignments are due before your next lab at 22:00. They may, of course, be turned in earlier.

* * *

# Assignment
Source Code for this exercise:  [https://github.com/htw-imi-info1/exercise04](https://github.com/htw-imi-info1/exercise04)

**Clock time**

1. Adapt the clock-display to display the time American-style (i.e. 12-hour clock and am / pm). You will have to include the am/pm in the time! As I will run automatic tests, make sure your displayString has exactly this format:
    <pre>06:15 am</pre>
Also, if you want to introduce a new parameter to the setTime method, make sure that the old setTime method is still working using 24h-Format. Same goes for the constructor - add a third one if you want an alternative parameter list.
2. There are at least two ways in which you could have implemented exercise 1 - one keeps the time internally as a 24-hour clock and adapts the output, the other keeps the time internally as it is displayed. Whichever way you chose for exercise 1, implement the other in a new BlueJ project.
Name the folders clock-display-ampm-24 and clock-display-ampm-int respectively.
3. Which implementation was better? Why?
4. Make your clock into an alarm clock by adding an alarm. You should be able to set the alarm time and turn the alarm on and off. When the clock reaches the alarm time, it should ring - writing "Riiiiiiiing!" to the terminal is sufficient. If you've completed Assignments 1-3, your ClockDisplay class should have these methods (possibly more):

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

4. (For the bored - not obligatory): Research Threads and make the clock increment automatically every second.
