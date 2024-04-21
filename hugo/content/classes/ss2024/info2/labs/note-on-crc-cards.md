---
title: 'A Note on the Notation of CRC Cards'
author: kleinen
draft: false
weight: 031
---

{{<mermaid>}} 
classDiagram
    class Student{

    }
    class Course{

    }
{{</ mermaid>}} 
{{<crc_card class_name ="Student" dependencies = "" >}}
Stores Information about Student (e.g. Matrikel, email, name, ...)
{{</ crc_card>}}

{{< crc_card class_name ="Course" dependencies = "Student" >}}
Stores 
- information about Course: Name, SWS, ECTS, Teacher
- list of enrolled Students
{{</ crc_card >}}
{{<mermaid>}} 
classDiagram
    Student ..> Course
    class Student{

    }
    class Course{

    }
{{</ mermaid>}} 