---
title: 'Lab 07: Reverse Polish Notation'
author: kleinen
layout: lab
draft: false
source: https://github.com/htw-imi-info2/Lab07_ReversePolishNotation
weight: 70
---

## Pre-Lab

Source code scaffold for this exercise: {{< source >}}

***P1.*** Make sure that you understand postfix evaluation. If you do the complete Pre-Lab you will be able to understand the algorithms given in the [hand out](../lab-07-handout).

***P2.*** What is the order of precedence for the operators "+", "-", "\*", "/", "^"? If we wanted to include "(" and ")" in this order, where would each of them be?

***P3.*** &#321;ukasiewicz was a Polish logician, so his notation for parentheses-free expressions is often called Reverse Polish Notation. To get your brain in gear, convert the following expressions to RPN! What are the values of the expressions?

1. 1 * 2 + 3
2. 1 + 2 * 3
3. 1 + 2 - 3 ^ 4
4. 1 ^ 2 - 3 * 4
5. 1 + 2 * 3 - 4 ^ 5 + 6
6. ( 1 + 2 ) * 3 + ( 4 ^ ( 5 - 6 ) )
7. 1 + 2 + 3 / 4 + 5 + 6 * ( 7 + 8 )
8. 9 - 1 - 2 - 3 * 2 - 1
  

***P4.*** For the infix expression `a + b ^ c * d ^ e ^ f - g - h / ( i + j )`, do the following:

1. Show how to generate the corresponding postfix expression.
2. Show how to evaluate the resulting postfix expression.

***P5.*** Explain, in general terms, how unary operators can be incorporated into the expression evaluators. Assume that the unary operators precede their operands and have high precedence.

## Assignment

Source code scaffold for this exercise: {{< source >}}

### Preparation
1. Read through all of the exercises before starting.
2. You can use this IntelliJ project {{< source >}} as a scaffold for your solution - it already includes a lot of test cases as well as the interfaces. You can fork it directly on github or clone it and push it to GitLab. (Make sure that
your repository is private!)
3. This is a lot of work, so I suggest that your group works on exercises 1-4 in parallel. So split up the work.
5. As the Scaffold already has individual classes with matching interfaces, you shouldn't run in merge conflicts
(as you edit different files).
6. pull and push regularly.
7. Then you get back together to do the remaining exercises.

### Part 1: Implement a Stack
  - Implement a class Stack.java as discussed in the lecture, using a *linked list* of objects that you implement yourself.
  - Your class should include both an exception on stack underflow.

  Attention:
  - Don't use the Stack or LinkedList that is already available in the Java Collections Library.
  - Try and type it in yourself, not just copy the handout.

### Part 2: Implement a Scanner
  - implement a scanner that divides a string in infix notation into tokens.
  You will need to access the individual tokens (usually a character, unless you encounter numbers with more than one digits!).

### Part 3: Implement InfixToPostfix
  - Implement the `toPostfix` method in ```Infix.java``` 
that converts an infix expression which is presented as a `String` to a `String` representing a postfix expression.
  You will need a Stack for this, luckily your team is currently in the process of making a stack.


### Part 4: Implement Postfix
Now Implement the `evaluate()` method in `Postfix.java` class.
that takes a `String`  representing a postfix expression and determines the value represented by that expression. 
Throw an exception if your input is not well-formed.

***Do not go on before you are sure that this is working correctly!***


### Part 5: UI
Now add another method that reads a string from the console, evaluates the result and prints the result to the console.

## For the bored
  5. Once this works for digits, go on and parse multidigit ```Integers``` out of the ```String```. Can you do it for ```double```  values as well? If you are still bored, parse mixed expressions (```doubles```  and ```ints```  in the same expression).

  6. How can you convert prefix to postfix? Find an algorithm and implement it. Can you handle unary operators like - or ! as well?

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.
