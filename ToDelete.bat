@echo off

set "msg=msg not set"
set "push=N"

call :CommitAndPush "%msg%" "%push%"

goto :eof

:CommitAndPush
	set "push=%~2"
	echo Valore ricevuto: [%push%]
	rem @echo on
	if "%push%"=="S" (
		echo --------------------
		echo git push ^(with tags^)
		echo --------------------
		echo.
		echo ----------------------
		echo git status ^(post push^)
		echo ----------------------
		git status
		echo.
	)
goto :eof
