@ECHO off

cls
:start

:: Options menu
ECHO 1. .NET
ECHO 2. Batch, VBS
ECHO 3. Java
ECHO 4. Misc
ECHO 5. Python
ECHO 6. WebDev

:: Select directory
ECHO Select the directory by typing in the corresponding number:
set /p choice=
ECHO %choice%
if not '%choice%'=='' set choice=%choice:~0,2%
if '%choice%'=='1' goto DOTNET
if '%choice%'=='2' goto BVBS
if '%choice%'=='3' goto JV
if '%choice%'=='4' goto MISC
if '%choice%'=='5' goto PY
if '%choice%'=='6' goto WEB

:: If proper syntax is not provided
cls
ECHO "%choice%" is not a valid choice, try again.
ECHO.
goto start

:: Commands

:DOTNET
cls
:: Setup
ECHO Creating a .NET Project
cd C:\Users\thebe\OneDrive\Pulpit\Coding\.NET

:: Project name
ECHO Select the project name.
set /p name1=
ECHO %name1%

:: Create directory and cd to it
mkdir %name1%
chdir cd C:\Users\thebe\OneDrive\Pulpit\Coding\.NET\%name1%
goto end


:BVBS
cls
:: Setup
ECHO Creating a Batch/VBS Project
cd C:\Users\thebe\OneDrive\Pulpit\Coding\Batch, VBS

:: Project name
ECHO Select the project name.
set /p name1=
ECHO %name1%

:: Create directory and cd to it
mkdir %name1%
chdir C:\Users\thebe\OneDrive\Pulpit\Coding\Batch, VBS\%name1%

cls
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 1 /nobreak > nul
goto end


:JV
cls
:: Setup
ECHO Creating a Java Project
cd C:\Users\thebe\OneDrive\Pulpit\Coding\Java

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
copy /Y C:\Users\thebe\OneDrive\Pulpit\Coding\templates\workspace.code-workspace C:\Users\thebe\OneDrive\Pulpit\Coding\Java\%name%
chdir C:\Users\thebe\OneDrive\Pulpit\Coding\Java\%name%
rename "workspace.code-workspace" "%name%.code-workspace"

:: Project setup

type nul >index.java
cls
set text="Generated 'index.java' as a project setup."
set text=%text:"=%
ECHO %text%

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 1 /nobreak > nul
goto end


:MISC
cls
:: Setup
ECHO Creating a Miscellaneous Project
cd C:\Users\thebe\OneDrive\Pulpit\Coding\Misc

:: Project name
ECHO Select the project name.
set /p name=

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\OneDrive\Pulpit\Coding\Misc\%name%

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 1 /nobreak > nul
goto end


:PY
cls
:: Setup
ECHO Creating a Python Project
cd C:\Users\thebe\OneDrive\Pulpit\Coding\Python

:: Project name
ECHO Select the project name.
set /p name=

:: Create directory and cd to it
mkdir %name%
copy /Y C:\Users\thebe\OneDrive\Pulpit\Coding\templates\workspace.code-workspace C:\Users\thebe\OneDrive\Pulpit\Coding\Python\%name%
chdir C:\Users\thebe\OneDrive\Pulpit\Coding\Python\%name%
rename "workspace.code-workspace" "%name%.code-workspace"

:: Project setup
type nul >main.py
cls
set text="Generated 'main.py' as a project setup."
set text=%text:"=%
ECHO %text%

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 1 /nobreak > nul
goto end


:WEB
cls
ECHO 1. FunStuff
ECHO 2. Miscellaneous
ECHO 3. Next (TS)
ECHO 4. React (JS)

ECHO Select the subdirectory by typing in the corresponding number:
set /p choice=
ECHO %choice%
if not '%choice%'=='' set choice=%choice:~0,2%
if '%choice%'=='1' goto FS
if '%choice%'=='2' goto MS
if '%choice%'=='3' goto NXT
if '%choice%'=='4' goto RCT

:: If proper syntax is not provided
goto :WEB

:FS
cls
:: Setup
ECHO Creating a Web App
cd C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\FunStuff

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
copy /Y C:\Users\thebe\OneDrive\Pulpit\Coding\templates C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\FunStuff\%name%
chdir C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\FunStuff\%name%
rename "workspace.code-workspace" "%name%.code-workspace"

:: Project setup
xcopy /Y /C /Q /E C:\Users\thebe\OneDrive\Pulpit\Coding\templates\vanillaTemplate C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\FunStuff\%name%

cls
set text="Generated 'main.html', 'style.css' and 'script.js' as a project setup."
set text=%text:"=%
ECHO %text%

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 1 /nobreak > nul
goto end


:MS
cls
:: Setup
ECHO Creating a Web App
cd C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\Misc

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
copy /Y C:\Users\thebe\OneDrive\Pulpit\Coding\templates C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\Misc\%name%
chdir C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\Misc\%name%
rename "workspace.code-workspace" "%name%.code-workspace"

:: Project setup
xcopy /Y /C /Q /E C:\Users\thebe\OneDrive\Pulpit\Coding\templates\vanillaTemplate C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\Misc\%name%

cls
set text="Generated 'main.html', 'style.css' and 'script.js' as a project setup."
set text=%text:"=%
ECHO %text%

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 1 /nobreak > nul
goto end


:NXT
cls
:: Setup
ECHO Creating a Next App
cd C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\Next

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\Desktop\Codingstuff\WebDev\Next\%name%

cls
ECHO Creating a Next App. This might take a couple minutes.
timeout /t 1 /nobreak > nul

:: Project setup
copy /Y C:\Users\thebe\OneDrive\Pulpit\Coding\templates\workspace.code-workspace C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\Next\%name%
chdir C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\Next\%name%
rename "workspace.code-workspace" "%name%.code-workspace"

cls
cmd /c "npx create-next-app@latest"
cls

:: Open in VSCode
cmd /c "code ."
timeout /t 1 /nobreak > nul
goto end


:RCT
cls
:: Setup
ECHO Creating a React App
cd C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\React

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\React\%name%

cls
ECHO Creating a React App. This might take a couple minutes.
timeout /t 1 /nobreak > nul

:: Project setup
copy /Y C:\Users\thebe\OneDrive\Pulpit\Coding\templates\workspace.code-workspace C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\React\%name%
chdir C:\Users\thebe\OneDrive\Pulpit\Coding\WebDev\React\%name%
rename "workspace.code-workspace" "%name%.code-workspace"


:: In steps, so if something breaks then it's possible to catch the error-causing depedencies
cls
cmd /c "npx create-react-app %name%"
cls

:: Open in VSCode
cmd /c "code ."
timeout /t 1 /nobreak > nul
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
timeout /t 1 /nobreak > nul
cls
color 09
ECHO Project successfully created!
timeout /t 1 /nobreak > nul
ECHO.
ECHO Bye!
timeout /t 1 /nobreak > nul
exit
