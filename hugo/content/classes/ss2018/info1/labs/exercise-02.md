---
title: 'Exercise 02: TicketMachine'
author: kleinen
layout: lab
---

![Book](../../images/ticket-5277919863_b741ccde84_b.jpg)
<small class = "float-right">Printed Ticket. [Sludge G](https://www.flickr.com/photos/sludgeulper/5277919863/)</small>


## Pre-lab

#### What to Bring to Lab

Please bring these exercises printed out or written out with you to lab. Please have your name on your page.

**P1.** What could be wrong with the following constructor? Don't execute it, think about it in your head.

```java
public TicketMachine (int ticketCost)
{
   int price = ticketCost;
   balance = 0;
   total = 0;
}
```

**P2.** How can you tell the difference between a method and a constructor just by looking at its header?

**P3.** What do you think would be printed if you altered the fourth statement of printTicket so that price also has quotes around it, as follows:
System.out.println("# " + "price" + " cents.");
Don't execute this, just write down your expectations.

**P4.** What about the following version?
`System.out.println("# price cents.");`

If you will be using your own laptop in the lab, please install [BlueJ](https://www.bluej.org/) before you come to lab. [BlueJ](https://www.bluej.org/) is available for all platforms - it's Java!

## Post-Lab, AKA What To Turn In

Your completed assignment, submitted in Moodle as a pdf,
should include:

* the names and roles of any collaborators in any parts of the exercise.
* a description of what you did during the lab, for each part of the assignment

Lab assignments are due the night before your next lab at 22:00. They may, of course, be turned in earlier. You hand them in by preparing the report in PDF and submitting it to Moodle.

## Assignment

Download the [exercise source code from GitHub][1] (you can download the whole [exercise02 repository as a zip here][2]).

1. Download the Ticket-Machine project and open it in BlueJ. Experiment with it like we did in the lecture and record your observations.  
2. Replace the constructor with the constructor from the pre-lab P1 and try it out. Were you right? What about the change given in P3 and P4? What happens? Record your results in your report.
3. Is it always necessary to have a semicolon at the end of a field declaration? Experiment via the editor and record your results.
4. If the name of `getBalance` is changed to `getAmount`, does the return statement in the body of the method also need to be changed for the code to compile? Try it out within BlueJ. What does this tell you about the name of an accessor method and the name of the field associated with it?
5. Write an accessor method `getTotal` in the TicketMachine class. The new method should return the value of the total field.
6. Try removing the return statement from the body of getPrice. What error message do you see now when you try compiling the classes?
7. Complete the following method, whose purpose is to subtract the value of its parameter from a field named price.

        ```java
        /**
         * Reduce price by the given amount.
         **/

        public void discount (int amount)
        {
        ...
        }
        ```

8. Add a method called `prompt` to the TicketMachine class. This should have a void return type and take no parameters. The body of the method should print the following single line of output: `Please insert the correct amount of money.`
9. Add the possibility to count the number of tickets sold. Include a method for outputting how many tickets have been sold, like we did in class.
10. Add a `printPrice` method to the TicketMachine class. This should have a void return type and take no parameters. The body of the method should print: `The price of a ticket is xyz cents.`  where xyz should be replaced by the value held in the price field when the method is called. Now create two ticket machines with differently priced tickets. Do calls to their `printPrice` methods show the same output, or different? How do you explain this effect?
11. Add and implement a method, `empty` , that simulates the effect of removing all money from the machine. This method should have a void return type, and its body should simply set the total field to zero. Does this method need to take any parameters? Test your method by creating a machine, inserting some money, printing some tickets, checking the total, and then emptying the machine. Is the empty method a mutator or an accessor?
12. (For the bored) Can you make the better-ticket-machine give proper change with a minimal amount of Euro coins?


* * *

Adapted from [https://people.f4.htw-berlin.de/~weberwu/info1/Labs/Lab1.shtml](https://people.f4.htw-berlin.de/~weberwu/info1/Labs/Lab1.shtml) , which was itself adapted from Objects First with Java, A Practical Introduction Using BlueJ. David Barnes & Michael K&ouml;lling, 2009

[1]: https://github.com/htw-imi-info1/exercise02
[2]: https://github.com/htw-imi-info1/exercise02/zipball/master
