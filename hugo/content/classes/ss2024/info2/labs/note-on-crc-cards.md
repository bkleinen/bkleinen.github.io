---
title: 'Lab 03 Handout: A Note on the Notation of CRC Cards'
author: kleinen
draft: false
weight: 031
---

We've discussed the relationship between the Classes "Student" and "Course" (aka Module, Class) in last week's lab and lecture.

I've pointed out that if you change the syntax of the representation, e.g. because you use some kind of diagramming tool, you have to be careful not to loose any information.

if you consider these two CRC cards below, a CRC card contains information about these three things[^crc]:

- Class Name
- Responsibilities
- ~~Collaborators~~ Dependencies ([see below](#why-i-use-the-termdependencies-instead-of-collaborators))


#### CRC-Cards
Consider these two CRC-Cards:
{{<crc_card class_name ="Student" dependencies = "" >}}
Stores Information about Student (e.g. Matrikel, email, name, ...)
{{</ crc_card>}}

{{< crc_card class_name ="Course" dependencies = "Student" >}}
Stores 
- information about Course: Name, SWS, ECTS, Teacher
- list of enrolled Students
{{</ crc_card >}}

#### Class Diagram
This class diagram contains the same information: class names, responsibilities (in the form of method names) and a dependency: Course depends on Student. Note that this relationship has a direction!
{{<mermaid>}} 
classDiagram
    Student <.. Course
    class Student{
        getName()
        getMatrikel()
    }
    class Course{
        getName()
        getSWS()
        getECTS()
        getEnrolledStudents()
        
    }
{{</ mermaid>}} 

[^crc]: "CRC cards, which characterize objects by class name, responsibilities, and collaborators" in [Beck/Cunningham: A Laboratory For Teaching
Object-Oriented Thinking](https://c2.com/doc/oopsla89/paper.html)

## Why I use the term "Dependencies" instead of "Collaborators" to describe Dependencies between Objects

The german term "Kollaborateur" should not be used to describe dependencies between Objects, as its sole meaning is
in the sense of "someone who cooperates traitorously with an enemy", "traitor".[^koll] According to the [Pons](https://de.pons.com/%C3%BCbersetzung/englisch-deutsch/collaborator) and [Collins](https://www.collinsdictionary.com/de/worterbuch/englisch-deutsch/collaborator) Dictionaries, the English term "Collaborator" is primarily used in the sense of 
"Colleague", "Co-Worker" ("Mitarbeiter_in"), and only secondarly in the sense of "Traitor" -- someone who cooperates traitorously with an enemy. The [Pons Dictionary](https://de.pons.com/%C3%BCbersetzung/englisch-deutsch/collaborator) also list the translation "Nazi collaborator"/"Nazispitzel".

Thus, "Kollaborateur" is not a good choice to translate the word "Collaborator" to German, as "Mitarbeiter/in" or "Kollege/in" would be more accurate translations. And even if it was a correct translation, the above mentioned negative connotations are enough reason not to use it. 
I've never seen the terms "Mitarbeiter/in" or "Kollege/in" used for collaborating Objects[^co]. 

The most common -- and useful -- term for this relationship seems to me to be "**Dependency**". 
We say that a Class "A" depends on another Class "B" if the source code of "A" contains the name "B".

{{<mermaid>}} 
classDiagram
    A ..> B
{{</ mermaid>}} 


[^koll]: see for instance the [Duden definition of "Kollaborateur"](https://www.duden.de/rechtschreibung/Kollaborateur). [The Etymology of the Term "Kollaborateur" is described in more detail](https://www.dwds.de/wb/Kollaborateur) in the "[Digitales Wörterbuch der deutschen Sprache" www.dwds.de](https://www.dwds.de/)

[^co]: although "zusammenarbeitende Objekte" is a common translation for "cooperating objects"
