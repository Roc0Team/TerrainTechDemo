@echo off
set curpath=%~dp0

set project=TerrainTechDemo
	echo.
	echo [%project%]
	echo.
	cd /D %curpath%
	git status

set project=TheWorld_Viewer
	echo.
	echo [%project%]
	echo.
	cd /D %curpath%\%project%
	git status

set project=TheWorld_GDN_Viewer
	echo.
	echo [%project%]
	echo.
	cd /D %curpath%\%project%
	git status

set project=TheWorld_MapManager
	echo.
	echo [%project%]
	echo.
	cd /D %curpath%\%project%
	git status

set project=TheWorld_MapManager_UnitTest
	echo.
	echo [%project%]
	echo.
	cd /D %curpath%\%project%
	git status

set project=TheWorld_Utils
	echo.
	echo [%project%]
	echo.
	cd /D %curpath%\%project%
	git status

set project=TheWorld_Utils_UnitTest
	echo.
	echo [%project%]
	echo.
	cd /D %curpath%\%project%
	git status

cd /D %curpath%

pause