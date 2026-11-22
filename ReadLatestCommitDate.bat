@echo off
set curpath=%~dp0

rem 	git log -1 --format="%at" | xargs -I{} date -d @{} +%Y/%m/%d_%H:%M:%S

set project=TerrainTechDemo
	echo %project%
	cd /D %curpath%
	git log -1
	git -v

set project=TheWorld_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git log -1
	git -v

set project=TheWorld_GDN_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git log -1
	git -v

set project=TheWorld_MapManager
	echo %project%
	cd /D %curpath%\%project%
	git log -1
	git -v

set project=TheWorld_MapManager_UnitTest
	echo %project%
	cd /D %curpath%\%project%
	git log -1
	git -v

set project=TheWorld_Utils
	echo %project%
	cd /D %curpath%\%project%
	git log -1
	git -v

set project=TheWorld_Utils_UnitTest
	echo %project%
	cd /D %curpath%\%project%
	git log -1
	git -v

pause