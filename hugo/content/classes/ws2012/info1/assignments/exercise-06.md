---
title: 'Exercise 06: Club Membership'
author: kleinen
layout: page
---

# Pre-lab

This week's lab work is intended give you more practice using collections.

#### What to Bring to Lab

Please prepare these exercise before coming to the lab.

**P1**. How do you write the import statement for using an ArrayList?

**P2.** How do you define a field that will take a collection of objects of type Student? How does it get initialized?

**P3.** Write a method that returns true if the parameter month is valid, i.e. between 1 and 12.

**P4. ** How can you compare two names, stored as Strings, to see if they are the same?

# Post-Lab, AKA What To Turn In

Your completed assignment, submitted in Moodle as a pdf, Source as Zip, should include:

- A description of what you did during the lab, including a record of what worked, what problems you encountered, and answers to the questions as asked.
- A screenshot or two demonstrating that your code works.
- A copy of the final version of your Club code.
- The names and roles of any collaborators in any parts of the exercise.
- A record of how long you needed for this lab and what you learned.

Lab assignments are due before your next lab at 23.00. They may, of course, be turned in earlier. You hand them in by preparing the report in PDF and source code as Zipped BlueJ Project and submitting it to Moodle.

# Assignment

# **Club Membership**

1. Use the club project at [https://github.com/htw-imi-info1/exercise06-archived-club-membership/](https://github.com/htw-imi-info1/exercise06-archived-club-membership/) to complete the following exercises. There is an outline in the project, but it doesn't do anything useful. The club class is intended to store Membership objects in a collection. Define a field for an ArrayList for keeping track of club members. Make sure this compiles before moving on.
2. Complete the numberOfMembers method to return the current size of the collection. Since you can't add anyone yet, this will, of course, at the moment always return 0.
3. A complete version of Membership is supplied for you. It stores members names and the month and year that they joined the club. Complete the join method. Add some members and see if the numberOfMembers still works. What do you have to do in order to test this?
4. Implement a method joinedInMonth that takes a month number and a year number as parameters and returns the number of persons who joined in that particular month of that year.
5. Implement a method listJoinedInMonth that takes a month number and a year number as parameters and prints out the names of those who joined in this month. The bored can sort the list by name.
6. Implement a method search that looks for members with a particular name.
7. Adapt the join method so that no two people with the same name can join the club. We don't care about capitalization, so "John" is the same as "john". Write an appropriate error message, if a name is entered in again.
8. (For the bored) Define a method to remove all members in the club's collection who joined in a particular month and year, returning the ones removed in a separate collection object.
9. (For the bored) Define a method to list all members of the club sorted first by year joined, then by month joined, and finally by name.
10. (For the really bored) Extend the Membership object to include further information such as birthday. Make search methods for finding all the members who have a birthday in a particular month, and finding people who will be having "round" birthdays in the current year. There can be three meanings of "round", regular, prime and computing. Regular is 20, 30, 40, 50, 60, 65, 70, 75, 80, 85, 90, 95, 100. Prime is prime number ages. Computing is 16, 25, 26, 32, 36, 42, 49, 64, 81. Explain the computing numbers.

# Writeup

Submit your writeup as your post-lab to the Moodle area.

 
* * *
