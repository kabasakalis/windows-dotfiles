@echo off
for /f "tokens=5" %%a in ('netstat -aon ^| find ":5889" ^| find "LISTENING"') do taskkill /f /pid %%a