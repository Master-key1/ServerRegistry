@echo off
setlocal

echo ==============================
echo        Git Auto Push
echo ==============================

echo.
echo [1] Git Status
git status

echo.
echo [2] Adding files...
git add .

echo.
echo [3] Creating random commit message...

set /a num=%random% %% 10

if %num%==0 set "msg=Update project"
if %num%==1 set "msg=Fix bugs"
if %num%==2 set "msg=Update code"
if %num%==3 set "msg=Improve application"
if %num%==4 set "msg=Code changes"
if %num%==5 set "msg=Update API"
if %num%==6 set "msg=Update configuration"
if %num%==7 set "msg=Minor changes"
if %num%==8 set "msg=Update files"
if %num%==9 set "msg=Project update"

echo Commit message: %msg%

git commit -m "%msg%"

echo.
echo [4] Pushing to GitHub...
git push origin main

echo.
echo ==============================
echo          DONE
echo ==============================