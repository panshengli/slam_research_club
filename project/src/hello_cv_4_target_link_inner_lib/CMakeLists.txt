# 内部引入动态库的形式
cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_4_target_link_inner_lib)

add_compile_options(-std=c++11)

# 设置库文件的输出目录,默认输出到执行目录空间下
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)   # 工程的根目录
set(LIBRARY_OUTPUT_NAME ${PROJECT_NAME})
include_directories(include)

# 静态库名为XXX.a 动态库名为XXX.so
add_library(hello_cv_4_lib SHARED src/hello_cv_1.cpp)    

add_executable(${PROJECT_NAME} src/main.cpp)

target_link_libraries(${PROJECT_NAME} hello_cv_4_lib)



