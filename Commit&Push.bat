@echo off

set msg=%1
if a%1 == a set msg=msg not set

set curpath=%~dp0

call Commit.bat "%msg%" Push