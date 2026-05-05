cmake_minimum_required(VERSION 3.23)
project(hello_world_project VERSION 1.0.0 LANGUAGES Fortran)

set(CMAKE_Fortran_MODULE_DIRECTORY "${CMAKE_BINARY_DIR}/mod")

# ここで、フォルダmodulesにあるCMakeLists.txtを呼び出す
add_subdirectory(modules)

add_executable(hello_world main.f90)

# PRIVATEは、hello_worldからmy_modulesの関数を呼び出すために必要です。
# PUBLICを利用するとき、hello_worldからmy_modulesの関数を呼び出すためのほか、
# hello_worldをリンクする他のターゲットからmy_modulesの関数を呼び出すこともできます。
target_link_libraries(hello_world PRIVATE my_modules)
