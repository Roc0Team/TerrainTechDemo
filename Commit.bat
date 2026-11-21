@echo off

set "msg=%~1"
if "%~1"=="" set "msg=msg not set"

set "push=N"
if "a%~2" == "aPush" set "push=S"

echo.
echo *************************
echo message = [%msg%]
echo push = [%push%]
echo *************************
echo.

set curpath=%~dp0

echo *************************
set project=TheWorld_Viewer
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	call :CommitAndPush "%msg%" "%push%"
echo *************************
echo.

echo *************************
set project=TheWorld_GDN_Viewer
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	call :CommitAndPush "%msg%" "%push%"
echo *************************
echo.

echo *************************
set project=TheWorld_MapManager
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	call :CommitAndPush "%msg%" "%push%"
echo *************************
echo.

echo *************************
set project=TheWorld_MapManager_UnitTest
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	call :CommitAndPush "%msg%" "%push%"
echo *************************
echo.

echo *************************
set project=TheWorld_Utils
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	call :CommitAndPush "%msg%" "%push%"
echo *************************
echo.

echo *************************
set project=TheWorld_Utils_UnitTest
	echo.
	echo %project%
	echo.

	cd /D %curpath%\%project%

	call :CommitAndPush "%msg%" "%push%"
echo *************************
echo.

echo *************************
set project=TerrainTechDemo
	echo.
	echo %project%
	echo.

	cd /D %curpath%

	call :CommitAndPush "%msg%" "%push%"
echo *************************
echo.

cd /D %curpath%

pause
goto :eof

:CommitAndPush
	echo ----------
	echo git status
	echo ----------
	git status
	echo.

	rem echo %~1
	rem echo %~2
	
	git add *
	echo.

	echo -------------------------
	echo git status (post git add)
	echo -------------------------
	git status
	echo.

	echo ----------
	echo git commit
	echo ----------
	git commit -m "%~1"
	echo.

	echo ------------------------
	echo git status (post commit)
	echo ------------------------
	git status
	echo.
	
	rem pause

	if "%~2" == "S" (
		echo --------------------
		echo git push ^(with tags^)
		echo --------------------
		git push
		git push --tags
		echo.

		echo ----------------------
		echo git status ^(post push^)
		echo ----------------------
		git status
		echo.
	)
goto :eof
