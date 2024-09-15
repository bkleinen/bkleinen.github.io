---
title:  B15 Informatik 3 (Info3)
author: kleinen
layout: page
courseNavInt:
- title: 'Info3:'
  link: "/classes/ws2015/info3/"
- title: Schedule
  link: "/classes/ws2015/info3/schedule/"
- title: Labs
  link: "/classes/ws2015/info3/labs/"
- title: Code Examples
  link: "/classes/ws2015/info3/code/"
courseNavExt:
- title: Moodle
  link: https://moodle.htw-berlin.de/course/view.php?id=7348
- title: Github
  link: https://github.com/htw-imi-info3-archive
- title: LSF
  link: https://lsf.htw-berlin.de/qisserver/rds?state=wsearchv&search=2&veranstaltung.veranstid=107762
- title: Term Schedule
  link: https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&show=plan&P.vx=kurz&r_zuordabstgv.semvonint=3&r_zuordabstgv.sembisint=3&missing=allTerms&k_abstgv.abstgvnr=231
---

# Welcome!

Info 3 is the final module of the Info 1-3 series. In Info1, you learned programming, and the basics of object-oriented design of software. Info2 introduced you to advanced programming with data structures and algorithms. Info3 rounds that out by giving you insights into how to actually design and develop software with an eye for the overall picture.

This term, [Prof. Weber-Wulff](https://people.f4.htw-berlin.de/~weberwu/) and I will team-teach this class together for the first time. Mostly, DWW will be doing the Thursday lectures and I will be teaching on Fridays including the labs. The details can be found in
the [Schedule](schedule/).

# Contents


The Modulbeschreibung states the following goals for Info3:
<blockquote>

*  Die Studierenden haben gelernt, wie man ein komplexes Softwarebasiertes
   System analysiert, modelliert und eine L&ouml;sung entwirft.
*  Die Studierende k&ouml;nnen sicher mit Entwurfsmustern umgehen und sie in einer
   aktuellen Programmiersprachen praktisch umsetzen.
*  Die Studierenden haben Modellierungs-Notationen wie UML sicher anzuwenden
   gelernt.
*  Sie haben verstanden, wie sie die Methoden des Software- Engineerings auf der
   Entwicklung von Mediensysteme anwenden k&ouml;nnen.
*  Sie k&ouml;nnen Algorithmen der Lokalisierung und Internationalisierung von
   Software umsetzen.

</blockquote>

Thus, Software Engineering, Software System Design, the UML and Software Design Patterns are set as topics.
As one example of media system applications, we will look deeper into Web Application Development. Web Application Development has two main characteristics: it is a fast-changing environment, and agile development practices are pivotal. Furthermore, if web applications are successful, they become long-running software, thus the ability to maintain an old codebasis is also important. Therefore, we will also look into best practices to support agile software development ("Best Practices") as well as designing for ease of change ("Clean Code" and "Advanced Object Oriented Design").

Have a look at how this breaks down on this (tentative) [Schedule](schedule).

## Meetings and Due Dates

The class consists of 2x2h of lectures  and 4h of lab every fortnight (alternating group 1 & group 2).
Due dates:

* Lecture Notes of last week: Wednesday 22:00
* Lab Reports: Thursday 22:00 before your next lab.


## Grades

Your grade in Info3 will be a weighted mixture of the evaluated graded elements of the course (Lecture summaries, optionally tests on lab subjects and exam). The partial grades will be assessed as follows and then graded according to the [Grading Scale]({{ site.BaseURL }}/studies/grading/grading-scale):

* Lecture summaries: 10%
* Exam: 65%
* Lab Reports: 35% - all (n) have to be submitted to get these points!


### Lecture summaries
In the Moodle collaboration room you can find a section called "Lecture summaries". You are expected to write 5-10 complete sentences summarizing each lecture.
If I find plagiarisms of lecture summaries (especially from the Wikipedia), you will not get any credit for any lecture summary at all. Of the 28-30 lectures altogether, I expect you to write summaries for 24 of them to get the entire 10% - they are either done or not done, and not graded on content.
They can be in txt, pdf or markdown format.

## Lab Reports

As in Info1 and Info2, you need to write Lab Reports which will be graded.
More info about the Lab Reports can be found on the [Labs](labs) page.

## Exam

There will be a 2-hour online examination at the end of the semester.  The exam will be an on-line exam with two parts, a multiple-choice part and an essay / programming part.

## Course Literature

There is no textbook for this class. Here are the main books this class is based upon. You'll don't need to buy them for this class - there's plenty of information online. Some of them can be found in the library. You might want to buy them, though, as these are books that will not be outdated next year. One of them is even the same age as some of you.

| Reference                                                                                                                                         | Link                                                                                                                                                                                             |
|:--------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Ian Sommerville (2010). Software Engineering [9th edition]. Prentice Hall.                                                                        | [Available o Amazon](https://www.amazon.de/gp/product/0137053460/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=0137053460&linkCode=as2&tag=plagiatundimi-21&linkId=7XBTKFV6QLC7AV2Q)  |
| Sandi Metz: _Practical Object Oriented Design in Ruby: An Agile Primer._ Addison Wesley, 2012.                                                    | [Book Website](https://www.poodr.com/)                                                                                                                                                            |
| Robert C. Martin: _Clean Code: A Handbook of Agile Software Craftsmanship_. Prentice Hall, 2008.                                                  | [Homepage der Clean-Code Initiative](https://www.clean-code-developer.de/) (german)                                                                                                               |
| Robert C. Martin and Micah Martin: _Agile Principles, Patterns, and Practices in C#_. Prentice Hall, 2006                                         | [SOLID](http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod) Principles                                                                                                                     |
| Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides: _Design Patterns. Elements of Reusable Object-Oriented Software._ Addison-Wesley, 1994. | [Wikipedia](https://en.wikipedia.org/wiki/Software_design_pattern) is pretty good for them.                                                                                                       |
| Martin Fowler: _Patterns of Enterprise Application Architecture_. Addison-Wesley, 2002.                                                           | [EAA Website](https://martinfowler.com/eaaCatalog/)                                                                                                                                               |
| Armando Fox, David Patterson: Engineering Software as a Service: An Agile Approach Using Cloud Computing.                                         | [Available on Amazon](https://www.amazon.de/Engineering-Software-Service-Approach-Computing/dp/0984881247/ref=sr_1_1?ie=UTF8&qid=1442488699&sr=8-1&keywords=Engineering+Software+as+a+Service%3A) |
