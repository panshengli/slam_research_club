cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_7_add_static_lib)
add_compile_options(-std=c++11)
include_directories(include)
add_library(hello_cv_7_add_static_lib STATIC src/hello_cv_1.cpp)

# 设置install安装目录,类似于cmake -DCMAKE_INSTALL_PREFIX指令
set(CMAKE_INSTALL_PREFIX usr/lib) 
                      
install(TARGETS hello_cv_7_add_static_lib
        ARCHIVE DESTINATION lib         # 将静态库安装到${CMAKE_INSTALL_PREFIX}/lib目录下
        )
