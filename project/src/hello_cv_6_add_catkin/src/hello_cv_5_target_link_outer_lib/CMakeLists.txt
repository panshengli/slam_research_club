cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_5_target_link_outer_lib)
add_compile_options(-std=c++11)
find_package(catkin REQUIRED
             hello_cv_2_add_static_lib)
include_directories(include ${catkin_INCLUDE_DIRS} )
add_executable(${PROJECT_NAME} src/main.cpp)
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES} )


