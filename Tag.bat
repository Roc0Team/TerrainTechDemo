@echo off
set curpath=%~dp0

rem set TAG=wip-2026-10-27
set TAG=v0.1.1

set project=TerrainTechDemo
	echo %project%
	cd /D %curpath%
	git tag %TAG%

set project=TheWorld_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git tag %TAG%

set project=TheWorld_GDN_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git tag %TAG%

set project=TheWorld_MapManager
	echo %project%
	cd /D %curpath%\%project%
	git tag %TAG%

set project=TheWorld_MapManager_UnitTest
	echo %project%
	cd /D %curpath%\%project%
	git tag %TAG%

set project=TheWorld_Utils
	echo %project%
	cd /D %curpath%\%project%
	git tag %TAG%

set project=TheWorld_Utils_UnitTest
	echo %project%
	cd /D %curpath%\%project%
	git tag %TAG%
