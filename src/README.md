这个目录下的代码文件为工程文件，要编译这个目录下的文件，请按照下面进行执行：

1、进入到当前目录并执行下面的命令:
set PATH=%PATH%;F:\gn-demo\depot_tools
set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_GENERATORS=msvs
set GYP_MSVS_VERSION=2015

2、执行下面的命令：
gn args out\debug
完成后再打开的编辑器中输入下面的参数：
is_standalone_build = true
target_cpu = "x86"

3、执行下面的编译命令：
ninja.exe -C out\debug

