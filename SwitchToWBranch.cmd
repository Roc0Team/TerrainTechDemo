@echo off
set curpath=%~dp0

rem se none siste wbranch prima lo crea con l'opzione -c se la creazione fallisce perché esiste già fa solo lo switch (l'operatore || fa eseguire ils econdo comando solo se il primo va in errore)

set project=TerrainTechDemo
	echo %project%
	cd /D %curpath%
	git switch -c wbranch 2>nul || git switch wbranch
	git branch -a

set project=TheWorld_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git switch -c wbranch 2>nul || git switch wbranch
	git branch -a

set project=TheWorld_GDN_Viewer
	echo %project%
	cd /D %curpath%\%project%
	git switch -c wbranch 2>nul || git switch wbranch
	git branch -a

set project=TheWorld_MapManager
	echo %project%
	cd /D %curpath%\%project%
	git switch -c wbranch 2>nul || git switch wbranch
	git branch -a

set project=TheWorld_MapManager_UnitTest
	echo %project%
	cd /D %curpath%\%project%
	git switch -c wbranch 2>nul || git switch wbranch
	git branch -a

set project=TheWorld_Utils
	echo %project%
	cd /D %curpath%\%project%
	git switch -c wbranch 2>nul || git switch wbranch
	git branch -a

set project=TheWorld_Utils_UnitTest
	echo %project%
	cd /D %curpath%\%project%
	git switch -c wbranch 2>nul || git switch wbranch
	git branch -a

pause