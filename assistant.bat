@echo off
goto command.trisosoft.ftu.fak
set waiting = Waiting for a command.
set pleasewait = Please wait for Sweepy to finish.
:command.trisosoft.ftu.fak
cls
title Please enter your Feature Activation Key
echo Please enter your Feature Activation Key
echo If you do not own a Feature Activation Key, please just type "na".
set /p fak=
if %fak% == na goto command.trisosoft.ftu.afak
if %fak% == THANKYOU goto command.trisosoft.fak.activate.thankyou
if %fak% == thankyou goto command.trisosoft.fak.activate.thankyou
:command.trisosoft.fak.activate.thankyou
cls
title Activating your product...
color 60
goto command.trisosoft.ftu.afak
:command.trisosoft.ftu.afak
cls
title Please wait...
echo Sweepy is creating necessary files (you can delete these at any time).
echo.
echo [TASK 1]: Create TrisoSoft folder on your C drive.
cd C:\
mkdir TrisoSoft
echo [TASK 1]: Complete.
echo [TASK 2]: Making Sweepy folder.
cd C:\TrisoSoft
mkdir Sweepy
echo [TASK 2]: Complete.
echo.
echo You can run this at any time by running the command "launch.setup".
pause
goto command.trisosoft.ftu.tutorial
:command.trisosoft.ftu.tutorial
cls
title Welcome!
echo Welcome and thank you for deciding to use Sweepy as your personal assistant.
echo Sweepy will be updated regularly to provide you with the best experience. We recommend checking for updates frequently as there may be some bug fixes and sometimes new commands and features!
pause
cls
echo Let's try running a command. Try running the following command (it's case sensitive): "test.command"
set /p command=
if %command% == test.command goto command.trisosoft.ftu.tutorial.testcommand
:command.trisosoft.ftu.tutorial.testcommand
cls
title Sweepy
echo Well done! You have completed the tutorial. If you require more assistance (or spot a bug, yuck) please report it on our issue tracker.
pause
goto command.trisosoft.home
:command.trisosoft.home
cls
title HOME - %waiting%
echo ANNOUNCEMENT: Sweepy Message Board has moved online, run "messages" to find the new Message Board.
echo If you run the "help" command you will be able to find the list of commands (the help command will tell you all of the commands you can run on Sweepy).
set /p command=
if %command% == home goto command.trisosoft.home
if %command% == launch.setup goto command.trisosoft.ftu.afak
if %command% == help goto command.trisosoft.help
if %command% == update goto command.trisosoft.update
if %command% == issue.tracker goto command.trisosoft.issues
if %command% == credits goto command.trisosoft.credits
if %command% == messages goto command.trisosoft.messages
if %command% == dev.mode goto command.trisosoft.developermode
:command.trisosoft.developermode
cls
title Developer - %waiting%
echo Sweepy's time - %time%
echo Sweepy's date - %date%
echo.
echo Would you like to attempt to connect to the internet to see if your internet connection is working OK?
echo Type "y" or "n".
set /p command=
if %command% == y goto command.trisosoft.developermode.internettest
if %command% == n goto command.trisosoft.home
:command.trisosoft.developermode.internettest
cls
title Developer (Internet Test) - %pleasewait%
ping google.com
title Developer (Internet Test) - %waiting%
pause
goto command.trisosoft.home
:command.trisosoft.messages
cls
title Messages - %waiting%
start "" https://github.com/TrisoSoft/Sweepy/discussions
pause
goto command.trisosoft.home
:command.trisosoft.credits
cls
title Credits - %waiting%
echo TrisoMorpy (founder of TrisoSoft) - lead developer and developer of Sweepy
pause
goto command.trisosoft.home
:command.trisosoft.issues
cls
title Issue Tracker - %pleasewait%.
echo Launching the issue tracker. 
start "" https://github.com/TrisoSoft/Sweepy/issues
goto command.trisosoft.home
:command.trisosoft.help
cls
title Help Topics - %waiting%
echo "home" - returns to the HOME menu.
echo "launch.setup" - launches the setup program.
echo "help" - launches the help program (the program you are currently running).
echo "update" - attempts to update the program.
echo "issue.tracker" - launches the Sweepy issue tracker.
echo "credits" - shows the credits for Sweepy.
pause
goto command.trisosoft.home
:command.trisosoft.update
cls
title Update - %waiting%
echo Is it OK if Sweepy connects to the internet to download the latest version?
echo Type "y" for yes, type "n" for no.
set /p command=
if %command% == y goto command.trisosoft.update.connect
if %command% == n goto command.trisosoft.home
:command.trisosoft.update.connect
cls
title Update - %pleasewait%
echo Please wait whilst we connect to the internet. Your default web browser will be opened.
echo [TASK 1]: Checking your internet connection - this will connect to "google.com"
ping google.com
echo [TASK 1]: Completed. If this didn't work, please make sure you are connected to the internet.
pause
title Update - %waiting%
echo You are currently running KB9.
echo.
echo The Sweepy Dev team would like to thank you for using Sweepy 
start "" https://github.com/TrisoSoft/Sweepy
pause
goto command.trisosoft.home
