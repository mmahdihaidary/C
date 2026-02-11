cmake_minimum_required(VERSION 4.1.2)
project(hello C)

set(CMAKE_C_STANDARD 11)

# add_subdirectory(lib)
add_library(myLib STATIC 
        lib/hello.c
        lib/math/math.c)

target_include_directories(myLib PUBLIC 
        ${CMAKE_SOURCE_DIR}/lib
)

add_executable(${PROJECT_NAME} main.c)

target_link_libraries(${PROJECT_NAME} PRIVATE myLib)  
