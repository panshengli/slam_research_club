cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_5_target_link_outer_lib)
add_compile_options(-std=c++11)

set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} /home/henry_pan/ws_psl/slam_research_club/project/src/hello_cv_2_add_static_lib/install)
find_package(hello_cv_2_add_static_lib REQUIRED)

add_executable(${PROJECT_NAME} src/main.cpp)
target_link_libraries(${PROJECT_NAME} hello_cv_2_add_static_lib::hello_cv_2_add_static_lib)
