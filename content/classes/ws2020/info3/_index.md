---
title:  B15 Informatik 3 (Info3)
author: kleinen
layout: page
courseNavInt:
- title: Info3
  link: "/classes/ws2020/info3/"
- title: Assessment
  link: "/classes/ws2020/info3/continuous_assessment/"
- title: Schedule
  link: "/classes/ws2020/info3/schedule/"
- title: Labs
  link: "/classes/ws2020/info3/labs/"
courseNavExt:
- title: Moodle
  link: https://moodle.htw-berlin.de/course/view.php?id=28123
- title: SU in LSF
  link: https://lsf.htw-berlin.de/qisserver/rds?state=wsearchv&search=2&veranstaltung.veranstid=161201
- title: Labs in LSF
  link: https://lsf.htw-berlin.de/qisserver/rds?state=wsearchv&search=2&veranstaltung.veranstid=164935
- title: Semesterstundenplan im LSF
  link: https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&show=plan&P.vx=kurz&r_zuordabstgv.semvonint=3&r_zuordabstgv.sembisint=3&k_abstgv.abstgvnr=231
- title: Lecture Source Code
  link: https://gl-imi.f4.htw-berlin.de/info3-code-stubs-and-samples
---

# Welcome!

Info 3 is the final module of the Informatics 1-3 series. In Info1, you learned about programming, and the basics of object-oriented design of software. Info2 introduced you to advanced programming with data structures and algorithms. Info3 rounds that out by giving you insights into how to actually design and develop software with an eye for the overall picture.

# Contents

The Studienordnung states the following skills for Informatics 3:
<pre>

*  Die Studierenden haben gelernt, wie man ein komplexes softwarebasiertes
   System analysiert, modelliert und eine L&ouml;sung entwirft.
*  Die Studierende k&ouml;nnen sicher mit Entwurfsmustern umgehen und sie in einer
   aktuellen Programmiersprachen praktisch umsetzen.
*  Die Studierenden haben Modellierungs-Notationen wie UML sicher anzuwenden
   gelernt.
*  Sie haben verstanden, wie sie die Methoden des Software- Engineerings auf der
   Entwicklung von Mediensysteme anwenden k&ouml;nnen.
*  Sie k&ouml;nnen Algorithmen der Lokalisierung und Internationalisierung von
   Software umsetzen.

</pre>


Thus, Software Engineering, Software System Design, the UML and Software Design Patterns are set as topics.
As one example of media system applications, we will look deeper into Web Application Development. Web Application Development has two main characteristics: it is a fast-changing environment, and agile development practices are pivotal. Furthermore, if web applications are successful, they become long-running software, thus the ability to maintain an old codebasis is also important. Therefore, we will also look into best practices to support agile software development ("Best Practices") as well as designing for ease of change ("Clean Code" and "Advanced Object Oriented Design").

Have a look at how this breaks down on this (tentative) [Schedule](schedule).

## Meetings and Due Dates

The class consists of 2x2h of lectures  and 2h of lab every week.
Lab exercises run for 2 weeks - there are two labs for each assignment.
This allows you to start within the first lab, get most of the work done during the
week and come back with your questions in the second lab.

Due dates:

* Lab Reports: See the Moodle hand-in field. Usually at Tuesday 10pm before the next lab with a new assignment.
* Oral Test: See the individual lab pages. Usually during the next lab with a new assignment.


## Grades

Your grade in Info3 will be a weighted mixture of the evaluated graded elements of the course and the exam. The partial grades will be assessed as follows and then graded according to the [Grading Scale]({{ site.BaseURL }}/studies/grading/grading-scale):

**Update Dec 3: Due to the ongoing COVID-19 situation, the Exam will be replaced
by an continuous assessment consisting of a couple of little project and report
assignments which can and need to be done individually at home** These take the
place of the exam, everything in the Lab and the complete grading scheme stays
the same:


Option 1: only Exam
* ~~Exam~~ [Continuous Assessment](./continuous_assessment) 100%
* all 7 lab reports need to be turned in before the exam

Option 2: Labs & Exam
* ~~Exam~~ [Continuous Assessment](./continuous_assessment) 50%
* Labs 50%
* all 7 lab reports need to be turned in before the exam

You don't have to decide which option you choose, the one that results in the better grade for you at the end of the
semester will automatically be picked.

### Labs
More Info about the parts that make up your lab grade can be found on the [Labs](labs) page.

The Labs grade is made up of three parts:

| Lab Part      |             | Points    |
|:--------------|:------------|:----------|
| Lab Hand ins: | (7 x 2P = ) | 14 Points |
| Oral Tests:   | (7 x 3P = ) | 21 Points |
| Peer Reviews: | (2 x 3P = ) | 6 Points  |
| Sum           |             | 41        |

## Exam

There will be a 2-hour online examination at the end of the semester.

## I have already taken Info3 last semester and passed the labs!

Congrats! Tell Prof. Kleinen and Prof. Weber-Wulff that you would like to keep your grade for the lab. It is recommended that you still do the labs of this semester for yourself (you can ask for help/ feedback of course) so you can learn about JavaScript (the topics of the lab can be in the exam).

## Course Literature

There is no textbook for this class. Here are the main books this class
is based upon. You'll don't need to buy them for this class - there's pl
enty of information online. Some of them can be found in the library.
You might want to buy them, though, as these are books that will not be
outdated next year. One of them is even the same age as some of you.

| Reference                                                                                                                                         | Link                                                                                                                                                                                              |
|:--------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Ian Sommerville (2010). Software Engineering [9th edition]. Prentice Hall.                                                                        | [Available o Amazon](https://www.amazon.de/gp/product/0137053460/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=0137053460&linkCode=as2&tag=plagiatundimi-21&linkId=7XBTKFV6QLC7AV2Q)  |
| Sandi Metz: 99 Bottles of OOP - second Edition                                                                                                    | [Book Website](https://sandimetz.com/99bottles) If you consider purchasing this book, email me for a discount code.                                                                               |
| Sandi Metz: _Practical Object Oriented Design in Ruby: An Agile Primer._ Addison Wesley, 2012.                                                    | [Book Website](https://www.poodr.com/)                                                                                                                                                            |
| Robert C. Martin: _Clean Code: A Handbook of Agile Software Craftsmanship_. Prentice Hall, 2008.                                                  | [Homepage der Clean-Code Initiative](https://www.clean-code-developer.de/) (german)                                                                                                               |
| Robert C. Martin and Micah Martin: _Agile Principles, Patterns, and Practices in C#_. Prentice Hall, 2006                                         | [SOLID](http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod) Principles                                                                                                                     |
| Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides: _Design Patterns. Elements of Reusable Object-Oriented Software._ Addison-Wesley, 1994. | [Wikipedia](https://en.wikipedia.org/wiki/Software_design_pattern) is pretty good for them.                                                                                                       |
| Martin Fowler: _Patterns of Enterprise Application Architecture_. Addison-Wesley, 2002.                                                           | [EAA Website](https://martinfowler.com/eaaCatalog/)                                                                                                                                               |
| Armando Fox, David Patterson: Engineering Software as a Service: An Agile Approach Using Cloud Computing.                                         | [Available on Amazon](https://www.amazon.de/Engineering-Software-Service-Approach-Computing/dp/0984881247/ref=sr_1_1?ie=UTF8&qid=1442488699&sr=8-1&keywords=Engineering+Software+as+a+Service%3A) |
