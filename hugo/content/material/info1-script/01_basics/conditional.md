---
title: "Conditional Statement"
date: 2023-10-21
draft: false
weight: 100
tags: ['bluej']
courses: ['info1']
tags: ['info1-script', 'java']
courses: ['info1']
---

#### Conditional Statement (if-then-else statement)

A conditional statement allows you to conditionally execute code parts based on a condition, either true or false or something that results in true or false (see boolean expression).
# Structure 

```java

// before conditional

if(condition){
    // if-part
} else {
    // else-part
}

// after conditional
```


```mermaid
flowchart TD
    A[Start]
    B(before conditional)
    D(if-part)
    E(else-part)
    F(after conditional)

    A --> B
    B --> C{condition true?}
    C --true--> D
    C -->|false| E
    D & E --> F
    F -->G[End]
```
## The else part can be omitted...
... if you don't need it. If the condition is false, the execution continues directly with the statements after the if-statement.

```java

// before conditional

if(condition){
    // if-part
} 

// after conditional
```


```mermaid
flowchart TD
    A[Start]
    B(before conditional)
    D(if-part)
    
    F(after conditional)

    A --> B
    B --> C{condition true?}
    C --true--> D
    D --> F
    C -->|false| F
    F -->G[End]
```

## Examples

#### 1. protective setter: only set field if value is above zero:

```java

public void setPoints(int newPoints){
    if(newPoints >= 0){
        points = newPoints; 
    }
}
```
#### 2. with printing to the command line:
```java
    boolean condition = true; 
    // ...
    System.out.println("before conditional");
    if (condition){
        System.out.println("if-part: condition was true!");
    }
    else {
        System.out.println("else-part: condition was false!");
    }
    System.out.println("after conditional");
    
```

## shorter mermaid if/else

```mermaid

flowchart TD
    S[Start]
    C{cond?}
    I(IF-PART)
    E(ELSE-PART)
    F(End)
    S --> C
    
    C --true?--> I
    C --false?--> E
    I & E --> F

```


## shorter mermaid if only

```mermaid

flowchart TD
    S[Start]
    C{cond?}
    I(IF-PART)
    
    F(End)
    S --> C
    C --true?--> I
    
    I --> F
    C --false?--> F

```
## Further Reading

https://docs.oracle.com/javase/tutorial/java/nutsandbolts/if.html