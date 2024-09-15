---
title: Hugo Markdown
author: B. Kleinen
tools: ['hugo']
tags: ['markdown']
courses: []
draft: false
toc: true
---

This is something in between a playground and a cheatsheet for hugo markdown.

## Markdown in Hugo

https://gohugo.io/getting-started/configuration-markup/

1. ~~strikethrough~~
2. ~~~strikethrough~~~ <- disappears
3. ~not strikethrough~

[https://www.markdownguide.org/](https://www.markdownguide.org/)

[https://www.markdownguide.org/tools/hugo/](https://www.markdownguide.org/tools/hugo/)

## Ordered Lists

[https://www.markdownguide.org/basic-syntax#ordered-lists](https://www.markdownguide.org/basic-syntax#ordered-lists)

1. One
    1. Ident Sublists 4 Spaces or 1 Tab more
    23. Numbering does not have to be correct in the source
        1. But the first number matters
        42. second 42 is not a 42
    23. Without a one it is not even recognized as a list
        42. But the first number matters
        42. second 42 is not a 43        
2. Two

## Code in Lists

1. One
    1. Ident Sublists 4 Spaces or 1 Tab more
    23. Numbering does not have to be correct in the source
        1. But the first number matters
        42. second 42 is not a 42

                some code with in a list has to be indented 8 spaces
    23. Without a one it is not even recognized as a list
        `            some code inline`
        1. But the first number matters
        42. second 42 is not a 43        
2. Two
