cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_3_add_shared_lib)

add_compile_options(-std=c++11)

# 设置库文件的输出目录,默认输出到执行目录空间下,对于ros来说默认生成在devel/lib目录下
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)   # 工程的根目录
set(LIBRARY_OUTPUT_NAME ${PROJECT_NAME})
include_directories(include)

# add_executable(hello_cv_2 src/main.cpp src/hello_cv_1.cpp)

# 静态库名为XXX.a 动态库名为XXX.so
add_library(hello_cv_3_add_shared_lib SHARED src/hello_cv_1.cpp) 



