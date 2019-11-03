cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_3_add_shared_lib)

add_compile_options(-std=c++11)

# 设置库文件的输出目录,默认输出到执行目录空间下
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)   # 工程的根目录
include_directories(include)

# 静态库名为XXX.a 动态库名为XXX.so
add_library(hello_cv_3_lib SHARED src/hello_cv_1.cpp)

# 如果同时生成动静态库,可以再次使用add_library?
# add_library(hello_cv_3_lib STATIC src/hello_cv_1.cpp)

add_library(hello_cv_3_add_static_lib STATIC src/hello_cv_1.cpp)
# 设置文件名替换,注意和上一行的先后顺序
set_target_properties(hello_cv_3_add_static_lib PROPERTIES OUTPUT_NAME "hello_cv_3_lib")



