---
title: About this Site
author: kleinen
layout: page
---

## How this site was made

Although this site is nothing special, I made it in a way that eases maintenance for me - its main purpose is publishing mostly textual information to students, and I wanted to do it in the most simple and efficient way.

First, I decided I wanted to use [markdown](http://daringfireball.net/projects/markdown/) rather than editing HTML directly, or using a CMS which stores the information/text in some obscure way making it hard to backup, version or reuse content.

[Github Pages](http://pages.github.com/) offer a great solution to what I wanted - just pushing to the repository triggers a site build.

* [Source for this Site](https://github.com/bkleinen/bkleinen.github.io) - if you find a typo and want to let me know the cool way, [send me a pull request](https://help.github.com/articles/using-pull-requests). But be beware, you might find content there that is not yet meant to be published - especially the exercises from former semesters. Don't start working on them, I might decide to change them and they don't become official before I link them from the classes' page!


This site is also deployed to [http://people.f4.htw-berlin.de/~kleinen/](http://people.f4.htw-berlin.de/~kleinen/).

## Jekyll

This site uses Jekyll as site generator - producing a static HTML site out of markdown sources
and layout templates.

* [Jekyll](http://jekyllrb.com/)

* On Github, Jekyll is triggered automatically on each push to the repository
http://github.com/bkleinen/bkleinen.github.io and publishes the page to
http://bkleinen.github.io
* for publishing to [http://people.f4.htw-berlin.de/~kleinen/](http://people.f4.htw-berlin.de/~kleinen/) I use this script: [_bin/deploy-htw.sh](https://github.com/bkleinen/bkleinen.github.io/blob/master/_bin/deploy-htw.sh)
* locally, I run

        jekyll serve -w
  to have the site served on localhost:4000 and automatically rebuilt on every file save.

* redcarpet: For Markdown Processing, [redcarpet](https://github.com/vmg/redcarpet) is used.

## Sass preprocessing

To ease working on the css stylesheets, I also use [Sass](http://sass-lang.com/) preprocessing.

As of Jekyll 2.2.0, this is part of jekyll. So I updated my site to use the built-in Sass support. To do so, only the sass/scss files go into /css and need to start with the following lines to trigger the files beeing handled by jekyll:

    ---
    ---

all included files needed to be moved to the \_sass subdirectory.

* http://jekyllrb.com/docs/assets/
* http://sass-lang.com/tutorial.daswarmalhtmlundsollswiederwerden
* http://de.selfhtml.org for css basics

## redcarpet---


Some notes about Redcarpet Markdown - see
https://github.com/vmg/redcarpet

## lists
1. eins
2. zwei
  1. zwei a
  2. zwei b
3. drei
4. vier
  1. vier a
  2. vier b
5. fuenf
