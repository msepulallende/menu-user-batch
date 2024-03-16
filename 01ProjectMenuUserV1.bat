@echo off

::set variables for dir's
set eaAppDir= "C:\Program Files\Electronic Arts\EA Desktop\EA Desktop"
set bf4ExeDir= "C:\Program Files (x86)\Steam\steamapps\common\Battlefield 4"
set steamAppDir= "C:\Program Files (x86)\Steam"
set battleNetAppDir= "C:\Program Files (x86)\Battle.net"
set blenderAppDir= "C:\Program Files\Blender Foundation\Blender 3.4"
set juegosInstalledDir= "C:\Juegos"
set fireFoxNavDir= "C:\Program Files\Mozilla Firefox"
set vsCodeDir= "C:\Users\Mikaoski\AppData\Local\Programs\Microsoft VS Code"
::END variables for dir's

::set variables vscode workspaces
set workspaceVscodeDir= "C:\Users\Mikaoski\Desktop\Programación RW\2023"
::END vscode workspaces

::set variables url
set urlGithub= "https://github.com/"
::end variables url
::set variables for games
set re4SteamRunGameId= steam://rungameid/254700
set aimLabSteamRunGameId= steam://rungameid/714010
::END variables for games

::Menu
echo ==================================
echo            MENU
echo ==================================
echo 1.- Abrir VSCode  &echo\2.- Abrir Blender
echo 3.- Abrir Github (Firefox) &echo\4.- Jugar Resident Evil 4(2006)
echo 5.- Abrir Plutonium Client For CoD &echo\6.- Abrir Aim Lab
echo 7.- Jugar BF4

choice /c 123456789 /n /m ": "
::END Menu

::if else menu script
if %errorlevel% == 7 (
    call :openBf4
)

if %errorlevel% == 6 (
    call :openAimLab
)

if %errorlevel% == 5 (
    call :openPlutonium
)

if %errorlevel% == 4 (
    call :openRe4Classic
)

if %errorlevel% == 3 (
    call :openGithub
)

if %errorlevel% == 2 (
    call :openBlender
)

if %errorlevel% == 1 (
    call :openVscode
)
::END if else menu script
pause
exit /b %errorlevel%



::functions menu script
:openBf4
echo EJECUTANDO "BF4"
cd %eaAppDir%
start EALauncher.exe
start steam://rungameid/1238860
echo PULSE CUALQUIER TECLA PARA CERRAR EL JUEGO Y EL EA APP
pause
cd %bf4ExeDir%
taskkill /im bf4.exe
cd %eaAppDir%
taskkill /f /t /im EADesktop.exe
exit /b 0

:openAimLab
echo EJECUTANDO "AIM LAB"
start %aimLabSteamRunGameId%
exit /b 0

:openPlutonium
echo EJECUTANDO "PLUTONIUM"
cd %juegosInstalledDir%
start plutonium.exe
exit /b 0

:openRe4Classic
echo EJECUTANDO "RE4(2006)"
start %re4SteamRunGameId%
exit /b 0

:openGithub
cd %fireFoxNavDir%
start firefox.exe %urlGithub%
exit /b 0

:openBlender
echo EJECUTANDO "Blender"
cd %blenderAppDir%
start blender.exe
exit /b 0

:openVscode
cd %vsCodeDir%
start Code.exe -n
exit /b 0
::END functions menu script