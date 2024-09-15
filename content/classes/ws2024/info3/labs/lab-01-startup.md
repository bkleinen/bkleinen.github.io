---
title: '1 - Lab Startup'
author: kleinen
draft: true
weight: 10
---

![Workplace](../images/workplace.jpg "workplace")
<small class = "float-right">Nerd Workplace. Foto by [slworking2](https://www.flickr.com/photos/slworking/8539204081/)</small>


This Startup Lab is about installing the tools you need for Python Programming and getting some (more) hands-on experience with git, so start with that. If bored, move on to try python.


### Which Computer to use?

In my experience, all Students prefer to use their own computers, which is possible as all Software
we'll use and need is free to use (at least for Students).

Most of the software should be available on the Lab computers, also:  [Link to Lab Page](https://imi-bachelor.htw-berlin.de/studium/labore/web-technology/)



## Part 1: Installation of Basic Tools

First 45 min of Lab. For the Assignment in Part 2 you'll only need a text editor and git, so make sure you got that first.

### Text Editor

You need a good basic text editor. Wordpad, Word etc. are no options, as they add format directives to the text.

- [Visual Studio Code](https://code.visualstudio.com/) has emerged as the go-to option.
- [vi](https://en.wikipedia.org/wiki/Vi) or vim - free, available everywhere, somewhat steeper learning curve - I recommend that you learn at least some basic vi commands as vi is available on all remote unix boxes you might happen to log in with ssh.


### Git & GitHub

* [Git](https://git-scm.com/) is the state-of-the-art Source Code Management Tool. Install the command line client for your platform, and maybe also a GUI Client, [which can all be found here](https://git-scm.com/download/).
* Sign up on [GitHub](https://github.com/) if you haven't already done so. See also
[Setting up Git](https://help.github.com/articles/set-up-git) from GitHub for a comprehensive documentation.

#### Markdown 

* Github translates markdown files automatically to HTML - That's how the README.md files you see in most repositories work. Read through the [Markdown](https://help.github.com/articles/markdown-basics) and maybe also the [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown) documentation.

#### Command Line
As a software developer, you need to know the basics of the command line - preferably in linux flavor!

You should at least be able to navigate the file system, look at directories, files and their contents, and start commands, at least your text editor, directly from there (which saves you the time of finding first your text editor and then the file again from some dreadful file open dialog).

See [Learning the Shell](https://linuxcommand.org/lc3_learning_the_shell.php) for an intro
and [Tobi's Cheat Sheet](https://pragtob.github.io/rails-beginner-cheatsheet/) for the absolute basics including Windows specials -

##### Windows
As I said, preferably linux style. That is, if you're working on Windows, rather learn the linux commands first and then adapt to the Windows equivalents. Or, better yet, install [Cygwin](https://www.cygwin.com/) which gives you a shell with all the linux commands on windows. You might also get away with just using git bash which comes with the windows git installation.

#### The Path

Speaking of that, you should understand the [PATH](https://www.digitalocean.com/community/tutorials/how-to-view-and-update-the-linux-path-environment-variable) (or [PATH](http://www.linfo.org/path_env_var.html) )- basically a list of directories the shell (the program that reads your commands in the command line) searches for the command.

Also, be aware that if you use Windows, programs like git, graphical git clients, cygwin and cmd have different opinions on where your 'home directory' is.


## Install Python & PyCharm

- [Python](https://www.python.org/downloads/)
- [PyCharm](https://www.jetbrains.com/de-de/pycharm/download/) - Community should do, but you can get Professional for free as a student.

## For the Bored

- if you have done all that, have a look at the book [Automate the boring Stuff with Python](https://automatetheboringstuff.com/).


# Part 2: Git & Github Practice

45 min. I will draw groups of three for this lab. 

Sit close together with three computers. 
Set up a central github repo and try out

- sharing files and changes
- different workflows (see git slides)
- resolving merge conflicts
- rebasing, merging, fast-forwarding

For each of these tryouts, draw up a plan of your "experiment" and document how it went and if, any errors/obstacles and how you resolved them.
See the next section/ write up before you start!

If you're bored with that, I'm sure you'll find something that confuses you about git, e.g.

- combine the history of two repositories
- work with an upstream
- pull requests on github
- interactive rebase
- ....

# Write Up and Hand in.

For this lab, you need to hand in a report for the 2nd Part:
- include the url of your public or readable to me repo in the report and the designated field on moodle.
- for each experiment, provide a brief documentation of 
    - commands
    - sketch (workflow, repos, etc.)
    - obstacles and solutions if any

The lab is due at 22:00 on the evening before your next lab.



   