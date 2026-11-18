@echo off
set curpath=%~dp0

set project=TheWorld_GDN_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git branch -a

set project=TheWorld_MapManager
	echo %project%
	cd /D %curpath%\%project%
	git branch -a

set project=TheWorld_Utils
	echo %project%
	cd /D %curpath%\%project%
	git branch -a

set project=TheWorld_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git branch -a

rem set project=ConsoleMapManager
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git branch -a

rem set project=TheWorld_MapManager_UnitTest
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git branch -a

rem set project=TheWorld_Assets
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git branch -a

rem set project=TheWorld_ClientDll
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git branch -a

rem set project=TheWorld_ConsoleClient
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git branch -a

rem set project=TheWorld_GD_ClientDll
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git branch -a

rem set project=TheWorldG
rem 	echo %project%
rem 	cd /D %curpath%\%project%
rem 	git branch -a
	
pause