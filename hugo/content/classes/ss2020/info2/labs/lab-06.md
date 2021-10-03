---
title: 'Info2: Exercise 06: Reverse Polish Notation'
author: kleinen
layout: lab
---
## Pre-Lab

***P1.*** Make sure that you understand [postfix evaluation](../lab-06-handout). If you do the complete Pre-Lab you will be able to understand the algorithms given in the hand out.

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
Read through all of the exercises before starting. This is a lot of work, so I suggest that your group works on exercise 1 and exercise 2 in parallel. Then you exchange code and get back together to do the third exercise.

You can use this eclipse project [Lab06_ReversePolishNotation](https://github.com/LiFaytheGoblin/Lab06_ReversePolishNotation) as a scaffold for your solution - it already includes a lot of test cases as well as the interfaces.

### Part 1: Stack Class
  - Implement a class Stack.java as discussed in the lecture, using a *linked list* of objects that you implement yourself.
  - Your class should include both an exception on stack underflow as well as stack overflow.
  - Override the ```toString()```method to provide a useful way of printing a stack.
  - Now make it generic, so it can take values of any type. Coordinate your interface with your partner.
  
  Attention: 
  - Don't use the Stack or LinkedList that is already available in the Java Collections Library. 
  - Try and type it in yourself, not just copy the handout. 

### Part 2: Postfix Class
  - Implement a class ```Postfix.java```that has a method public int evaluate (String pfx){...}
  that takes a `String` representing a postfix expression and determines the value represented by that expression. 
  You will need to access the individual characters of the string and store them in a stack. 
  This is necessary for the evaluation, luckily your partner is currently in the process of making a stack. 
  - Build a testclass and check the postfix expressions you did in the finger exercises. If there is a difference between the value computed and the value expected, either you were wrong, or the implementation is wrong or both. 

***Do not go on before you are sure that this is working correctly!***

### Part 3: Infix to Postfix
Now add another method to the ```Postfix.java```class: ```public String infixToPostfix (String ifx){...}``` that converts an infix expression which is presented as a ```String```to a``` String```representing a postfix expression. Throw an exception if your input is not well-formed.

### Part 4: UI
Now add another method that reads a string from the console, evaluates the result and prints the result to the console.

## For the bored
  5. Once this works for digits, go on and parse multidigit ```Integers``` out of the ```String```. Can you do it for ```double```  values as well? If you are still bored, parse mixed expressions (```doubles```  and ```ints```  in the same expression).

  6. How can you convert prefix to postfix? Find an algorithm and implement it. Can you handle unary operators like - or ! as well?

## Lab Report / What to turn in
All info on the lab reports can be found on the [Labs]({{< relref "../labs" >}}) page.

Also answer the following questions in your report.

Additional questions for part 1:
- Will you really need both exceptions? Why or why not?

Please do not put answers for the pre-lab into the lab report. I will not look at them. The lab hangout is for discussing the pre-lab.
