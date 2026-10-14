@echo off
cd /d "%~dp0"
title AeroGuard Live Weather Command Center
echo ============================================================
echo   Starting AeroGuard Live Weather Command Center
echo ============================================================
echo Folder: %~dp0
echo.
echo Launching your browser at: http://localhost:8080
start "" "http://localhost:8080"
echo.
echo Server running! Keep this window open while using the app.
echo (Press Ctrl+C to stop the server anytime)
echo ============================================================
python -m http.server 8080
