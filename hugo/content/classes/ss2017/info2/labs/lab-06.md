---
title: 'Info2: Exercise 06: Reverse Polish Notation'
author: kleinen
layout: lab
---
## Pre-Lab

  1. Make sure that you understand [postfix evaluation](../lab-06-handout).

  2. [ 	&#321;ukasiewicz](/broken_link) was a Polish logician, so his notation for parentheses-free expressions is often called Reverse Polish Notation. To get your brain in gear, convert the following expressions to RPN! What are the values of the expressions?

    1. 1 * 2 + 3
    2. 1 + 2 * 3
    3. 1 + 2 - 3 ^ 4
    4. 1 ^ 2 - 3 * 4
    5. 1 + 2 * 3 - 4 ^ 5 + 6
    6. ( 1 + 2 ) * 3 + ( 4 ^ ( 5 - 6 ) )
    7. 1 + 2 + 3 / 4 + 5 + 6 * ( 7 + 8 )
    8. 9 - 1 - 2 - 3 * 2 - 1
  

  3. For the infix expression `a + b ^ c * d ^ e ^ f - g - h / ( i + j )`, do the following:

    1. Show how to generate the corresponding postfix expression.
    2. Show how to evaluate the resulting postfix expression.
  4. Explain, in general terms, how unary operators can be incorporated into the expression evaluators. Assume that the unary operators precede their operands and have high precedence.

## Assignment
Read through **all** of the exercises before starting! Oh dear, this is a lot of work. I guess we can't play one-person-types-while-the-other-looks-on this week.... I would **strongly** suggest that one person get exercise 1 to work while the other one starts exercise 2. Then you exchange code,and voilà, it works! Now you can get back together to do the third exercise.

  1. Implement a class Stack.java as discussed in the lecture, using a **linked list** of objects that you implement yourself! Don't use the Stack or LinkedList that is available in the Java Collections Library. Try and type it in yourself, not just copy the handout. How will you test this? Your class should include both an exception on stack underflow as well as stack overflow. Will you really need both exceptions? Why or why not? Override the ```toString()```method to provide a useful way of printing a stack. Now make it generic, so it can take values of any type. Coordinate your interface with your partner.


  2. Implement a class ```Postfix.java```that has a method public int evaluate (String pfx){...}
     that takes a `String` representing a postfix expression and determines the value represented by that expression. You will need to access the individual characters of the string and store them in a stack. This is necessary for the evaluation, luckily your partner is currently in the process of making one. Build a testclass and check the postfix expressions you did in the finger exercises. If there is a difference between the value computed and the value expected, either you were wrong, or the implementation is wrong or both. <font color="#FF0000"><br>

***Do not go on before you are sure that this is working correctly!***

  3. Now add another method to the ```Postfix.java```class: ```public String infixToPostfix (String ifx){...}``` that converts an infix expression which is presented as a ```String```to a``` String```representing a postfix expression! Throw an exception if your input is not well-formed.

  4. Now add another method that reads a string from the console, evaluates the result and prints the result to the console.

  5. (For the bored) Once this works for digits, go on and parse multidigit ```Integers``` out of the ```String```. Can you do it for ```double```  values as well? If you are still bored, parse mixed expressions (```doubles```  and ```ints```  in the same expression).

  6. (For the really bored) How can you convert prefix to postfix? Find an algorithm and implement it. Can you handle unary operators like - or ! as well?

You can use this eclipse project [Lab06_ReversePolishNotation](https://github.com/htw-imi-info2/Lab06_ReversePolishNotation) as a scaffold for your solution - it already includes a lot of test cases as well as the interfaces.

Work in groups of two, each of you submitting the same report, detailing who did what part of the work.

## Lab Report / What to turn in

Your report is due the day before your next lab (for exact times, please refer to moodle).

As in Informatics 1, I am more interested in process than in product,
although we are now getting more interested in products as well.
Your report should include any collaborators on top of the first page,
summarize what you learned,
and note the time you invested in this exercise.
Both of you need to upload the same report in PDF and zipped source format to Moodle before the
deadline.

### Special Questions for your report
How many lines of code did you write for each class? Record this statistic in your report.
