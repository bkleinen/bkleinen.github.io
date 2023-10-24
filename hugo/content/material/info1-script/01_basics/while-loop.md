---
title: "While Loop"
date: 2023-10-24
draft: false
weight: 200
tags: ['bluej']
courses: ['info1']
tags: ['info1-script', 'java']
courses: ['info1']
---

#### While Loop 

# Structure 

```java

// before loop

while(condition){
    // loop body
} 

// after loop
```



# shorter
```mermaid

flowchart TD
    S[Start]
    C{cond?}
    L(LOOP BODY)
    E(End)
    S --> C
    
    C --true?--> L
    L --> C
    C -->|false?| E
```
# longer version

```mermaid
flowchart TD
    A[Start]
    B(before loop)
    L(loop body)
    F(after loop)

    A --> B
    B --> C{condition true?}
    L --> C
    C --true--> L
    C -->|false| F
   
    F -->G[End]
```

    

```
## Examples

## Further Reading

https://docs.oracle.com/javase/tutorial/java/nutsandbolts/while.html