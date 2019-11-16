
cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_5_target_link_outer_lib)
add_compile_options(-std=c++11)
# 方法三:利用find_package查找(配置模式)
set(CMAKE_PREFIX_PATH ${PROJECT_SOURCE_DIR}/../hello_cv_2_add_static_lib/install)
find_package(hello_cv_2_add_static_lib REQUIRED)
if(hello_cv_2_add_static_lib_FOUND)
    add_executable(${PROJECT_NAME} src/main.cpp)
    target_link_libraries(${PROJECT_NAME} 
                          hello_cv_2_add_static_lib::hello_cv_2_add_static_lib)
else(hello_cv_2_add_static_lib_FOUND)
    message(FATAL_ERROR "hello_cv_2_add_static_lib library not found")
endif(hello_cv_2_add_static_lib_FOUND)

# # 方法一:直接导入库形式,对应project2的方法一,绝对路径,要不然安装到/usr中
# set(dpd_lib 
#     /home/henry_pan/ws_psl/slam_research_club/project/src/hello_cv_2_add_static_lib/install)
# include_directories(${dpd_lib}/include)
# add_executable(${PROJECT_NAME} src/main.cpp)
# target_link_libraries(${PROJECT_NAME} ${dpd_lib}/libstatic/libhello_cv_2_add_static_lib.a)


