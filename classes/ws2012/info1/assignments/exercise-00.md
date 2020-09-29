---
title: Exercise Startup
author: kleinen
layout: page
---
<p class="fhtw-blue-style">
  Welcome to the laboratory &#8211; that&#8217;s what we call these rooms filled with computer equipment. Each computer is a so-called dual-boot computer that can boot to Windows or Ubuntu Linux. As computer science students we expect you to be able to deal with Windows, Unix, and Mac OS operating systems.
</p>

<p class="fhtw-black-type">
  We have lots of rules for the labs, as they are used by many different people during the week. This term we will be in the <a href="https://imi-bachelor.htw-berlin.de/studium/labore/game-technology-interactive-systems/">Game Technology & Interactive Systems Lab</a> &#8211; please read the <a href="https://imi-bachelor.htw-berlin.de/fileadmin/HTW/Zentral/FB/FB4/FB4_Rahmenlaborordnung.pdf">Laborordnung</a>.
</p>

<p class="fhtw-black-type">
  Two really important rules are:
</p>

<li class="fhtw-black-type">
  <strong>No food. </strong>We don&#8217;t like crumbs in the keyboards. Drinks are okay if they are in a container with a screw-on lid and the lid is screwed on. No coffee cups! They get knocked over and we have to get new machines.
</li>
<li class="fhtw-black-type">
  <strong>Don&#8217;t change the configuration. </strong>We don&#8217;t care if you have spent half your life &#8220;optimizing&#8221; computers. We have them set up this way because that is the way we do it. Most especially, don&#8217;t take out the Ethernet cable!
</li>

<p class="fhtw-black-type">
  If something goes wrong, don&#8217;t panic. Speak with the lab leader or the lab engineer.
</p>

<p class="fhtw-black-type">
  It is usually a good idea to save your work at regular intervals. We sometimes have issues with the power here. Then you only have what you last saved.
</p>

<div align="LEFT">
  <p class="fhtw-blue-style">
    <strong>Assignment</strong>
  </p>
</div>

<p class="fhtw-new-style">
  <strong>1. Logbook</strong>
</p>

<span class="fhtw-black-type">You need to get used to keeping a logbook in the lab. It can be analog (i.e. on paper) or digital. Make sure that you label and date your logbook. Keep track of everything you do in the logbook &#8211; even if you are really excited and want to keep playing. You will save time later if you can easily retrace your steps. Your lab leader will show you how to set up an online logbook. Make a logbook for today and take notes on what we do. This will be turned in as a lab report this week. Don&#8217;t forget your name!</span>

<p class="fhtw-new-style">
  <strong>2. Logging in and getting ready for the exercises</strong>
</p>

<p class="fhtw-black-type">
  Now that you have your FB 4 username, you also have a home directory. This is where all<br /> your files can be placed. You can access it both from Windows and from Ubuntu. Since BlueJ is installed under Windows, we will be using it here, although there are also versions for Ubuntu and Mac.
</p>

<p class="fhtw-black-type">
  After you have logged in, look around &#8211; where do you find a browser? How many browsers are there? Is there any way to print from the lab? How do you make a screen shot? How can you make a pdf file? Where is the Java JDK installed? Note down the path. Open up a command line and find out the active java version by typing
</p>

<p class="fhtw-black-type">
  >    java -version
</p>

<p class="fhtw-black-type">
  Now Download and install Greenfoot:
</p>

*   first chose a location for Greenfoot and the Scenarios: On the lab pcs, use your home directory, on your own laptop it&#8217;s up to you. Think of a useful folder structure &#8211; maybe
*   &#8230;/info1/greenfoot/greenfoot &#8211; for the greenfoot installation  
    &#8230;/info1/greenfoot/scenarios &#8211; for the greenfoot scenarios.
*   The scenarios will hold the files you might want to save/backup or turn in as part of your exercise.
*   if you install it on the lab pc, use the &#8220;Pure Java&#8221; version, as it does not require any modifications to the machine configuration and java is already installed on the machine.
*   if you want to install it on your own computer, you also need java. If you don&#8217;t have it yet, follow the &#8220;Download JDK&#8221; button on the greenfoot download page, then install Greenfoot.
*   The download page can be found at: <a href="https://www.greenfoot.org/download" rel="nofollow">https://www.greenfoot.org/download</a>
*   Then download the first kara scenario from [github][1] (there is a &#8220;ZIP&#8221; Button!) and unpack it in your scenarios folder. Then open Greenfoot and open the scenario &#8211; now you can play around with Kara!

<h2 class="fhtw-new-style">
  3. Logging Out
</h2>

<span class="fhtw-black-type">When it comes time to log out, <em>be very careful. </em>Computers can be very fussy about this.<br /> Think of it as a friend who will be insulted if you do not properly say goodbye.<br /> The proper way is to click on the icon that looks like a power button and select &#8220;Benutzer<br /> abmelden&#8221; or to click on the Start button (yes, Windows is a bit strange). You might be asked if you want to remember what you were doing, you can choose to do this, or not. Try out both sometime. This is also a choice </span>&#8220;herunterfahren&#8221;. Selecting this is the one and only way to safely prepare the machine for powering down. *Never* *power down the machine* without doing this first. <span class="fhtw-black-type">Once you have logged out, please turn the machine and screen off if they didn&#8217;t shut off automatically, <strong>put your chair back under the table, and clean up any garbage that may have accumulated.</strong></span>

<span class="fhtw-black-type">Your mother doesn&#8217;t work here.<br /> </span>

<p class="fhtw-new-style">
  <strong>Writeup</strong>
</p>

<p class="fhtw-black-type">
  You will be doing your writeup at home. If you do not have a computer at home, you can use the lab computers during times when there is no class. Hmm, you saved some information on your login area on the school server, can you access this from home? Yes! Your home directory is on the server ariel.f4.htw-berlin.de (or it was last week). There is a service called FTP that you can use to access these files. You will need to login to the FTP service with your FB 4 login to see your files. On Windows machines you open up a command window and use FTP. On Mac or Unix machines you open up a terminal and use ftp there.
</p>

<p class="fhtw-black-type">
  Submit your writeup, explaining what you did and what you learned, as your post-lab to the Moodle area, as a practice &#8211; it will not be graded.
</p>

 [1]: https://github.com/htw-imi-info1/kara-scenario1
