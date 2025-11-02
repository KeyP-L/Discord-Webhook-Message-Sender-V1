@echo off

set "DISCORD_URL=https://discord.com"

:: Try Chrome
where chrome >nul 2>&1
if %errorlevel% == 0 (
    start chrome "%DISCORD_URL%"
    exit
)

:: Try Edge
where msedge >nul 2>&1
if %errorlevel% == 0 (
    start msedge "%DISCORD_URL%"
    exit
)

:: Try Opera
where opera >nul 2>&1
if %errorlevel% == 0 (
    start opera "%DISCORD_URL%"
    exit
)

:: Fallback: default browser
start "" "%DISCORD_URL%"
