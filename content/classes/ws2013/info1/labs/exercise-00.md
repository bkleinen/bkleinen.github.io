---
title: Exercise Startup
author: kleinen
layout: lab
---
Welcome to the laboratory - that's what we call these rooms filled with computer equipment. Each computer in WH C 579 is a so-called dual-boot computer that can boot to Windows or Ubuntu Linux, or Mac OS in WH C 537. As computer science students we expect you to be able to deal with Windows, Unix, and Mac OS operating systems. For this lab, you can work with Mac OS or Windows.

We have lots of rules for the labs, as they are used by many different people during the week. This term we will be in the [Web Technology Lab](https://imi-bachelor.htw-berlin.de/studium/labore/web-technology/) on Tuesdays and in the [Game Technology & Interactive Systems Lab](https://imi-bachelor.htw-berlin.de/studium/labore/game-technology-interactive-systems/) on Thursdays - please read the  [Laborordnung](https://imi-bachelor.htw-berlin.de/fileadmin/HTW/Zentral/FB/FB4/FB4_Rahmenlaborordnung.pdf).

Two really important rules are:

- **No food. **We don't like crumbs in the keyboards. Drinks are okay if they are in a container with a screw-on lid and the lid is screwed on. No coffee cups! They get knocked over and we have to get new machines.
- **Don't change the configuration. **We don't care if you have spent half your life "optimizing" computers. We have them set up this way because that is the way we do it. Most especially, don't take out the Ethernet cable!

If something goes wrong, don't panic. Speak with the lab leader or the lab engineer.

It is usually a good idea to save your work at regular intervals. We sometimes have issues with the power here. Then you only have what you last saved.

## Assignment

### 1. Logbook

You need to get used to keeping a logbook in the lab. It can be analog (i.e. on paper) or digital. Make sure that you label and date your logbook. Keep track of everything you do in the logbook - even if you are really excited and want to keep playing. You will save time later if you can easily retrace your steps. Your lab leader will show you how to set up an online logbook. Make a logbook for today and take notes on what we do. This will be turned in as a lab report this week. Don't forget your name!

### 2. Logging in and getting ready for the exercises

Now that you have your FB 4 username, you also have a home directory. This is where all
your files can be placed. You can access it both from Windows and from Ubuntu. Since BlueJ is installed under Windows, we will be using it here, although there are also versions for Ubuntu and Mac.

After you have logged in, look around - where do you find a browser? How many browsers are there? Is there any way to print from the lab? How do you make a screen shot? How can you make a pdf file? Where is the Java JDK installed? Note down the path. Open up a command line and find out the active java version by typing

    > java -version

### 3. Download and install Greenfoot:


 *  first chose a location for Greenfoot and the Scenarios: On the lab pcs, use your home directory, on your own laptop it's up to you. Think of a useful folder structure - maybe
 *  .../info1/greenfoot/greenfoot - for the greenfoot installation .../info1/greenfoot/scenarios - for the greenfoot scenarios.
 *  The scenarios will hold the files you might want to save/backup or turn in as part of your exercise.
 *  if you install it on the lab pc, use the "Pure Java" version, as it does not require any modifications to the machine configuration and java is already installed on the machine.
 *  if you want to install it on your own computer, you also need java. If you don't have it yet, follow the "Download JDK" button on the greenfoot download page, then install Greenfoot.
 *  The download page can be found at: [https://www.greenfoot.org/download](https://www.greenfoot.org/download)
 *  Then download the first kara scenario from [github][1] (there is a "ZIP" Button!) and unpack it in your scenarios folder. Then open Greenfoot and open the scenario - now you can play around with Kara!

### 4. Logging Out
When it comes time to log out, _be very careful._ Computers can be very fussy about this.
Think of it as a friend who will be insulted if you do not properly say goodbye.
The proper way is to click on the icon that looks like a power button and select "Benutzer
abmelden" or to click on the Start button (yes, Windows is a bit strange). You might be asked if you want to remember what you were doing, you can choose to do this, or not. Try out both sometime. This is also a choice "herunterfahren". Selecting this is the one and only way to safely prepare the machine for powering down.
**Never** power down the machine without doing this first. Once you have logged out, please turn the machine and screen off if they didn't shut off automatically, **put your chair back under the table, and clean up any garbage that may have accumulated.**


## Writeup

You will be doing your writeup at home. If you do not have a computer at home, you can use the lab computers during times when there is no class. Hmm, you saved some information on your login area on the school server, can you access this from home? Yes! Your home directory is on the server uranus.f4.htw-berlin.de (or it was last week). There is a service called FTP that you can use to access these files. You will need to login to the FTP service with your FB 4 login to see your files. On Windows machines you open up a command window and use FTP. On Mac or Unix machines you open up a terminal and use ftp there.

Submit your writeup, explaining what you did and what you learned, as your post-lab to the Moodle area, as a practice - it will not be graded.

[1]: https://github.com/htw-imi-info1/kara-scenario1
