@echo off
REM
REM Copyright (C) 2018 xxxx <zhangchunbao515@163.com>
REM
REM Licensed under the Apache License, Version 2.0
SET CurDir=%~dp0
cd %CurDir%

set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_GENERATORS=msvs
set GYP_MSVS_VERSION=2015


REM gn gen out/debug --args='is_standalone_build=true target_cpu=\"x86\"'

REM is_standalone_build = true
REM target_cpu = "x86"


gn args out\debug
pause

ninja.exe -C out\debug
pause
