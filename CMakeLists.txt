command(arg1 arg2 ...)                               # 运行命令
set(var_name var_value)                              # 定义变量,或者给已经存在的变量赋值
command(arg1 ${var_name})                            # 使用变量

#************************************** 工程配置部分 **************************************#
cmake_minimum_required (VERSION num)                 # CMake最低版本号要求
project (cur_project_name)                           # 项目信息
set(CMAKE_CXX_FLAGS "XXX" )                         # 设定编译器版本，如-std=c++11
set(CMAKE_BUILD_TYPE "XXX")                          # 设定编译模式，如Debug/Release
#************************************** 依赖执行部分 **************************************#
find_package(std_lib_name VERSION REQUIRED)          # 引入外部依赖
add_library(<name> [lib_type] source1)               # 生成库类型(动态,静态)
include_directories(${std_lib_name_INCLUEDE_DIRS})   # 指定include路径，放在add_executable前面
add_executable(cur_project_name XXX.cpp)             # 指定生成目标                  
target_link_libraries(${std_lib_name_LIBRARIES})     # 指定libraries路径，放在add_executable后面

#************************************** 其他辅助部分 **************************************#
function(function_name arg)                          # 定义一个函数
add_subdirectory(dir)                                # 添加一个子目录
AUX_SOURCE_DIRECTORY(. SRC_LIST)                     # 查找当前目录所有文件，并保存到SRC_LIST变量中
FOREACH(one_dir ${SRC_LIST})
    MESSAGE(${one_dir})                              # 使用message进行打印
ENDFOREACH(onedir)


#************************************** 判断控制部分 **************************************#
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

option (
        USE_MYMATH 
        "Use tutorial provided math implementation" 
        ON
       ) 


add_definitions(-DWIN32)


# 添加执行文件
add_executable(cur_project_name XXX.cpp)  
# 将库文件链接链接到当前执行文件
target_link_libraries(cur_project_name ${std_lib_name_LIBRARIES})


cmake_minimum_required(VERSION 2.8.3)
project(beginner_tutorials)
 
## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg)
 
## Declare ROS messages and services
add_message_files(FILES Num.msg)
add_service_files(FILES AddTwoInts.srv)
 
## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)
 
## Declare a catkin package
catkin_package()
 
## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})
 
add_executable(talker src/talker.cpp)
target_link_libraries(talker ${catkin_LIBRARIES})
add_dependencies(talker beginner_tutorials_generate_messages_cpp)

# 伪代码：为了说明生成自定义的命令
add_custom_command(TARGET ${CV_ADVANCE_NAME} 
      PRE_BUILD
      COMMAND "伪代码 find_package std_msgs"
      )
# 为了说明导入生成自定义构建的命令
add_custom_target(CV_ADVANCE) ALL
      DEPENDS ${CV_ADVANCE_NAME} # 依赖add_custom_command输出的package包
      COMMENT "ros package std_msgs"
    )

# 添加了一条自定义构建的规则
add_custom_target(CV_ADVANCE DEPENDS ${CV_ADVANCE_NAME})
# 为项目添加了一个可执行文件
add_executable(${PORJECT_NAME} ${SRC_LIST})
# 链接了一个标准的库文件
target_link_libraries(${PORJECT_NAME} ${std_lib_name_LIBRARIES})
# 为项目链接一个依赖文件，项目程序依赖CV_ADVANCE
add_dependencies(${PORJECT_NAME} CV_ADVANCE)



# 常规语法
cmake_minimum_required(VERSION 2.8.3)
project(HelloCV)
find_package(catkin REQUIRED COMPONENTS roscpp std_msgs genmsg)
# ros生成msg的语法
generate_messages(DEPENDENCIES std_msgs)
add_message_files(FILES HelloCvMsg.msg)
# 声明是catkin包
catkin_package()
# 创建工程实例
include_directories(include ${catkin_INCLUDE_DIRS})
add_executable(greet src/greet.cpp)
target_link_libraries(greet ${catkin_LIBRARIES})
# 添加greet依赖，依赖std_msgs 的变量
add_dependencies(greet HelloCV_generate_messages_cpp)

# HelloCvMsg.msg文件下的定义格式
std_msgs/String greeter


INSTALL(
       TARGETS myrun mylib mystaticlib
       RUNTIME DESTINATION bin
       LIBRARY DESTINATION lib
       ARCHIVE DESTINATION libstatic
       )



set_target_properties(exampleCv
PROPERTIES
ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
)

ADD_TEST(mytest ${PROJECT_BINARY_DIR}/bin/main)
ENABLE_TESTING()










