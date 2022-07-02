@echo off
setlocal enabledelayedexpansion

REM PURPOSE: This file augments metaf's default functionality by enabling a user
REM to set output directories for .met and .af files (see below), then drag as many
REM .met and .nav and .af files as desired (in any combination) onto this batch
REM file, and it will appropriately convert each file and output the result to the
REM relevant folder.

REM !!! WARNING !!!
REM !!! WARNING: This OVERWRITES any files currently there that have the same name!
REM !!! WARNING !!!

REM CAVEAT: Because both input and output file names are specified here, .af files
REM that are being converted to .nav will be written as files with .nav extensions.
REM Simply rename them to .nav afterward. (Or create a separate batch file to handle
REM .af-to-.nav-specific conversions.)

REM ==== CHANGE THESE DIRECTORIES TO WHATEVER YOU WANT THEM TO BE. =================
set metOutDir=C:\MetaF\RynDQLAFFormat\QuestloopMet
set afOutDir=C:\MetaF\RynDQLAFFormat
REM ================================================================================


set argc=0

for %%x in (%*) do (
   set /A argc+=1
   set "argv[!argc!]=%%~x"
   set "names[!argc!]=%%~nx"
   set "exts[!argc!]=%%~xx"
)

for /L %%i in (1,1,%argc%) do (
   echo PROCESSING: "!argv[%%i]!"
   if /i "!exts[%%i]!"==".af" (
      REM echo %%i- "!names[%%i]!" "!exts[%%i]!" - AF
	  metaf "!argv[%%i]!" "%metOutDir%\!names[%%i]!.met"
   ) else (
	  metaf "!argv[%%i]!" "%afOutDir%\!names[%%i]!.af"
   )
)

echo.
echo FILES PROCESSED: %argc%
