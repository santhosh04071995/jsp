# JSP & Servlet Runner PowerShell Script
$ErrorActionPreference = "Stop"

Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "   Starting JSP and Servlet Project" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

# Add Maven to PATH
$env:Path = "C:\tools\apache-maven-3.10.0\bin;" + $env:Path

# Check Java
try {
    & java -version
} catch {
    Write-Host "[ERROR] Java is not installed or not in PATH!" -ForegroundColor Red
    pause
    Exit 1
}

# Check Maven
try {
    & mvn -version
} catch {
    Write-Host "[ERROR] Maven is not installed or not in PATH!" -ForegroundColor Red
    pause
    Exit 1
}

Write-Host ""
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "   Starting Server at http://localhost:8081/" -ForegroundColor Cyan
Write-Host "   Opening http://localhost:8081/ in your browser..." -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

# Open browser after 5 seconds in background
Start-Job -ScriptBlock {
    Start-Sleep -Seconds 5
    Start-Process "http://localhost:8081/"
} | Out-Null

# Run Tomcat
mvn compile exec:java
