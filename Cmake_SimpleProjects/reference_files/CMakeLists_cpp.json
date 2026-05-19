cmake_minimum_required(VERSION 3.23)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(test_Hfresh_Viewer
  VERSION 0.1
  DESCRIPTION "A test project for Hfresh Viewer"
  LANGUAGES CXX)

add_library(my_print_lib)

target_sources(my_print_lib
    PRIVATE
      src/my_print.cpp

    PUBLIC
      FILE_SET HEADERS
      BASE_DIRS include
      FILES
        include/my_print.h
)

add_executable(test_Hfresh_Viewer
    src/main.cpp
)

target_link_libraries(test_Hfresh_Viewer
    PRIVATE
        my_print_lib
)


