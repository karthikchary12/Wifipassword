@echo off
echo ==================================================================================================================
echo                                This script show the password for the Wifi
echo ==================================================================================================================
netsh wlan show profile 
echo Enter the Name of the WIFI 
echo (Note: If the Selected Wifi has white space between two strings mention it in " " Example: "Karthik Chary" )
set /p input= Name of the WIFI = 
echo Selected WIFI is: %input%
netsh wlan show profile %input% key=clear | findstr "Key Content"

pause