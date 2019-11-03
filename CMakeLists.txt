
command(arg1 arg2 ...)                               # 运行命令
set(var_name var_value)                              # 定义变量,或者给已经存在的变量赋值
command(arg1 ${var_name})                            # 使用变量

# 一个最简单的CMake实例
cmake_minimum_required (VERSION num)                 # CMake最低版本号要求
SET( CMAKE_CXX_FLAGS "XXX" )                         # 设定编译器版本，如-std=c++11
project (cur_project_name)                           # 项目信息
add_executable(cur_project_name XXX.cpp)             # 指定生成目标

# 引入外部依赖
find_package(std_lib_name VERSION REQUIRED)          # 引入外部依赖
INCLUDE_DIRECTORIES(${std_lib_name_INCLUEDE_DIRS})   # 指定include路径，放在add_executable前面                     
TARGET_LINK_LIBRARIES(${std_lib_name_LIBRARIES})     # 指定libraries路径，放在add_executable后面


# 其他辅助功能
add_library(<name> [lib_type] source1)               # 生成库类型(动态,静态)
add_subdirectory(dir)                                # 添加一个子目录
AUX_SOURCE_DIRECTORY(. SRC_LIST)                     # 查找当前目录所有文件，并保存到SRC_LIST变量中
FOREACH(one_dir ${SRC_LIST})
    MESSAGE(${one_dir})                              # 使用message进行打印
ENDFOREACH(onedir)


# 控制语句
if(expression)                  # 不区分大小写，并使用"#"来进行注释
    COMMAND1(ARGS)
ELSE(expression)
    COMMAND2(ARGS)
ENDIF(expression)

# expression
IF(var)                       # 不是空, 0, N, NO, OFF, FALSE, NOTFOUND 或 <var>_NOTFOUND时，为真
IF(NOT var)                   # 与上述条件相反。
IF(var1 AND var2)             # 当两个变量都为真是为真。
IF(var1 OR var2)              # 当两个变量其中一个为真时为真。
IF(COMMAND cmd)               # 当给定的cmd确实是命令并可以调用是为真
IF(EXISTS dir)                # 目录名存在
IF(EXISTS file)               # 文件名存在
IF(IS_DIRECTORY dirname)      # 当dirname是目录
IF(file1 IS_NEWER_THAN file2) # 当file1比file2新,为真
IF(variable MATCHES regex)    # 符合正则

# 循环
WHILE(condition)
    COMMAND1(ARGS)
    // ...
ENDWHILE(condition)



































