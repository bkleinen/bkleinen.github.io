---
title: Troubleshooting
author: kleinen
layout: page
tools: []
tags: ['practices']
courses: []
---
## Troubleshooting Steps for Rails

The Rails Framework consists of a complex combination of various tools.
There is no compilation step, everything is started from the command line.

As a consequence, things break at runtime, providing you with an informative
stack trace and error message that help you find the problem.

You need to learn how to read those stack traces and error messages.

Here are some pointers how to do it:

### 1. What is the exact error message?
Find the actual error message. Yes, that means you have to look at all those lines and read some of them. The error message is usually more at the beginning, so you might need to scroll all the way upwards.

Sometimes, it's more in the middle, or the original problem is more in the middle.
I'll provide examples as they occur.

### 2. Where did the error occur?
Usually, there is a stack trace right below the error message stating where exactly the error did occur. This might be in a gem you've never heard of. If it appears in your stack trace, you are using it, and it might be a good idea to have at least an idea what this gem is for. If it's in a gem or otherwise not in your code directly, read through the stacktrace until you find the place where you called that thing from your code. You'll learn about your gem dependencies on your way.

### 3. What happened?

Now you know the error, the spot in the gem or library and the spot in your source code where things go wrong. What are you trying to achieve, what goes
wrong? (e.g. Ah! I'm connecting to LDAP here. The error message was connection refused. So, the connection to the LDAP server couldn't be established...)

No you might be done, because the error became clear by looking at these three
things. If not, continue...

### 4. Check what you changed since it worked

If you run into an error with something that worked before, try to figure out what you changed - or changed in the environment - since it worked.
`git status` and `git diff` can help you with that, but there might be changes outside the source code.

### 5. Reach out for help

#### 5a. Google it/ Search on Stack Overflow

Google or search on StackOverflow for the exact error message (getting rid of any project specific parts first, but keeping to line numbers and gem versions in the messages/stack traces might be a good idea).

If you find something, check if the page describes the same thing. E.g. check those three things:

1. do the error messages match or differ in a significant way?
2. was it caused by the same action? (If not, it might still be applicable, but you will need to adapt the solution - e.g. if the error message was "env: ruby\\r: No such file or directory" you need to look into the rake file if it was caused by running `rake`, but in a respective other file if you tried to run another script! (but in any case, the problem is the windows line ending \\r that \*nix consideres part of the command name that is no no longer ruby but ruby\\r )
3. If it is an error message with a stack trace, is the same piece of software throwing it? Sometimes error messages are the same but come from completely different frameworks. If this is the case, you might still gather information from the solution, but again you need to keep that in mind.

#### 5b. Ask someone else

If you reach out or search for help, you need one other information:
__What did you do/call that led to the error message?__

Make sure you have all this information before you ask someone else for their time and attention. Sometimes, just describing the situation to someone else helps you to clarify what went wrong. If not, make sure to provide them with the
information you've collected so that they would not waste time trying things you've already tried.
