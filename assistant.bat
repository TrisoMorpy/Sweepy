@echo off
goto command.trisosoft.ftu
set waiting = Waiting for a command.
set pleasewait = Please wait for Sweepy to finish.
:command.trisosoft.ftu
cls
title Please wait...
echo Sweepy is creating necessary files (you can delete these at any time).
echo.
echo [TASK 1]: Create TrisoSoft folder in (C:\Users\Public\Public Desktop). This may require admin (it will require admin because we're making a folder in a protected place).
cd C:\Users\Public\Public Desktop
mkdir TrisoSoft
echo [TASK 1]: Complete.
echo [TASK 2]: Making Sweepy folder.
cd C:\Users\Public\Public Desktop\TrisoSoft
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
echo Well done! You have sucessfully ran the following command "%command%".
pause
goto command.trisosoft.home
:command.trisosoft.home
cls
title HOME | %waiting%
echo Current time (local to your Sweepy install): %time%.
echo Current date (local to your Sweepy install): %date%.
echo.
echo You can run the following command to get help: "help" (the help command will tell you all of the commands you can run on Sweepy).
set /p command=
if %command% == home goto command.trisosoft.home
if %command% == launch.setup goto command.trisosoft.ftu
if %command% == help goto command.trisosoft.help
if %command% == update goto command.trisosoft.update
:command.trisosoft.help
cls
title Help Topics | %waiting%
echo "home" - returns to the HOME menu.
echo "launch.setup" - launches the setup program.
echo "help" - launches the help program (the program you are currently running).
echo "update" - attempts to update the program.
pause
goto command.trisosoft.home
:command.trisosoft.update
cls
title Update | %pleasewait%.
echo Please wait whilst we connect to the internet. Your default web browser will be opened.
echo [TASK 1]: Checking your internet connection - this will connect to "google.com"
ping google.com
echo [TASK 1]: Completed. If this didn't work, please make sure you are connected to the internet.
pause
title Update | %waiting%
echo You are currently running KB1.
echo.
echo You have the current updates/feature updates/security updates.
echo textOS System - (this can not be removed)
echo September 2023 - KB1 (this can not be removed)
goto "" https://github.com/TrisoSoft/Sweepy
goto command.trisosoft.home