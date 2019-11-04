cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_2_add_static_lib)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED)

catkin_package(
               INCLUDE_DIRS include
               LIBRARIES hello_cv_2_add_static_lib
#  CATKIN_DEPENDS other_catkin_pkg
#  DEPENDS system_lib       # 如果依赖其他库添加
              )

include_directories(
                    include
                    ${catkin_INCLUDE_DIRS}
                   )

add_library(${PROJECT_NAME}
            STATIC
            src/hello_cv_1.cpp
           )
