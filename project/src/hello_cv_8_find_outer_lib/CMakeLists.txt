cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_8_find_outer_lib)
add_compile_options(-std=c++11)
# 方法三:利用find_package查找
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/../hello_cv_7_install_lib/install/cmake/)
find_package(hello_cv_7_install_lib REQUIRED)
if(hello_cv_7_install_lib_FOUND)
    include_directories(${hello_cv_7_install_lib_INCLUDE_DIR})
    add_executable(${PROJECT_NAME} src/main.cpp)
    target_link_libraries(${PROJECT_NAME} 
                          ${hello_cv_7_install_lib_LIBRARY})
else(hello_cv_7_install_lib_FOUND)
    message(FATAL_ERROR "hello_cv_7_install_lib library not found")
endif(hello_cv_7_install_lib_FOUND)

# # 方法一:直接导入库形式,对应project2的方法一,绝对路径,要不然安装到/usr中
# set(dpd_lib 
#     /home/henry_pan/ws_psl/slam_research_club/project/src/hello_cv_2_add_static_lib/install)
# include_directories(${dpd_lib}/include)
# add_executable(${PROJECT_NAME} src/main.cpp)
# target_link_libraries(${PROJECT_NAME} ${dpd_lib}/libstatic/libhello_cv_2_add_static_lib.a)


