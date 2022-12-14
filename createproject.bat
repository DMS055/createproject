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
timeout /t 3 /nobreak > nul
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
copy /Y C:\Users\thebe\Desktop\Codingstuff\templates\workspace.code-workspace C:\Users\thebe\Desktop\Codingstuff\C\%name%
chdir C:\Users\thebe\Desktop\Codingstuff\C\%name%
rename "workspace.code-workspace" "%name%.code-workspace"
:: Project setup
type nul >index.c
cls
set text="Generated 'index.c' as a project setup."
set text=%text:"=%
ECHO %text%

ECHO.
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 3 /nobreak > nul
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
copy /Y C:\Users\thebe\Desktop\Codingstuff\templates\workspace.code-workspace C:\Users\thebe\Desktop\Codingstuff\C++\%name%
chdir C:\Users\thebe\Desktop\Codingstuff\C++\%name%
rename "workspace.code-workspace" "%name%.code-workspace"
:: Project setup
type nul >index.cpp

cls
set text="Generated 'index.cpp' as a project setup."
set text=%text:"=%
ECHO %text%

ECHO.
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 3 /nobreak > nul
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
copy /Y C:\Users\thebe\Desktop\Codingstuff\templates\workspace.code-workspace C:\Users\thebe\Desktop\Codingstuff\DJS\%name%
chdir C:\Users\thebe\Desktop\Codingstuff\DJS\%name%
rename "workspace.code-workspace" "%name%.code-workspace"

:: Project setup
type nul >bot.js

cls
cmd /c "npm init -y"
cls
cmd /c "npm install discord.js"

cls
set text="Generated 'bot.js' as a project setup."
set text=%text:"=%
ECHO %text%

ECHO.
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 3 /nobreak > nul
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
copy /Y C:\Users\thebe\Desktop\Codingstuff\templates\workspace.code-workspace C:\Users\thebe\Desktop\Codingstuff\Java\%name%
chdir C:\Users\thebe\Desktop\Codingstuff\Java\%name%
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
timeout /t 3 /nobreak > nul
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
copy /Y C:\Users\thebe\Desktop\Codingstuff\templates\workspace.code-workspace C:\Users\thebe\Desktop\Codingstuff\Python\%name%
chdir C:\Users\thebe\Desktop\Codingstuff\Python\%name%
rename "workspace.code-workspace" "%name%.code-workspace"

:: Project setup
type nul >main.py
cls
set text="Generated 'main.py' as a project setup."
set text=%text:"=%
ECHO %text%

ECHO.
ECHO Opening project...

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 3 /nobreak > nul
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
cd C:\Users\thebe\Desktop\Codingstuff\WebDev\FunStuff

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
copy /Y C:\Users\thebe\Desktop\Codingstuff\templates\workspace.code-workspace C:\Users\thebe\Desktop\Codingstuff\WebDev\FunStuff\%name%
chdir C:\Users\thebe\Desktop\Codingstuff\WebDev\FunStuff\%name%
rename "workspace.code-workspace" "%name%.code-workspace"

:: Project setup
xcopy /Y /C /Q /E C:\Users\thebe\Desktop\Codingstuff\templates\vanillaTemplate C:\Users\thebe\Desktop\Codingstuff\WebDev\FunStuff\%name%

cls
set text="Generated 'main.html', 'style.css' and 'script.js' as a project setup."
set text=%text:"=%
ECHO %text%

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 3 /nobreak > nul
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
copy /Y C:\Users\thebe\Desktop\Codingstuff\templates\workspace.code-workspace C:\Users\thebe\Desktop\Codingstuff\WebDev\Misc\%name%
chdir C:\Users\thebe\Desktop\Codingstuff\WebDev\Misc\%name%
rename "workspace.code-workspace" "%name%.code-workspace"

:: Project setup
xcopy /Y /C /Q /E C:\Users\thebe\Desktop\Codingstuff\templates\vanillaTemplate C:\Users\thebe\Desktop\Codingstuff\WebDev\Misc\%name%

