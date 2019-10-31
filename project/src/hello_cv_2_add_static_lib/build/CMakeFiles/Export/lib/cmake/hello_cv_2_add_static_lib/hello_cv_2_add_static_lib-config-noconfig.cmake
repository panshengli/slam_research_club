#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "hello_cv_2_add_static_lib::hello_cv_2_add_static_lib" for configuration ""
set_property(TARGET hello_cv_2_add_static_lib::hello_cv_2_add_static_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(hello_cv_2_add_static_lib::hello_cv_2_add_static_lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/libstatic/libhello_cv_2_add_static_lib.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS hello_cv_2_add_static_lib::hello_cv_2_add_static_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_hello_cv_2_add_static_lib::hello_cv_2_add_static_lib "${_IMPORT_PREFIX}/libstatic/libhello_cv_2_add_static_lib.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
