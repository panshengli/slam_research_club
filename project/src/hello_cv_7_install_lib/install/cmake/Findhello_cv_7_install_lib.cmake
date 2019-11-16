find_path(hello_cv_7_install_lib_INCLUDE_DIR 
          NAMES hello_cv_1.h 
          # <必须绝对路径,推荐安装在"/usr/share/cmake/Modules/"目录下">
          PATHS "/media/henry_pan/Data/slam_research_club/project/src/hello_cv_7_install_lib/install/include/")
find_library(hello_cv_7_install_lib_LIBRARY 
             NAMES hello_cv_7_install_lib
             PATHS "/media/henry_pan/Data/slam_research_club/project/src/hello_cv_7_install_lib/install/lib/")

IF (hello_cv_7_install_lib_INCLUDE_DIR AND hello_cv_7_install_lib_LIBRARY)
    SET(hello_cv_7_install_lib_FOUND TRUE)
ENDIF (hello_cv_7_install_lib_INCLUDE_DIR AND hello_cv_7_install_lib_LIBRARY)

IF (hello_cv_7_install_lib_FOUND)
    # 指定了QUIET选项,如果没有找到包配置文件，CMake将会生成一个warnning
    IF (NOT hello_cv_7_install_lib_FIND_QUIETLY)
        MESSAGE(STATUS "Found hello_cv_7_install_lib: 
                ${hello_cv_7_install_lib_LIBRARY}")
    ENDIF (NOT hello_cv_7_install_lib_FIND_QUIETLY)
ELSE (hello_cv_7_install_lib_FOUND)
    # 指定了REQUIRED选项,如果没有找到包配置文件，CMake将会停止编译产生错误
    IF (hello_cv_7_install_lib_FIND_REQUIRED)
        MESSAGE(FATAL_ERROR "Could not find hello_cv_7_install_lib library")
    ENDIF (hello_cv_7_install_lib_FIND_REQUIRED)
ENDIF (hello_cv_7_install_lib_FOUND)
