echo off
color 01F
cls
echo ------------------------
echo |iBreak tool v1.0       |
echo |by the Domisy Dev Team |
echo |ALPHA 7 10/14/2011     |
echo -------------------------
echo For those times you can't decide!
pause
cls
:home
echo Select the task:
echo 1) Jailbreak
echo 2) Extras
choice /c:12
if errorcode = 0 goto jbreak
if errorcode = 1 goto xtras

:xtras
echo 1) View Readme
echo 2) Just Install iExplore
echo 3) View installation ID
choice /c:123
if errorcode = 0 goto readme
if errorcode = 1 goto iexplore
if errorcode = 2 goto guid

:guid
echo Your installation ID is
echo ABCFE691-282A-4182-8EFA-415E3F878E73
echo Version: Alpha 5 Internal Release

:readme
type readme.md
pause
goto home

:iexplore
.\iexplore.exe

:jbreak
echo What kind of firmware are you running?
echo 1) iOS 4.3.3-4.3.5
echo 2) iOS 5.0
choice /c:12
if errorcode = 0 goto 4335
if errorcode = 1 goto 50

:4335
echo Sorry, but only redsn0w is compatible.
echo Ensure you are running the same software
echo version as you IPSW. Then press ENTER
pause
.\redsn0w-4.exe
pause
echo Complete!
pause
exit

:50
echo Choose:
echo If you are running 5.0, choose Redsn0w.
echo If you haven't yet upgraded, choose Sn0wbreeze.
echo 1) Redsn0w
echo 2) Sn0wbreeze
choice /c:12
if errorcode = 0 goto red5
if errorcode = 1 goto snow

:red5
.\redsnow5.exe
pause
exit

:snow
.\snow.exe
pause
exit