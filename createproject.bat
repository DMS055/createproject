@ECHO off

cls
:start

:: Options menu
ECHO.
ECHO 1. Batch, VBS
ECHO 2. C
ECHO 3. C++
ECHO 4. DJS
ECHO 5. Java
ECHO 6. Python
ECHO 7. WebDev

:: Select directory
ECHO Select the directory by typing in the corresponding number:
set /p choice=
ECHO %choice%
if not '%choice%'=='' set choice=%choice:~0,2%
if '%choice%'=='1' goto BVBS
if '%choice%'=='2' goto C
if '%choice%'=='3' goto CPP
if '%choice%'=='4' goto DJS
if '%choice%'=='5' goto JV
if '%choice%'=='6' goto PY
if '%choice%'=='7' goto WEB

:: If proper syntaxt is not provided
cls
ECHO "%choice%" is not valid, try again.
goto start

:: Commands
:BVBS
cls
:: Setup
ECHO Batch/VBS Project
cd C:\Users\thebe\Desktop\Codingstuff\Batch, VBS

:: Project name
ECHO Select the project name.
set /p name1=
ECHO %name1%

:: Create directory and cd to it
mkdir %name1%
chdir C:\Users\thebe\Desktop\Codingstuff\Batch, VBS\%name1%

cls
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
goto end


:C
cls
:: Setup
ECHO C Project
cd C:\Users\thebe\Desktop\Codingstuff\C

:: Project name
ECHO Select the project name.
set /p name1=
ECHO %name1%

:: Create directory and cd to it
mkdir %name1%
chdir C:\Users\thebe\Desktop\Codingstuff\C\%name1%

:: Project setup
type nul >index.c
cls
set text="Created 'index.c' as a project setup."
set text=%text:"=%
ECHO %text%

ECHO.
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
goto end


:CPP
cls
:: Setup
ECHO C++ Project
cd C:\Users\thebe\Desktop\Codingstuff\C++

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\Desktop\Codingstuff\C++\%name%
:: Project setup
type nul >index.cpp
cls
set text="Created 'index.cpp' as a project setup."
set text=%text:"=%
ECHO %text%

ECHO.
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
goto end


:DJS
cls
:: Setup
ECHO Discord.js Project
cd C:\Users\thebe\Desktop\Codingstuff\DJS

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\Desktop\Codingstuff\DJS\%name%
:: Project setup
type nul >bot.js
cls
set text="Created 'bot.js' as a project setup."
set text=%text:"=%
ECHO %text%

ECHO.
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
goto end


:JV
cls
:: Setup
ECHO Java Project
cd C:\Users\thebe\Desktop\Codingstuff\Java

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\Desktop\Codingstuff\Java\%name%
:: Project setup
type nul >index.java
cls
set text="Created 'index.java' as a project setup."
set text=%text:"=%
ECHO %text%

ECHO.
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
goto end


:PY
cls
:: Setup
ECHO Python Project
cd C:\Users\thebe\Desktop\Codingstuff\Python

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\Desktop\Codingstuff\Python\%name%
:: Project setup
type nul >main.py
cls
set text="Created 'main.py' as a project setup."
set text=%text:"=%
ECHO %text%

ECHO.
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
goto end


:WEB
:: TODO, as there is some work to be done here
:: Make a choice between react and general (maybe svelte?) 
:: Prob other stuff in the future
ECHO TEST
goto end


:end
:: Yes, this is hardcoded and I am not ashamed of that
timeout /t 3 /nobreak > nul
cls
ECHO Project successfully created!
ECHO.
pause
