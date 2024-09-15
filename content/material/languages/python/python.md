---
title: "Notes on Learning Python"
date: 2021-10-08T21:32:10+02:00
draft: false
weight: 2
tags: ['python']
courses: ['info2', 'info3']
languages: ['python']
---


## Some Notes and Tips on Getting Started with the Python Programming Language

There are many, and many good Python resources available, many of them for
free - after all, it's the most frequently used programming language for
introductionary courses.

[See Python Resources](../python-resources/)

## Suggested Path for Info3 & Info3

As we are already using IntelliJ IDEA, using the Python Flavour of IntelliJ IDEA called "PyCharm" doesn't have that steep of a learning curve.

https://www.jetbrains.com/pycharm-edu/

 PyCharm Community Edition comes with a nice interactive
Python Course. You can ~~either install/use PyCharm Edu or~~ install the EduTools
plugin for PyCharm Professional.

0. Go to [https://www.jetbrains.com/pycharm-edu/](https://www.jetbrains.com/pycharm-edu/) for a pointer to the interactive course
1. Video Intro: [Start learning with PyCharm Edu - YouTube](https://www.youtube.com/watch?v=LjecpkIvJFc)
2. Install Pycharm Edu - via the JetBrains Toolbox if you already have that,
   or download it here: [PyCharm Edu](https://www.jetbrains.com/de-de/pycharm-edu/)
3. you will need a working python - see
   [https://www.python.org/downloads/](https://www.python.org/downloads/) -
   installation and select it in
   Preferences -> Python Interpreter -> Preferences (gears upper right) Add… or Show All…
4. PyCharm will install a virtualenv for the project under `.venv`

While Python might be a beginner-friendly language, installing Python properly certainly is not.
While the basic installation steps are straightforward, you most probably will
need to sort out your installation(s) at some point. See my "Notes on Installing Python"
below.

### Further Tips

You might want to put the project under version control to be able to see a summary of your changes using git!

While you work through the course, the course files (*.yaml) are also modified. To put the python files in a separate commit, you could do:

```bash
# git add Introduction/**/*.py
# git commit -m "Introduction - py files"
```

and then commit the rest (check with `git status`that there are just yaml-files left.

```bash
# git add .
# git commit -m "Variables - course files"
```

## Installing packages

If you install packages with pip/pip3, you need to make sure that you use the
right python context / installation!
As PyCharm usually installs an own virtualenv per project, packages need to be
installed in this virtualenv. This can be done by installing packages using
the PyCharm interface. To do so, open `View -> Tool Windows -> Python Packages`
Documentation: [Install, uninstall, and upgrade packages | PyCharm](https://www.jetbrains.com/help/pycharm/installing-uninstalling-and-upgrading-packages.html#packages-tool-window)


## Installing Python

Here are some notes on what I learned installing it on MacOs in case you want to dig into it.
(If it runs for now, you might want to do that at a later point).

Mac OS comes with a Python 2 installation which should not be removed. You will want
to add a current Python 3 installation. This can either be done with homebrew
or by using the MacOs Package available here:
[Python Releases for macOS | Python.org](https://www.python.org/downloads/macos/)
I decided on the latter and installed Python 3.10. Some of my homebrew packages
depend on Python 3.9, so I need to keep that version as well as the MacOS
python installation.

This results in three different python installations and the need to always be
sure which one you're using and to make sure that packages are indeed installed
where you want them to be installed!

### Checking your Python Installation and the Path

To find out which python version will be used you can use the command `which`:

```bash
ok htw/courses/info3 # which python3
/Library/Frameworks/Python.framework/Versions/3.10/bin/python3
ok htw/courses/info3 # which pip3
/Library/Frameworks/Python.framework/Versions/3.10/bin/pip3
```

This looks about right - to check where pip installs its packages, you can list
the packages and then get the path for one, e.g.

```bash
ok htw/courses/info3 # pip3 list
Package           Version
----------------- --------
attrs             21.2.0
...
Scrapy            2.5.1
```

and then use pip show to check the installation location of the package:

```bash

ok htw/courses/info3 # pip3 show Scrapy
Name: Scrapy
Version: 2.5.1
Summary: A high-level Web Crawling and Web Scraping framework
...
Location: /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages
...
```


### Checking your path

If the default python version is not the one you want or expected, it is
not the first one found in your path.
To check your path, use

```bash
echo $PATH
```

if you replace the colons with newlines it's easier to see:

```bash
echo $PATH | sed -e "s/:/\n/g"
```

### Python Versions on my machine

Apart from Homebrew, it boils down to the System 2.7 and my newly installed 3.10:

```bash
ok ~ # ls /Library/Frameworks/Python.framework/Versions
3.10	Current
ok ~ # ls /System/Library/Frameworks/Python.framework/Versions
2.3	2.5	2.6	2.7	Current
```

`/usr/bin/python` points to the os installation.

```bash
ok ~ # ls -l /usr/bin/python*
lrwxr-xr-x  1 root  wheel      75 Jan  1  2020 /usr/bin/python -> ../../System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7
lrwxr-xr-x  1 root  wheel      82 Jan  1  2020 /usr/bin/python-config -> ../../System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7-config
lrwxr-xr-x  1 root  wheel      75 Jan  1  2020 /usr/bin/python2 -> ../../System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7
lrwxr-xr-x  1 root  wheel      75 Jan  1  2020 /usr/bin/python2.7 -> ../../System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7
lrwxr-xr-x  1 root  wheel      82 Jan  1  2020 /usr/bin/python2.7-config -> ../../System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7-config
-rwxr-xr-x  1 root  wheel  137616 Jan  1  2020 /usr/bin/python3
```

`/usr/local/bin/python` points to the 3.10 installation:

```bash
ok ~ # ls -lart /usr/local/bin/python3*
lrwxr-xr-x  1 root  wheel  78 Oct 21 14:26 /usr/local/bin/python3-intel64 -> ../../../Library/Frameworks/Python.framework/Versions/3.10/bin/python3-intel64
lrwxr-xr-x  1 root  wheel  70 Oct 21 14:26 /usr/local/bin/python3 -> ../../../Library/Frameworks/Python.framework/Versions/3.10/bin/python3
```

#### Plus the Homebrew installation...

... which can be accessed via symlinks in  `/usr/local/opt/python*` which point to HomeBrews´ cellar:

```bash
brew deps --tree --installed
brew info python3
```

```bash
ok ~ # ls -lart   /usr/local/opt/python@3*
lrwxr-xr-x  1 kleinen  admin  28 Oct 21 14:31 /usr/local/opt/python@3.9 -> ../Cellar/python@3.9/3.9.7_1
lrwxr-xr-x  1 kleinen  admin  28 Oct 21 14:31 /usr/local/opt/python@3 -> ../Cellar/python@3.9/3.9.7_1
lrwxr-xr-x  1 kleinen  admin  30 Nov  7 11:59 /usr/local/opt/python@3.10 -> ../Cellar/python@3.10/3.10.0_2
```

Together with all the symlinks (I've only shown a part of them here) this
results in a rather long and confusing list that PyCharm generates
to select the correct Python interpreter!

Also; I expect that the next update will struggle to get ahead in the path and
thus change my default python.

### IntelliJ/Virtualenv

in PyCharm, you'll either let IntelliJ create or use a given vitualenv environment.
This basically fixates the python environment for this project by creating a
folder with a link to the appropriate binaries - independent from the path -
and a folder for the installed packages:

```bash

ok  (main✗)python/virtualenv/pycharm-virtualenv # ls
bin		lib		pyvenv.cfg

ok  (main✗)python/virtualenv/pycharm-virtualenv # ls -lart bin
total 112
lrwxr-xr-x   1 kleinen  staff    62 Nov 14 20:30 python -> /Library/Frameworks/Python.framework/Versions/3.10/bin/python3
...

ok  (main✗)python/virtualenv/pycharm-virtualenv # ls -lart lib/python3.10/site-packages/
__pycache__/                  _virtualenv.py                pip-21.1.2.dist-info/         setuptools/                   wheel/
_distutils_hack/              distutils-precedence.pth      pip-21.1.2.virtualenv         setuptools-57.0.0.dist-info/  wheel-0.36.2.dist-info/
_virtualenv.pth               pip/                          pkg_resources/                setuptools-57.0.0.virtualenv  wheel-0.36.2.virtualenv
```

Which means that, if you want to run your PyCharm scripts from the command line in the same context
(e.g. to give them run-time parameters without fiddling with runtime configurations), you'll need
to use this one. This can be done easiest by using the Terminal integrated in IntelliJ/PyCharm.
