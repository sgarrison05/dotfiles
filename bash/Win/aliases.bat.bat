@echo off
REM =============================================
REM =      My Custom DOSKEY Command Aliases     =
REM =============================================

REM --- Navigation ---
doskey ..=cd ..
doskey ...=cd ..\..
doskey ....=cd ..\..\..
doskey desk=cd %USERPROFILE%\Desktop
doskey docs=cd %USERPROFILE%\Dropbox\Documents_Dbox
doskey data=cd /d D:\ 
doskey dev=cd /d D:\Dev

REM --- Directory Listing ---
doskey ls=dir 
doskey l=dir /B
doskey la=dir /A
doskey ll=dir /A $*

REM --- General Tools ---
doskey clear=cls
doskey ps=tasklist

REM --- Network ---
doskey myip=ipconfig | findstr IPv4
doskey ipa=ipconfig /all
doskey flush=ipconfig /flushdns
doskey p=ping -n 4 $1

REM --- Updating ---
doskey update=winget update --all