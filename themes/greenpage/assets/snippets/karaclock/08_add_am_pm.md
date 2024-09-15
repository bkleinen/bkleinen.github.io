#### 8. The 12 Hour Clock with am/pm

To show all 24 hours, a 12 hours am/pm is a good solution for the Kara-Clock! 

The first step of changing it to a proper 12h clock with am/pm display has
already been made in `ClockDisplayWorld12Hours`. It uses a special `HoursDisplayKara`
for the hours, which shows a "12" instead of the "0". Find the `getDisplayText(int count)`
to see how this is implemented. You can use this as a guide to create 
an AmPmDisplayKara that is also a subclass of DigitDisplayKara and only overrides the `public String getDisplayText(int count)`
(note that this is only used to set the text below the lower tree line.)

Use `ClockDisplayWorldAmPm` (which is a copy of `ClockDisplayWorld12Hours`) to implement this.
Find and read its `prepareColumns()` method to understand how the clock display is built and what you need
to do to add another digit. 

Technically, the ClockDisplayWorld is just a number with different rollOverLimits for each digit. 
The place value has to be the product of the previous (mostly right) digit and its place value:

|            | am/pm | hours | ten minutes | minutes |
|:-----------|:------|:------|:------------|:--------|
| limit      | 2     | 12    | 6           | 10      |
| placeValue | 12*60 | 6*10  | 10*1        | 1       |

Your task is to add the am/pm display.

It is just another digit with a place value of 12 hours,
and should show am/pm instead of 0 and 1. 
Also, it has a special (quite illogical) position at the end, eg. 12:00 am. 

To enable the DisplayKara to find and walk  to the next DigitDisplayKara, each digit stores the number of steps (which may be 
negative as it is simply passed to multiMove() ) in its field `stepsToNextDigit` which can be set with the constructor:

```java
public DigitDisplayKara(int rollOverLimit, long placeValue, int stepsToNextDigit)
``````


![KaraClock](/karaclock/08_add_am_pm/karaclock.jpg) 