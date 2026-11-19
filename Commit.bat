@echo off

set commit=N
if a%1 == aPush set commit=S

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

	git add *

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status

	git commit -m wip

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status

	if %commit% == S git push --tags

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status

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

	git add *

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status

	git commit -m wip

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status

	if %commit% == S git push --tags

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status

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

	git add *

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status

	git commit -m wip

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status

	if %commit% == S git push --tags

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status

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

	git add *

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status

	git commit -m wip

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status

	if %commit% == S git push --tags

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status

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

	git add *

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status

	git commit -m wip

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status

	if %commit% == S git push --tags

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status

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

	git add *

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status

	git commit -m wip

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status

	if %commit% == S git push --tags

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status

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

	git add *

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status

	git commit -m wip

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status

	if %commit% == S git push --tags

	if %commit% == S echo ----------------------
	if %commit% == S echo git status (post push)
	if %commit% == S echo ----------------------
	if %commit% == S git status

	if %commit% == S pause
	echo ------------------------
echo *************************
echo.

pause