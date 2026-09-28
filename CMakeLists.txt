cmake_minimum_required(VERSION 3.10)
project(calculator_lab CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(calculator STATIC src/calculator.cpp)
target_include_directories(calculator PUBLIC include)

add_executable(calculator_app src/main.cpp)
target_link_libraries(calculator_app PRIVATE calculator)