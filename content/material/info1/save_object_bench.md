---
title: BlueJ Trick - Save your Object Bench using Test Fixtures
author: kleinen
draft: false
tags: ['bluej']
courses: ['info1']
---

You can save and re-create your Object Bench with a trick that uses the Unit Test Support in BlueJ, especially “Object Bench to Test Fixture” “Test Fixture to Object Bench”:

### 1. Save the state of your object bench
Let’s say you have created a lot of objects manually and want to reuse them. To save the state of your Object Bench, first create a Test Class for an arbitrary class:
![](../save_object_bench/image_2.png)

Now, call “Object Bench to Test Fixture” from the Test Class’ context menu.

![](../save_object_bench/image_3.png)

This will save all variables for the created objects as Field declarations, and all method calls in the method annotated with 
@BeforeEach in the TestClass (StudentTestClass in this example):

![](../save_object_bench/image_6.png)

You can then edit and expand this method - e.g. change student1&2 to better variable names, or even
add more objects simply with copy&paste.
Remember to adjust the field (variable) declarations at the top of the class!

![](../save_object_bench/image_7.png)

### 2. Re-create the Objects
You can then re-create the objects using “TestFixture to Object Bench” form the Test Class Menu:

![](../save_object_bench/image_8.png)

Voila! Here’s your object bench again with the new variable names:

![](../save_object_bench/image_9.png)

### 3. … and repeat:
You can even call methods on your re-created Work Bench and store them again using “Object Bench to Test Fixture”. As there is already a @BeforeEach method, you need to confirm to replace it:

![](../save_object_bench/image_10.png)
