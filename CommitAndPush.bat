@echo off

set "msg=%~1"
if "a%~1" == a set msg=msg not set

set curpath=%~dp0
cd /D %curpath%

set command=call Commit.bat "%msg%" Push
rem echo %command%
%command%