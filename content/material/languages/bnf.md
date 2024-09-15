---
title: "Backus-Naur-Form"
date: 2021-10-08T21:32:10+02:00
weight: 2
tags: ['grammar']
courses: ['info2']
---

## The Gist

You might see something like....

if your repository is

     https://github.com/<organisation>/<repo>

the entry in your `.git/config` would be

     [remote "origin"]
             url = git@github.com:<organisation>/<repo>.git

Where `\<organisation\>` should be replaced with the github organisation, e.g. "htw-imi-info2" and
`\<repo\>` with the name of the respective git repository, e.g. "python-jupyter-notebooks", yielding at this concrete text:

    https://github.com/htw-imi-info2/python-jupyter-notebooks

    [remote "origin"]
            url = git@github.com:htw-imi-info2/python-jupyter-notebooks.git

## Rewrite Rules

The convention of informally marking placeholders
that should be replaced with the delimiters `<` and `>` stems from the Backus-Naur-Form (BNF).

The Backus-Naur-Form (BNF) is
a notation for Context Free Grammars
that is often used to describe the Syntax of programming languages.

The above form informal as the `<` and `>` often just contain informative text about what should replace the placeholder, e.g. "repo" without a formal definition of possible replacements.

A rewriting rule in BNF may look like this:
`<expr> ::= <term>|<expr><addop><term>`

where all other terms in `<` and `>` - corresponding to Non-Terminal-Symbols in Context-Free-Grammars - are defined until they finally
can be replaced/rewritten with literals (Terminal Symbols in CFG), e.g. by the rewriting rule

`<digit> ::= "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"`

## Optional Parameters

The convention of enclosing e.g. optional parameters in square brackets ([..]) also has
it's roots in the BNF:

        "Optional items enclosed in square brackets: [<item-x>]."

## Links

- [BNF on Wikipedia (en)](https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form)
- [BNF Wikipedia (de)](https://de.wikipedia.org/wiki/Backus-Naur-Form)
