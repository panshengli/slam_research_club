cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_2_add_static_lib)

add_compile_options(-std=c++11)

include_directories(include)

# add_executable(hello_cv_2 src/main.cpp src/hello_cv_1.cpp)

add_library(hello_cv_2_add_static_lib STATIC src/hello_cv_1.cpp)


