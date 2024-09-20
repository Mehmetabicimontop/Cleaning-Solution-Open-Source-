@echo off
title CS Cleaner
color 0D
echo ========================================================================================
echo  #######  ######       ####### ###      ########  ######  ###  ### ######## ####### 
echo !##      !##          !##      ##!      ##!      ##!  ### ##!#!### ##!      ##!  ###
echo !#!       !##!!       !#!      #!!      #!!!:!   #!#!#!#! #!##!!#! #!!!:!   #!#!!#! 
echo :!!          !:!      :!!      !!:      !!:      !!:  !!! !!:  !!! !!:      !!: :!! 
echo  :: :: : ::.: :        :: :: : : ::.: : : :: :::  :   : : ::    :  : :: :::  :   : :
echo ========================================================================================
echo Made by Mehmet049er130 on Discord or t.me/BL4CKM4RK3TTT on twitter
echo ========================================================================================

echo.
echo Wahlen Sie eine Option:
echo [1] Temporare Dateien reinigen (%temp%)
echo [2] Windows temporare Dateien reinigen (C:\Windows\Temp)
echo [3] Prefetch Dateien reinigen (C:\Windows\Prefetch)
echo [4] Papierkorb leeren
echo [5] Zuletzt verwendete Dateien reinigen (%userprofile%\Recent)
echo [6] Alle Optionen ausfuhren
echo [0] Beenden
echo.
set /p choice=Geben Sie Ihre Auswahl ein (0-6): 

if %choice%==1 goto temp_files
if %choice%==2 goto win_temp_files
if %choice%==3 goto prefetch_files
if %choice%==4 goto recycle_bin
if %choice%==5 goto recent_files
if %choice%==6 goto clean_all
if %choice%==0 goto end

:temp_files
echo Reinigung von temporaren Dateien...
del /s /f /q "%temp%\*.*"
rd /s /q "%temp%"
mkdir "%temp%"
echo Temporare Dateien gereinigt!
goto end

:win_temp_files
echo Reinigung von Windows temporaren Dateien...
del /s /f /q "C:\Windows\Temp\*.*"
rd /s /q "C:\Windows\Temp"
mkdir "C:\Windows\Temp"
echo Windows temporare Dateien gereinigt!
goto end

:prefetch_files
echo Reinigung von Prefetch Dateien...
del /s /f /q "C:\Windows\Prefetch\*.*"
echo Prefetch Dateien gereinigt!
goto end

:recycle_bin
echo Leeren des Papierkorbs...
rd /s /q %systemdrive%\$Recycle.bin
echo Papierkorb geleert!
goto end

:recent_files
echo Reinigung von zuletzt verwendeten Dateien...
del /s /f /q "%userprofile%\Recent\*.*"
echo Zuletzt verwendete Dateien gereinigt!
goto end

:clean_all
echo Reinigung von allen ausgewahlten Dateien...

call :temp_files
call :win_temp_files
call :prefetch_files
call :recycle_bin
call :recent_files

goto end

:end
echo.
echo Reinigung abgeschlossen!
pause
exit
