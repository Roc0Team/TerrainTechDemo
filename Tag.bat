@echo off
set curpath=%~dp0

rem set TAG=wip-2026-10-27
set TAG=v0.1.1

set project=TheWorld_GDN_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git tag %TAG%

set project=TheWorld_MapManager
	echo %project%
	cd /D %curpath%\%project%
	git tag %TAG%

set project=TheWorld_Utils
	echo %project%
	cd /D %curpath%\%project%
	git tag %TAG%

set project=TheWorld_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git tag %TAG%

rem set project=ConsoleMapManager
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git tag %TAG%

rem set project=TheWorld_MapManager_UnitTest
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git tag %TAG%

rem set project=TheWorld_Assets
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git tag %TAG%

rem set project=TheWorld_ClientDll
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git tag %TAG%

rem set project=TheWorld_ConsoleClient
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git tag %TAG%

rem set project=TheWorld_GD_ClientDll
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git tag %TAG%

rem set project=TheWorldG
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git tag %TAG%
	
pause