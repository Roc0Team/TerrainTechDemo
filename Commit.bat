@echo off

set msg=%~1
if a%1 == a set msg=msg not set

set commit=N
if a%2 == aPush set commit=S

echo.
echo *************************
echo message = %msg%
echo commit = %commit%
echo *************************
echo.

set curpath=%~dp0

echo *************************
set project=TerrainTechDemo
	echo.
	echo %project%
	echo.

	cd /D %curpath%

	echo ----------
	echo git status
	echo ----------
	git status
	echo.

	git add *

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status
	echo.

	echo ----------
	echo git commit
	echo ----------
	git commit -m "%msg%"
	echo.

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status
	echo.

	if %commit% == S echo --------------------
	if %commit% == S echo git push (with tags)
	if %commit% == S echo --------------------
	if %commit% == S git push
	if %commit% == S git push --tags
	if %commit% == S echo.

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status
	if %commit% == S echo.

	if %commit% == S pause
echo *************************
echo.

echo *************************
set project=TheWorld_Viewer
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	echo ----------
	echo git status
	echo ----------
	git status
	echo.

	git add *
	echo.

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status
	echo.

	echo ----------
	echo git commit
	echo ----------
	git commit -m "%msg%"
	echo.

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status
	echo.

	if %commit% == S echo --------------------
	if %commit% == S echo git push (with tags)
	if %commit% == S echo --------------------
	if %commit% == S git push
	if %commit% == S git push --tags
	if %commit% == S echo.

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status
	if %commit% == S echo.

	if %commit% == S pause
echo *************************
echo.

echo *************************
set project=TheWorld_GDN_Viewer
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	echo ----------
	echo git status
	echo ----------
	git status
	echo.

	git add *
	echo.

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status
	echo.

	echo ----------
	echo git commit
	echo ----------
	git commit -m "%msg%"
	echo.

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status
	echo.

	if %commit% == S echo --------------------
	if %commit% == S echo git push (with tags)
	if %commit% == S echo --------------------
	if %commit% == S git push
	if %commit% == S git push --tags
	if %commit% == S echo.

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status
	if %commit% == S echo.

	if %commit% == S pause
echo *************************
echo.

echo *************************
set project=TheWorld_MapManager
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	echo ----------
	echo git status
	echo ----------
	git status
	echo.

	git add *
	echo.

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status
	echo.

	echo ----------
	echo git commit
	echo ----------
	git commit -m "%msg%"
	echo.

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status
	echo.

	if %commit% == S echo --------------------
	if %commit% == S echo git push (with tags)
	if %commit% == S echo --------------------
	if %commit% == S git push
	if %commit% == S git push --tags
	if %commit% == S echo.

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status
	if %commit% == S echo.

	if %commit% == S pause
echo *************************
echo.

echo *************************
set project=TheWorld_MapManager_UnitTest
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	echo ----------
	echo git status
	echo ----------
	git status
	echo.

	git add *
	echo.

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status
	echo.

	echo ----------
	echo git commit
	echo ----------
	git commit -m "%msg%"
	echo.

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status
	echo.

	if %commit% == S echo --------------------
	if %commit% == S echo git push (with tags)
	if %commit% == S echo --------------------
	if %commit% == S git push
	if %commit% == S git push --tags
	if %commit% == S echo.

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status
	if %commit% == S echo.

	if %commit% == S pause
echo *************************
echo.

echo *************************
set project=TheWorld_Utils
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	echo ----------
	echo git status
	echo ----------
	git status
	echo.

	git add *
	echo.

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status
	echo.

	echo ----------
	echo git commit
	echo ----------
	git commit -m "%msg%"
	echo.

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status
	echo.

	if %commit% == S echo --------------------
	if %commit% == S echo git push (with tags)
	if %commit% == S echo --------------------
	if %commit% == S git push
	if %commit% == S git push --tags
	if %commit% == S echo.

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status
	if %commit% == S echo.

	if %commit% == S pause
echo *************************
echo.

echo *************************
set project=TheWorld_Utils_UnitTest
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	echo ----------
	echo git status
	echo ----------
	git status
	echo.

	git add *
	echo.

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status
	echo.

	echo ----------
	echo git commit
	echo ----------
	git commit -m "%msg%"
	echo.

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status
	echo.

	if %commit% == S echo --------------------
	if %commit% == S echo git push (with tags)
	if %commit% == S echo --------------------
	if %commit% == S git push
	if %commit% == S git push --tags
	if %commit% == S echo.

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status
	if %commit% == S echo.

	if %commit% == S pause
echo *************************
echo.

cd /D %curpath%

pause