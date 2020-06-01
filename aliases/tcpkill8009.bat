@echo off
for /f "tokens=5" %%a in ('netstat -aon ^| find ":8009" ^| find "LISTENING"') do taskkill /f /pid %%a