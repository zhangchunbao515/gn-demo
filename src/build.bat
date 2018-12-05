@echo off
REM
REM Copyright (C) 2018 xxxx <zhangchunbao515@163.com>
REM
REM Licensed under the Apache License, Version 2.0
SET curr_dir=%~dp0
cd %curr_dir%

set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_GENERATORS=msvs
set GYP_MSVS_VERSION=2015

gn gen out/debug --args="target_cpu=\"x86\" is_standalone_build=true"
ninja.exe -C out/debug

pause
