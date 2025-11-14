cmake_minimum_required(VERSION 3.23)
project(misc-cxx-stuff)

execute_process(COMMAND curl "https://raw.githubusercontent.com/nekit508/misc-cxx-stuff/main/functions.cmake" -s -o "${PROJECT_SOURCE_DIR}/lib.cmake")
include("lib.cmake")

set(CMAKE_CXX_STANDARD 17)

add_executable(core)
serve_target(core "core/src" "core/include" CXX)
