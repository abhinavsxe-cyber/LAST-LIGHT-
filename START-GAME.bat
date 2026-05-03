@echo off
cd /d "%~dp0"
echo Starting SOLARPUNK: LAST LIGHT...
echo.
start "" cmd /c "timeout /t 2 /nobreak >nul && start "" http://127.0.0.1:5173/"
node server.mjs
pause
