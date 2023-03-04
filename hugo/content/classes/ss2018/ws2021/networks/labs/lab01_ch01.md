---
title: Lab 01 - Nginx & HTTP
author: kleinen
draft: false
---

## Part 1: Set up a Real Web Server on a Virtual Machine

We will do this part together in lab, where I will provide each group with
a virtual server hosted at the HTW - you will install and configure nginx
on port 80 on these machines.

### Linux / Shell Resources

- Here's the link to the very brief intro I wrote:
[Setting up a Debian Webserver](/material/ops/debian-server/)
- This is my recommendation for an introductionary book:
[LinuxCommand.org: Learning the shell.](https://linuxcommand.org/lc3_learning_the_shell.php#contents)
- If you prefer videos, this
[Linux Essentials for Ethical Hackers - Full InfoSec Course - YouTube](https://www.youtube.com/watch?v=1hvVcEhcbLM)
and this [Linux for Ethical Hackers (Kali Linux Tutorial) - YouTube](https://www.youtube.com/watch?v=lZAoFs75_cs)
seem reasonable.
- Note that you are on Debian 11, commands may differ - check the [Debian Reference](https://www.debian.org/doc/manuals/debian-reference/).

## Part 2: Set up Homepages

For each one in your group, set up a homepage that is accessible via
`http://<servername>/~<username>` for each of your team members. The
server roots should be under `~/.public_html` or ``~/public_html`

## Part 3: Wireshark Lab: Getting Started

We will be doing the [Wiresharks Labs](http://gaia.cs.umass.edu/kurose_ross/wireshark.php) from the book.
Get the "[Getting Started v8.1](http://www-net.cs.umass.edu/wireshark-labs/Wireshark_Intro_v8.1.docx)"
Lab from Kurose's Website and work through it.

Include the answers to the questions in your report; instead of printing the
two packets, copy the text from a preview / pdf and include them in your report.
You will need the first one for Part 4!

## Part 4: Hack http

Extract the first two lines of the HTTP GET requests issued in Part 2 (e.g. from
the printouts), open a telnet session on the host on port 80 and send the get
request manually. You'll need the first two lines (the get and the host) and
issue two more empty lines.

Try the same with your own nginx server. Include the results in your report.

### Lab Report

Prepare a Lab Report together as PDF structured like this Lab Assignment.
You may work on the reports in flexible teams of 2-3 students.

Always put the names of all contributing people on your report.

** put your server name in your report! **

Each one of you has to hand in the completed Report individually in moodle
by Friday 17:00 after the second lab meeting!

In your report, describe what you did and what you found,
 as well as errors or problems you've encountered.
