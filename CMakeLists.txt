# set the minimum cmake version requirement
cmake_minimum_required(VERSION 4.1.2)

# set the project name
project(Day_1)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)


file(GLOB_RECURSE SOURCES
        CONFIGURE_DEPENDS
        "*.c"
        "*.h")
 
add_executable(${PROJECT_NAME}
        ${SOURCES})
