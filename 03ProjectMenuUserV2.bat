::set echo off and color
@echo off
color 0d
::END echo off and color

::set variables for launcher's dirs
set eaAppDir= "C:\Program Files\Electronic Arts\EA Desktop\EA Desktop"
set steamAppDir= "C:\Program Files (x86)\Steam"
set battleNetAppDir= "C:\Program Files (x86)\Battle.net"
::END variables for launcher's dirs

::set variables for game's dirs
set bf4ExeDir= "C:\Program Files (x86)\Steam\steamapps\common\Battlefield 4"
set juegosInstalledDir= "C:\Juegos"
::END variables for game's dirs

::set variables for software's dirs
set blenderAppDir= "C:\Program Files\Blender Foundation\Blender 3.5"
set fireFoxNavDir= "C:\Program Files\Mozilla Firefox"
set retroArchDir= "C:\Users\Mikaoski\Desktop\RetroArch-Win64"
::END variables for software's dirs

::set variables for ide's dirs
set vsCodeDir= "C:\Users\Mikaoski\AppData\Local\Programs\Microsoft VS Code\"
set netbeansIdeDir= "C:\Program Files\NetBeans-17\netbeans\bin"
::END variables for ide's dirs

::set variables vscode workspaces
set workspaceVscodeDir= "C:\Users\Mikaoski\Desktop\Programación RW\2023"
::END vscode workspaces

::set variables url
set urlGithub= "https://github.com/"
set urlWinCmd= "https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands"
set urlBatchTutorial= "https://www.tutorialspoint.com/batch_script/index.htm"
set urlUdemyCourses= "https://www.udemy.com/home/my-courses/"
::end variables url

::set variables for games
set re4SteamRunGameId= steam://rungameid/254700
set aimLabSteamRunGameId= steam://rungameid/714010
set bf4SteamRunGameId= steam://rungameid/1238860
set tf2SteamRunGameId= steam://rungameid/440
set csgoSteamRunGameId= steam://rungameid/730
::END variables for games

::Main function
:main
echo ::================================::
echo                MENU
echo                page 1
echo ::================================::
echo 1.- Abrir VSCode   &echo\2.- Abrir Blender
echo 3.- Abrir Github (Firefox) &echo\4.- Jugar Resident Evil 4(2006)
echo 5.- Abrir Plutonium Client For CoD &echo\6.- Abrir Aim Lab
echo 7.- Jugar BF4  &echo\8.- Abrir TF2
echo 9.- Pagina siguiente (2)   &echo\0.- Cerrar Menu
set /p optionSelect= 
cls

::if else menu main
if %optionSelect% EQU 9 (
    call :page_2_options
    call :main
)
if %optionSelect% EQU 8 (
    call :openTf2
)
if %optionSelect% EQU 7 (
    call :openBf4
)
if %optionSelect% EQU 6 (
    call :openAimLab
)
if %optionSelect% EQU 5 (
    call :openPlutonium
)
if %optionSelect% EQU 4 (
    call :openRe4Classic
)
if %optionSelect% EQU 3 (
    call :openGithub
)
if %optionSelect% EQU 2 (
    call :openBlender
)
if %optionSelect% EQU 1 (
    call :openVscode
)
if %optionSelect% NEQ 0 (
    call :main
)
::END if else menu main
exit /b 0
::END main function

::echo options page 2
:page_2_options
echo ::================================::
echo                MENU
echo                page 2
echo ::================================::
echo 1.- Abrir ventana de WinCmd Commands (Firefox) &echo\2.- Abrir ventana de Batch Documentacion (Firefox)
echo 3.- Abrir Java Shell  &echo\4.- Abrir Netbeans IDE
echo 5.- Abrir cursos de Udemy   &echo\6.- Abrir RetroArch
echo 7.- Jugar CSGO    &echo\8.- OPTION_8
echo 9.- Siguiente pagina (3)   &echo\0.- Volver a la pagina 1
set /p optionSelect= 

