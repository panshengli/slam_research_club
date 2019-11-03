cmake_minimum_required(VERSION 2.8.3)

project(hello_cv_2_add_static_lib)

add_compile_options(-std=c++11)

include_directories(include)

# add_executable(hello_cv_2 src/main.cpp src/hello_cv_1.cpp)

add_library(hello_cv_2_add_static_lib STATIC src/hello_cv_1.cpp)

# 设置install安装目录,类似于cmake -DCMAKE_INSTALL_PREFIX指令
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/install) 

# 外部链接时include的位置,如果不指明外部依赖无法找到对应的include库
target_include_directories(hello_cv_2_add_static_lib PUBLIC
                           $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include>    #源文件安装位置
                           $<INSTALL_INTERFACE:include>)                     #安装文件夹位置
# 设置目标include的头文件安装的属性                          
set_target_properties(hello_cv_2_add_static_lib 
                      PROPERTIES 
                      PUBLIC_HEADER "include/hello_cv_1.h")

message(${CMAKE_INSTALL_PREFIX},"=====================")
install(TARGETS hello_cv_2_add_static_lib
        EXPORT hello_cv_2_add_static_lib-targets    # 供外部库使用的声明
        PUBLIC_HEADER DESTINATION include
        # RUNTIME DESTINATION bin
        # LIBRARY DESTINATION lib         # 将动态库安装到${CMAKE_INSTALL_PREFIX}/lib目录下
        ARCHIVE DESTINATION libstatic   # 将静态库安装到${CMAKE_INSTALL_PREFIX}/libstatic目录下
        )
install(EXPORT hello_cv_2_add_static_lib-targets
        NAMESPACE hello_cv_2_add_static_lib::
        FILE hello_cv_2_add_static_lib-config.cmake          # 外部要使用find_package一定要使用,命名必须XX-congfig.cmake
        DESTINATION lib/cmake/hello_cv_2_add_static_lib)
