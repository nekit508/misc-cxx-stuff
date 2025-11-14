cmake_minimum_required(VERSION 3.23)
project(misc-cxx-stuff)

set(CMAKE_CXX_STANDARD 17)

include(functions.cmake)

add_executable(core)
serve_target(core "core/src" "core/include" CXX)
