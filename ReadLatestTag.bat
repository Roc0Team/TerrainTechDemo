@echo off
set curpath=%~dp0

set project=TerrainTechDemo
	echo %project%
	cd /D %curpath%
	git describe --tags

set project=TheWorld_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git describe --tags

set project=TheWorld_GDN_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git describe --tags

set project=TheWorld_MapManager
	echo %project%
	cd /D %curpath%\%project%
	git describe --tags

set project=TheWorld_MapManager_UnitTest
	echo %project%
	cd /D %curpath%\%project%
	git describe --tags

set project=TheWorld_Utils
	echo %project%
	cd /D %curpath%\%project%
	git describe --tags

set project=TheWorld_Utils_UnitTest
	echo %project%
	cd /D %curpath%\%project%
	git describe --tags

pause