---
title: "Conditional Statement"
date: 2023-10-21
draft: true
weight: 100
tags: ['bluej']
courses: ['info1']
tags: ['info1-script', 'java']
courses: ['info1']
---

https://docs.oracle.com/javase/tutorial/java/nutsandbolts/if.html

```java

// statements before conditional

if(condition){
    // statements in if-part
} else {
    // statements in else-part
}

// statements after after conditional
```


```mermaid
flowchart TD
    A[Start]
    B(// statements before conditional)
    D(// statements in if-part)
    E(// statements in else-part)
    F(// statements after after conditional)

    A --> B
    B --> C{condition true?}
    C --true--> D
    C -->|false| E
    D & E --> F
    F -->G[End]
```