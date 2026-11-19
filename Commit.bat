@echo off

set msg=%~1
if "a%~1" == a set msg=msg not set

set push=N
if a%~2 == aPush set push=S

echo.
echo *************************
echo message = %msg%
echo push = %push%
echo *************************
echo.
pause
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

	if %push% == S echo --------------------
	if %push% == S echo git push (with tags)
	if %push% == S echo --------------------
	if %push% == S git push
	if %push% == S git push --tags
	if %push% == S echo.

	if %push% == S echo ----------------------
	if %push% == S echo git status (post push)
	if %push% == S echo ----------------------
	if %push% == S git status
	if %push% == S echo.

	if %push% == S pause
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

	if %push% == S echo --------------------
	if %push% == S echo git push (with tags)
	if %push% == S echo --------------------
	if %push% == S git push
	if %push% == S git push --tags
	if %push% == S echo.

	if %push% == S echo ----------------------
	if %push% == S echo git status (post push)
	if %push% == S echo ----------------------
	if %push% == S git status
	if %push% == S echo.

	if %push% == S pause
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

	if %push% == S echo --------------------
	if %push% == S echo git push (with tags)
	if %push% == S echo --------------------
	if %push% == S git push
	if %push% == S git push --tags
	if %push% == S echo.

	if %push% == S echo ----------------------
	if %push% == S echo git status (post push)
	if %push% == S echo ----------------------
	if %push% == S git status
	if %push% == S echo.

	if %push% == S pause
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

	if %push% == S echo --------------------
	if %push% == S echo git push (with tags)
	if %push% == S echo --------------------
	if %push% == S git push
	if %push% == S git push --tags
	if %push% == S echo.

	if %push% == S echo ----------------------
	if %push% == S echo git status (post push)
	if %push% == S echo ----------------------
	if %push% == S git status
	if %push% == S echo.

	if %push% == S pause
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

	if %push% == S echo --------------------
	if %push% == S echo git push (with tags)
	if %push% == S echo --------------------
	if %push% == S git push
	if %push% == S git push --tags
	if %push% == S echo.

	if %push% == S echo ----------------------
	if %push% == S echo git status (post push)
	if %push% == S echo ----------------------
	if %push% == S git status
	if %push% == S echo.

	if %push% == S pause
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

	if %push% == S echo --------------------
	if %push% == S echo git push (with tags)
	if %push% == S echo --------------------
	if %push% == S git push
	if %push% == S git push --tags
	if %push% == S echo.

	if %push% == S echo ----------------------
	if %push% == S echo git status (post push)
	if %push% == S echo ----------------------
	if %push% == S git status
	if %push% == S echo.

	if %push% == S pause
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

	if %push% == S echo --------------------
	if %push% == S echo git push (with tags)
	if %push% == S echo --------------------
	if %push% == S git push
	if %push% == S git push --tags
	if %push% == S echo.

	if %push% == S echo ----------------------
	if %push% == S echo git status (post push)
	if %push% == S echo ----------------------
	if %push% == S git status
	if %push% == S echo.

	if %push% == S pause
echo *************************
echo.

cd /D %curpath%

pause