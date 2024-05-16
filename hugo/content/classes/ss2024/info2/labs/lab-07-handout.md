---
title: 'Lab 07 Handout: Infix/Prefix/Postfix'
author: kleinen
layout: lab
draft: false
weight: 71
---


## Definitions

**Infix:** The operator is placed between the two operands: 3 + 5

**Prefix:** The operator is placed before the two operands: + 3 5

**Postfix:** The operator is placed after the two operands: 3 5 +

## Calculator algorithm

  1. Convert infix to postfix
  2. Use stack to evaluate postfix
  3. Output top of stack (should be the only element)

### Convert infix to postfix algorithm

1. Given a sequence of tokens s and a result r
2. While s is not empty:
    1. Let t = next token.
    2. If t is an operand, r = r + t;
    3. If t is an open parenthesis, push it.
    4. If t is a close parenthesis:
        1. while top <> open parenthesis
            1. r = r + top
            2. pop
        2. pop // removes the open parenthesis
    5. If t is an operator
        1. while not (top is of lower precedence than t OR t is right associative and top is of equal precedence)
            1. r = r + top
            2. pop
        2. push t
3. while stack not empty
    1. r = r + top
    2. pop

### Evaluate postfix algorithm

1. Given a sequence of tokens s
2. While s is not empty:
    1. Let t = next token.
    2. If t is an operand, push it;
    3. If t is an operator:
        1. put the top into rhs, pop it;
        2. put the top into lhs, pop it;
        3. calculate lhs t rhs;
        4. push the result
3. The top of the stack is the result.
