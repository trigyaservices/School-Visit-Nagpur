@echo off
echo ====================================================
echo Starting SCHOOL VISIT Dashboard
echo ====================================================
node build.js
start http://localhost:8000
cd dist && python -m http.server 8000
pause
