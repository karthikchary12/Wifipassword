@echo off
:start
echo ==================================================================================================================
echo                                This script show the password for the Wifi
echo ==================================================================================================================
netsh wlan show profile 
echo Enter the Name of the WIFI 
set /p input= Name of the WIFI = 
echo Selected WIFI is: %input%
netsh wlan show profile "%input%" key=clear | findstr "Key Content"

pause
set choice=
set /p choice="Do you want to check one more password? Press 'y' or 'n' to continue : "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto start 

