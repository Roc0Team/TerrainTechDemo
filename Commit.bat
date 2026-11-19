@echo off

set commit=N
if a%1 == aPush set commit=S

set curpath=%~dp0

echo *************************
set project=TerrainTechDemo
	echo %project%
	cd /D %curpath%
	echo git status
	git status
	git add *
	git status
	git commit -m wip
	if %commit% == S git push --tags
	if %commit% == S pause
	git status

echo *************************
set project=TheWorld_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git status
	git add *
	git status
	git commit -m wip
	if %commit% == S git push --tags
	if %commit% == S pause
	git status

echo *************************
set project=TheWorld_GDN_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git status
	git add *
	git status
	git commit -m wip
	if %commit% == S git push --tags
	if %commit% == S pause
	git status

echo *************************
set project=TheWorld_MapManager
	echo %project%
	cd /D %curpath%\%project%
	git status
	git add *
	git status
	git commit -m wip
	if %commit% == S git push --tags
	if %commit% == S pause
	git status

echo *************************
set project=TheWorld_MapManager_UnitTest
	echo %project%
	cd /D %curpath%\%project%
	git status
	git add *
	git status
	git commit -m wip
	if %commit% == S git push --tags
	if %commit% == S pause
	git status

echo *************************
set project=TheWorld_Utils
	echo %project%
	cd /D %curpath%\%project%
	git status
	git add *
	git status
	git commit -m wip
	if %commit% == S git push --tags
	if %commit% == S pause
	git status

echo *************************
set project=TheWorld_Utils_UnitTest
	echo %project%
	cd /D %curpath%\%project%
	git status
	git add *
	git status
	git commit -m wip
	if %commit% == S git push --tags
	if %commit% == S pause
	git status

pause