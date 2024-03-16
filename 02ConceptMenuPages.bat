@echo off

::main function
:main
echo ::================================::
echo                MENU
echo                page 1
echo ::================================::
echo 1.- OPTION_1 &echo\2.- OPTION_2
echo 3.- OPTION_3 &echo\4.- OPTION_4
echo 5.- OPTION_5 &echo\6.- OPTION_6
echo 7.- OPTION_7 &echo\8.- OPTION_8
echo 9.- AVPAGE_MENU &echo\0.- BAT_EXIT
set /p choice= 

::if else test
if %choice% EQU 9 (
    call :test_page_2
)
pause
exit /b 0
::END main function 

::function pages
:test_page_2
echo ::================================::
echo                MENU
echo                page 2
echo ::================================::
echo 1.- OPTION_1 &echo\2.- OPTION_2
echo 3.- OPTION_3 &echo\4.- OPTION_4
echo 5.- OPTION_5 &echo\6.- OPTION_6
echo 7.- OPTION_7 
echo 8.- REPAGE_MENU
echo 9.- AVPAGE_MENU &echo\0.- BAT_EXIT
set /p choice= 

if %choice% EQU 8 (
    call :main
)
exit /b 0
