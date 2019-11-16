cmake_minimum_required(VERSION 2.8.3)
project(hello_cv_7_install_lib)
add_compile_options(-std=c++11)
include_directories(include)
add_library(hello_cv_7_install_lib STATIC src/hello_cv_1.cpp)

#方法三：利用find_package,自定义FindXXX.cmake生成库
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/install) 
message(${CMAKE_MODULE_PATH})
message(${CMAKE_INSTALL_PREFIX})
install(FILES cmake/Findhello_cv_7_install_lib.cmake DESTINATION cmake)
install(FILES include/hello_cv_1.h DESTINATION include)             
install(TARGETS hello_cv_7_install_lib
        # 将静态库安装到${CMAKE_INSTALL_PREFIX}/lib目录下
        ARCHIVE DESTINATION lib        
        )






# 方法二:将头文件和库文件安装到指定路径下
# 设置install安装目录,类似于cmake -DCMAKE_INSTALL_PREFIX指令

# set(CMAKE_INSTALL_PREFIX /usr) 
# message(${CMAKE_MODULE_PATH})
# message(${CMAKE_INSTALL_PREFIX})
# # INSTALL(FILES hello_cv_1.h DESTINATION include/hello_cv_1)             
# # install(TARGETS hello_cv_7_install_lib
# #         ARCHIVE DESTINATION lib         # 将静态库安装到${CMAKE_INSTALL_PREFIX}/lib目录下
# #         )


