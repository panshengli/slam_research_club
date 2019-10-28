cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_1)

add_compile_options(-std=c++11)

include_directories(include)
add_executable(hello_cv_1 src/main.cpp src/hello_cv_1.cpp)