cls
set text="Generated 'main.html', 'style.css' and 'script.js' as a project setup."
set text=%text:"=%
ECHO %text%

:: Open in VSCode
cmd /c "code ."
call :loading
timeout /t 3 /nobreak > nul
goto end


:NXT
cls
:: Setup
ECHO Creating a Next App
cd C:\Users\thebe\Desktop\Codingstuff\WebDev\Next

:: Project name
ECHO Select the project name.
set /p name=
ECHO %name%

:: Create directory and cd to it
mkdir %name%
chdir C:\Users\thebe\Desktop\Codingstuff\WebDev\Next\%name%

cls
ECHO Creating a Next App. This might take a couple minutes.
timeout /t 3 /nobreak > nul

:: Project setup
xcopy /Y /C /Q /E C:\Users\thebe\Desktop\Codingstuff\templates\nextTemplate C:\Users\thebe\Desktop\Codingstuff\WebDev\Next\%name%
copy /Y C:\Users\thebe\Desktop\Codingstuff\templates\workspace.code-workspace C:\Users\thebe\Desktop\Codingstuff\WebDev\Next\%name%
chdir C:\Users\thebe\Desktop\Codingstuff\WebDev\Next\%name%
rename "workspace.code-workspace" "%name%.code-workspace"


:: In steps, so if something breaks then it's possible to catch the error-causing depedencies
cls
cmd /c "yarn add next @types/react"

cls
ECHO Generated a Next project setup. Read README.md!

:: Open in VSCode
cmd /c "code ."
timeout /t 3 /nobreak > nul
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

cls
ECHO Creating a React App. This might take a couple minutes.
timeout /t 3 /nobreak > nul

:: Project setup
xcopy /Y /C /Q /E C:\Users\thebe\Desktop\Codingstuff\templates\reactTemplate C:\Users\thebe\Desktop\Codingstuff\WebDev\React\%name%
copy /Y C:\Users\thebe\Desktop\Codingstuff\templates\workspace.code-workspace C:\Users\thebe\Desktop\Codingstuff\WebDev\React\%name%
chdir C:\Users\thebe\Desktop\Codingstuff\WebDev\React\%name%
rename "workspace.code-workspace" "%name%.code-workspace"

:: Add INFO.md
type nul > INFO.md
(
	ECHO Paste the following lines into package.json:
	ECHO '"main": "webpack.config.js",'
	ECHO '"scripts": {'
	ECHO '	"test": "echo \"Error: no test specified\" && exit 1",'
	ECHO '	"start": "webpack-dev-server --mode=development --open --hot",'
	ECHO '	"build": "webpack --mode=production"'
	ECHO '},'
	ECHO.
	ECHO.
	ECHO "ctrl + shift + h and replaced all instances of ' with whitespace character (in this file only)"
	ECHO.
	ECHO 'First off, run "npm run build" on your main directory, then run "npm run start" and you are ready to go!'
) >> C:\Users\thebe\Desktop\Codingstuff\WebDev\React\%name%\INFO.md

::timeout /t 2 /nobreak > nul

:: In steps, so if something breaks then it's possible to catch the error-causing depedencies
cls
cmd /c "npm init -y"
cls
cmd /c "npm install react react-dom"
cls
cmd /c "npm install --save-dev @babel/core @babel/preset-env @babel/preset-react babel-loader dotenv-webpack"
cls
cmd /c "npm install --save-dev webpack webpack-cli webpack-dev-server html-webpack-plugin style-loader css-loader file-loader"

cls
ECHO Generated a React project setup. Read INFO.md!

:: Open in VSCode
cmd /c "code ."
timeout /t 3 /nobreak > nul
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
timeout /t 2 /nobreak > nul
cls
color 09
ECHO Project successfully created!
timeout /t 3 /nobreak > nul
ECHO.
ECHO Bye!
timeout /t 1 /nobreak > nul
exit
