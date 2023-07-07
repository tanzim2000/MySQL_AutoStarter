@echo off
cls

REM Title: MySQL AutoStarter
REM Author: Tanzim Ahmed Sagar
REM Description: This script starts MySQL80 if it is not already running. It also provides the option to open MySQL Workbench 8.0.
REM Caution: Modify the "WORKBENCHPATH" before using. Make sure the file exists on that path!
REM Caution: NEEDS ADMINISTRATIVE PREVILEGES!!!

set "WORKBENCHPATH=C:\Program Files\MySQL\MySQL Workbench 8.0\MySQLWorkbench.exe"

REM Checking if running with administrative privileges
net session >nul 2>&1
if %errorLevel% == 0 (
	echo Running with administrative privileges.
) else (
	echo Running without administrative privileges.
	echo Requesting administrative privileges...
	powershell start -verb runas '%0'
	exit /b
)

echo Checking in process...

tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I /N "mysqld.exe">NUL
if "%ERRORLEVEL%"=="0" (
	echo MySQL80 is already running.
) else (
	echo Starting MySQL80...
	net start MySQL80
	ping -n 1 -w 1000 127.0.0.1 >NUL
	tasklist /FI "IMAGENAME eq mysqld.exe" 2>NUL | find /I /N "mysqld.exe">NUL
	if "%ERRORLEVEL%"=="0" (
		echo MySQL80 started successfully.
	) else (
		echo Failed to start MySQL80. Stopping script.
		exit /b
	)
)

REM Prompt the user to open MySQL Workbench

choice /M "Do you want to open MySQL Workbench 8.0?" /C YN
if %errorLevel% equ 1 (
	start "" "WORKBENCHPATH"
)
