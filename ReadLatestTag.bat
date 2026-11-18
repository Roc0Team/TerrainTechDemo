@echo off
set curpath=%~dp0

set project=TheWorld_GDN_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git describe --tags

set project=TheWorld_MapManager
	echo %project%
	cd /D %curpath%\%project%
	git describe --tags

set project=TheWorld_Utils
	echo %project%
	cd /D %curpath%\%project%
	git describe --tags

set project=TheWorld_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git describe --tags

rem set project=ConsoleMapManager
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git describe --tags

rem set project=TheWorld_MapManager_UnitTest
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git describe --tags

rem set project=TheWorld_Assets
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git describe --tags

rem set project=TheWorld_ClientDll
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git describe --tags

rem set project=TheWorld_ConsoleClient
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git describe --tags

rem set project=TheWorld_GD_ClientDll
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git describe --tags

rem set project=TheWorldG
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git describe --tags
	
pause