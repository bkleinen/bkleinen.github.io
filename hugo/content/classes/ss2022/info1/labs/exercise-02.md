---
title: 'Exercise 02: TicketMachine'
author: kleinen
layout: lab
source: https://github.com/htw-imi-info1/exercise02
draft: false
bk_ok_to_publish: true
source_ok: true
solution_pushed: true
---

![Book](../../images/ticket-5277919863_b741ccde84_b.jpg)
<small class = "float-right">Printed Ticket. [Sludge G](https://www.flickr.com/photos/sludgeulper/5277919863/)</small>

Source code for this exercise: {{< source >}}

## Pre-lab

**0.** What could be wrong with the following constructor? Don't execute it, think about it in your head.

```java
public TicketMachine (int ticketCost)
{
   int price = ticketCost;
   balance = 0;
   total = 0;
}
```

**1.** How can you tell the difference between a method and a constructor just by looking at its header?

**2.** What do you think would be printed if you altered the fourth statement of printTicket so that price also has quotes around it, as follows:
System.out.println("# " + "price" + " cents.");
Don't execute this, just write down your expectations.

**3.** What about the following version?
`System.out.println("# price cents.");`


## Assignment

Download the [exercise source code from GitHub][1] (you can download the whole [exercise02 repository as a zip here][2]).

0. Download the Ticket-Machine project and open it in BlueJ. Experiment with it like we did in the lecture and record your observations.
1. Replace the constructor with the constructor from pre-lab exercise 0 and try it out. Were you right? What about the change given in pre lab exercises 2 and 3? What happens? Record your results in your report.
2. Is it always necessary to have a semicolon at the end of a field declaration? Experiment via the editor and record your results.
3. If the name of `getBalance` is changed to `getAmount`, does the return statement in the body of the method also need to be changed for the code to compile? Try it out within BlueJ. What does this tell you about the name of an accessor method and the name of the field associated with it?
4. Write an accessor method `getTotal` in the TicketMachine class. The new method should return the value of the total field.
5. Try removing the return statement from the body of getPrice. What error message do you see now when you try compiling the classes?
6. Complete the following method, whose purpose is to subtract the value of its parameter from a field named price.

```java
/**
 * Reduce price by the given amount.
 **/

public void discount (int amount)
{
...
}
```

7. Add a method called `prompt` to the TicketMachine class. This should have a void return type and take no parameters. The body of the method should print the following single line of output: `Please insert the correct amount of money.`
8. Add the possibility to count the number of tickets sold. Include a method for outputting how many tickets have been sold, like we did in class / as described in the textbook.
9. Add a `printPrice` method to the TicketMachine class. This should have a void return type and take no parameters. The body of the method should print: `The price of a ticket is xyz cents.`  where xyz should be replaced by the value held in the price field when the method is called. Now create two ticket machines with differently priced tickets. Do calls to their `printPrice` methods show the same output, or different? How do you explain this effect?
<!--10. Add and implement a method, `empty` , that simulates the effect of removing all money from the machine. This method should have a void return type, and its body should simply set the total field to zero. Does this method need to take any parameters? Test your method by creating a machine, inserting some money, printing some tickets, checking the total, and then emptying the machine. Is the empty method a mutator or an accessor?-->
10. (For the bored) Can you make the better-ticket-machine give proper change with a minimal amount of Euro coins?


## What to hand in

Hand in your lab report (pdf) and your code (zip) the night before the next lab, 10pm (22.00 Uhr). See [the Labs and Exercises page](../).


* * *

Adapted from [https://people.f4.htw-berlin.de/~weberwu/info1/site/Labs/Lab1.shtml](https://people.f4.htw-berlin.de/~weberwu/info1/site/site/Labs/Lab1.shtml) , which was itself adapted from Objects First with Java, A Practical Introduction Using BlueJ. David Barnes & Michael K&ouml;lling, 2009

[1]: https://github.com/htw-imi-info1/exercise02
[2]: https://github.com/htw-imi-info1/exercise02/zipball/main