::if else menu page 2
if %optionSelect% EQU 9 (
    call :placeholder_page
    call :page_2_options
)
if %optionSelect% EQU 8 (
    echo EXEC_OPTION_8
)
if %optionSelect% EQU 7 (
    call :openCSGO
)
if %optionSelect% EQU 6 (
    call :openRetroArch
)
if %optionSelect% EQU 5 (
    call :openUdemyCourses
)
if %optionSelect% EQU 4 (
    call :openNetbeansIde
)
if %optionSelect% EQU 3 (
    call :openJavaShell
)
if %optionSelect% EQU 2 (
    call :openUrlBatchTutorial
)
if %optionSelect% EQU 1 (
    call :openUrlWinCmd
)
cls
exit /b 0
::END echo page 2

::function options page 2


:openCSGO
echo EJECUTANDO "CSGO"
start %csgoSteamRunGameId%
exit /b 0

:openRetroArch
echo EJECUTANDO "RETROARCH EMU"
cd %retroArchDir%
start retroarch.exe
exit /b 0

:openUdemyCourses
cd %fireFoxNavDir%
start firefox.exe %urlUdemyCourses%
exit /b 0

:openNetbeansIde
start cmd.exe /k code -r
exit /b 0

:openJavaShell
echo EJECUTANDO "JAVA SHELL"
start cmd.exe /k jshell
exit /b 0

:openUrlBatchTutorial
echo ABRIENDO "BATCH DOC"
cd %fireFoxNavDir%
start firefox.exe %urlBatchTutorial%
exit /b 0

:openUrlWinCmd
echo ABRIENDO "WIN CMD COMMANDS DOC"
cd %fireFoxNavDir%
start firefox.exe %urlWinCmd%
exit /b 0
::END options page 2

::function options page 1
:openTf2+
echo EJECUTANDO "TF2"
start %tf2SteamRunGameId%
exit /b 0

:openBf4
echo EJECUTANDO "BF4"
cd %eaAppDir%
start EALauncher.exe
start %bf4SteamRunGameId%
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
echo EJECUTANDO "Github"
cd %fireFoxNavDir%
start firefox.exe %urlGithub%
exit /b 0

:openBlender
echo EJECUTANDO "Blender"
cd %blenderAppDir%
start blender-launcher.exe
exit /b 0

:openVscode
echo EJECUTANDO "VSCode"
start cmd.exe /k "C:\Users\Mikaoski\AppData\Local\Programs\Microsoft VS Code\Code.exe"
exit /b 0
::end options page 1


::PLACEHOLDERS (NO DECLARAR)

::echo option menu page PLACEHOLDER
:placeholder_page
echo ::================================::
echo                MENU
echo           page_placeholder
echo ::================================::
echo 1.- OPTION_1   &echo\2.- OPTION_2
echo 3.- OPTION_3   &echo\4.- OPTION_4
echo 5.- OPTION_5   &echo\6.- OPTION_6
echo 7.- OPTION_7    &echo\8.- OPTION_8
echo 9.- AVPAG_MENU   &echo\0.- REPAG_MENU
set /p optionSelect=
::if else menu PLACEHOLDER
if %optionSelect% EQU 9 (
    echo EXEC_OPTION_9
)
if %optionSelect% EQU 8 (
    echo EXEC_OPTION_8
)
if %optionSelect% EQU 7 (
    echo EXEC_OPTION_7
)
if %optionSelect% EQU 6 (
    echo EXEC_OPTION_6
)
if %optionSelect% EQU 5 (
    echo EXEC_OPTION_5
)
if %optionSelect% EQU 4 (
    echo EXEC_OPTION_4
)
if %optionSelect% EQU 3 (
    echo EXEC_OPTION_3
)
if %optionSelect% EQU 2 (
    echo EXEC_OPTION_2
)
if %optionSelect% EQU 1 (
    echo EXEC_OPTION_1
)
::END if else menu PLACEHOLDER
cls
exit /b 0
::END menu page PLACEHOLDER