@echo off

echo.
sc query "EventLog" | findstr /i /c:"STOPPED" >nul
if %errorlevel% equ 0 (
    echo EventLog: Disabled
) else (
    echo EventLog: Enabled
)

sc query "SysMain" | findstr /i /c:"STOPPED" >nul
if %errorlevel% equ 0 (
    echo SysMain: Disabled
) else (
    echo SysMain: Enabled
)

sc query "DPS" | findstr /i /c:"STOPPED" >nul
if %errorlevel% equ 0 (
    echo DPS: Disabled
) else (
    echo DPS: Enabled
)

sc query "EventLog" | findstr /i /c:"STOPPED" >nul
if %errorlevel% equ 0 (
    echo EventLog: Disabled
) else (
    echo EventLog: Enabled
)

sc query "DcomLaunch" | findstr /i /c:"STOPPED" >nul
if %errorlevel% equ 0 (
    echo DcomLaunch: Disabled
) else (
    echo DcomLaunch: Enabled
)

echo.
pause