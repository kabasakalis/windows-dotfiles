@echo off
for /f "tokens=5" %%a in ('netstat -aon ^| find ":1099" ^| find "LISTENING"') do taskkill /f /pid %%a