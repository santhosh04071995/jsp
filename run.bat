@echo off
setlocal
cd /d "%~dp0"
title JSP and Servlet Runner

echo ========================================================
echo   Starting JSP and Servlet Project
echo ========================================================
echo.

:: Add Maven to PATH for this session
set "PATH=C:\tools\apache-maven-3.10.0\bin;%PATH%"

echo Checking Java...
java -version
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Java not found. Please install Java JDK 17+.
    pause
    exit /b 1
)

echo.
echo Checking Maven...
call mvn -version
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Maven not found.
    pause
    exit /b 1
)

echo.
echo ========================================================
echo   Starting Server at http://localhost:8081/
echo   Your browser will open automatically in 5 seconds.
echo   Press Ctrl+C in this window to stop the server.
echo ========================================================
echo.

:: Open browser automatically after 5 seconds in background
start "" powershell -NoProfile -Command "Start-Sleep -Seconds 5; Start-Process 'http://localhost:8081/'"

:: Run the application
call mvn compile exec:java

echo.
echo ========================================================
echo   Server has stopped.
echo ========================================================
pause
