# set the minimum cmake version requirement
cmake_minimum_required(VERSION 4.1.2)

# set the project name
project(C C)

set(CMAKE_C_STANDARD 11)

# set the tracking files to compile
# set(SOURCE_FILES 
#         Tutorials/Day_1/main.c
#         Tutorials/Day_1/hello.h       
#         Tutorials/Day_1/hello.c)


file(GLOB_RECURSE SOURCES
        CONFIGURE_DEPENDS
        "Tutorials/Day_1/*.c"
        "Tutorials/Day_1/*.h")
 
add_executable(${PROJECT_NAME}
        ${SOURCES})
