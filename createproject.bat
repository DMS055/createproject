@ECHO off

cls
:start

:: Options menu
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

:: If proper syntax is not provided
cls
ECHO "%choice%" is not a valid choice, try again.
ECHO.
goto start

:: Commands

:BVBS
cls
:: Setup
ECHO Creating a Batch/VBS Project
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
call :loading
timeout /t 4 /nobreak > nul
goto end


:C
cls
:: Setup
ECHO Creating a C Project
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
call :loading
timeout /t 4 /nobreak > nul
goto end


:CPP
cls
:: Setup
ECHO Creating a C++ Project
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
call :loading
timeout /t 4 /nobreak > nul
goto end


:DJS
cls
:: Setup
ECHO Creating a Discord.js Project
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
call :loading
timeout /t 4 /nobreak > nul
goto end


:JV
cls
:: Setup
ECHO Creating a Java Project
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

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 4 /nobreak > nul
goto end


:PY
cls
:: Setup
ECHO Creating a Python Project
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
call :loading
timeout /t 4 /nobreak > nul
goto end


:WEB
:: Add:
:: FunStuff
:: React
:: Misc
cls

ECHO 1. FunStuff
ECHO 2. React
ECHO 3. Miscellaneous

ECHO Select the subdirectory by typing in the corresponding number:
set /p choice=
ECHO %choice%
if not '%choice%'=='' set choice=%choice:~0,2%
if '%choice%'=='1' goto FS
if '%choice%'=='2' goto RCT
if '%choice%'=='3' goto MS

:: If proper syntax is not provided
goto :WEB

:FS
cls
:: Setup
ECHO Creating a Web App
cd C:\Users\thebe\Desktop\Codingstuff\WebDev\FunStuff

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\Desktop\Codingstuff\WebDev\FunStuff\%name%
:: Project setup
type nul >main.html
type nul >style.css
type nul >script.js

cls
set text="Created 'main.html', 'style.css' and 'script.js' as a project setup."
set text=%text:"=%
ECHO %text%

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 4 /nobreak > nul
goto end


:RCT
cls
:: Setup
ECHO Creating a React App
cd C:\Users\thebe\Desktop\Codingstuff\WebDev\React

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\Desktop\Codingstuff\WebDev\React\%name%
:: Project setup
type nul >main.html
type nul >style.css
type nul >script.js

cls
set text="Created a React project setup."
set text=%text:"=%
ECHO %text%

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 4 /nobreak > nul
goto end


:MS
cls
:: Setup
ECHO Creating a Web App
cd C:\Users\thebe\Desktop\Codingstuff\WebDev\Misc

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\Desktop\Codingstuff\WebDev\Misc\%name%
:: Project setup
type nul >main.html
type nul >style.css
type nul >script.js

cls
set text="Created 'main.html', 'style.css' and 'script.js' as a project setup."
set text=%text:"=%
ECHO %text%

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 4 /nobreak > nul
goto end


:loading
setlocal enabledelayedexpansion
set /a times=1
for /l %%G in (1, 1, %times%) do (
	call :display "Opening project"
)

setlocal disabledelayedexpansion
cls

:display
set string=%1
set string=%string:"=%
set dots=...

for /l %%G in (1,1,3) do (
	cls
	ECHO !string!!dots:~0,%%G!
	ping localhost -n 2 -w 500 -l 5000 > NUL
)

:end
::timeout /t 2 /nobreak > nul
cls
ECHO Project successfully created!
timeout /t 3 /nobreak > nul
ECHO.
ECHO Bye!
timeout /t 1 /nobreak > nul
exit
