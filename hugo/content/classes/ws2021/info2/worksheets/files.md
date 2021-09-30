---
title: Info 2 Worksheet 01 - Files
---

# A. How long can a String be?

In the lecture, I showed you a method for reading small files directly into a String,
which can only be used for small files. But what exactly is small? As it creates a String holding the whole file content,
it can't be bigger than the maximum length of a String in Java. But how long can
a String in Java be?

1. Find answers for that on the internet.
2. How would you go about just trying out how large a String can be on your machine?
   Write down a program for determining the maximum String size.
3. Implement the Program. How big can the String be? How long does it take to run?
4. How do you influence the Heap size of your java virtual machine?
4. Inspect the memory usage of your program using [Java VisualVM](https://docs.oracle.com/javase/7/docs/technotes/guides/visualvm/intro.html)

# B. NIO Classes and Interfaces

1. Find all the classes and interfaces mentioned in the examples in the last lecture.
2. What classes are System.out and System.in instances of?
3. Draw a diagram showing the relations between all those classes and interfaces. Use <<interface>> to
mark interfaces, and dotted lines to show that a class implements an interface. If you want to see examples, see [Figure 10 here](https://www.ibm.com/developerworks/rational/library/content/RationalEdge/sep04/bell/).


# C. How to test a program working on a file?

(Unit-)Testing programs that work on files is somewhat difficult, because the tests will
depend on matching test files residing (and be found) on the file system.
Let's say you want to write a program that counts the number of words contained in a
given file.

1. If the file is small enough to be read into a String, how could you test such
a program with a unit test without relying on a file?
2. If you have bigger files, what could be the interface of your word counting method such that you can test it both with a String and use it with a file?
3. Can you find an interface/signature such that your word counting method can be used with data coming from Sockets, Strings and Files alike?
4. How would you actually go about implementing the word count method?
