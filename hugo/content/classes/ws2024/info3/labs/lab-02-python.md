---
title: '2 - Learning Python'
author: kleinen
draft: true
weight: 20
---

As always, you need to prepare a report together and each hand in this same report in moodle.

## Part 1: Python Learning with Unit Tests

Continue the collaborative work on the Python Learning Repository: [https://github.com/htw-imi-info3/python-learning](https://github.com/htw-imi-info3/python-learning). 

** note that you need write permissions for the repository! I'll add everyone to the team on github in the labs. **

This part can be done together, but each person must have their own topic/file and each one must commit a new file to the repo and review two other files. However, you can (and should) help each other and discuss them in your group. 

Don't necessarily try to finish this part first - you will have questions while working on part 2 & 3 which will easily generate new ideas for your contribution.


- if you already drew a topic during the lecture, [create an issue for it](https://github.com/htw-imi-info3/python-learning/issues/new), and assign it to yourself.
- if you haven't picked a topic yet, choose any other one that interests you and has not already been picked ([check the issues first to avoid duplicates](https://github.com/htw-imi-info3/python-learning/issues)!).
- prepare a file "about/test_xy.py" that demonstrates your topic with a unit test as discussed in class
- when done, push it (with "closes #NNN" to automatically close the issue) and
-  create a new issue requesting two reviews for your file.
- pick and do *two* reviews. Each one reviews two different files and each file gets two reviews from different people. 
- during the review, check for duplicates. Consolidate them if needed - if they are exactly the same thing - or differentiate them properly - e.g. if there is a test_loops.py and test_for.py and rename the test_loop to the specific loop it demonstrates. Or consolidate them into one file. 
- at least one of the reviews should be for another group.
- while reviewing, edit/improve the file, add more examples - whatever seems useful and helpful to you.
- commit and push your review. if your review is the second review, you can add a "closes #001" (issue number) to the commit

Document your github login, created and reviewed files for each group member. Apart from this documentation, there does not need to be any linkage between your github login and your real name.

This is as much about working with git and github as it is about learning python. The files/examples can be short and small, but try to create something together that works as a joint python cheat-sheet for the following assignments.

There will be some chaos. Try to resolve it by talking to each other either in person and/or using the github issues.

Remember, the examples/files should contain unit tests. [Here's an example](https://github.com/htw-imi-info3/python-learning/issues/1).

## Part 2: Small Python Exercises
This should be done together.

1. List Comprehension: 
    create a list of numbers between 1 and 20 (list1), then, using [List Comprehension](https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions):
    - create a list containing the squares of list1 
    - create a list with only the even values in list1

2. Sorting:
   - create your own datatype (class) - you may want to read ahead and do something that relates to your example for part 3.
   - make it sortable, put it in a list and sort the list.

## Part 3: Lambdas and List Comprehensions Applied

This should be done together. Create a Python script that does something useful with some files on your computer,
 e.g. find all duplicate Photos (mp3s, etc):

1. Find all relevant files on your disk/in a certain directory. Pass the directory in as a parameter.
    Use [glob](https://docs.python.org/3/library/glob.html) to generate the list of files.
2. Define "Identical Photos / Duplicate Files" for you - how to you check if two files
    contain the same photo? (hint: an usual approach is to compare file name, creation date and/or md5 hash)
3. Sketch the algorithm to detect and document duplicate files in pseudo code
3. Create a data structure that supports detection and documentation of the duplicate files. 
   (This will usually be a class or namedtuple to represent the files and some collection) 
4. Implement the script completely.
4. How do you test your script?
5. for the bored: how would you go about actually deleting the duplicate files? (be careful with that part, obviously.)

Feel free to do something else with files as long as your example contains glob and a non-trivial internal data structure.

## Part 4: Python Project Idea Collection

The next lab will be a larger python script project for which you can pick the topic (and team) freely. Use this week as preparation to collect some Ideas for what you would like to do, for inspiration read through
 the [Table of Contents](https://automatetheboringstuff.com/#toc) of [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/) by Al Sweigart.

You can pitch your project Idea in the next lab.

# Write Up and Hand in.

Upload the Report as PDF and the link to your github repository for Part 2 & 3 in Moodle.
Part 4 does not need to be included

The lab is due at 22:00 on the evening before your next lab.



   